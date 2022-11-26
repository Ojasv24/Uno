package graph

import (
	"context"
	"fmt"
	"net/http"

	"github.com/99designs/gqlgen/graphql/handler/transport"
	"github.com/golang-jwt/jwt"
)

// A private key for context that only this package can access. This is important
// to prevent collisions between different context uses
var userCtxKey = &contextKey{"userId"}

type contextKey struct {
	name string
}

type User struct {
	Valid  bool
	UserId string
	RoomId string
}

var jwtSecret = []byte("SecretYouShouldHide")

func CreateUserToken(roomId string, userId string) string {
	token := jwt.New(jwt.SigningMethodHS256)
	claims := token.Claims.(jwt.MapClaims)
	claims["roomId"] = roomId
	claims["userId"] = userId
	tokenString, err := token.SignedString(jwtSecret)
	if err != nil {
		return ""
	}
	return tokenString
}

func getUser(tokenString string) User {
	token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
			return nil, fmt.Errorf("there's an error with the signing method")
		}
		return jwtSecret, nil
	})
	if err != nil {
		return User{}
	}
	userId := token.Claims.(jwt.MapClaims)["userId"].(string)
	roomId := token.Claims.(jwt.MapClaims)["roomId"].(string)
	valid := userId != "" && roomId != ""
	return User{UserId: userId, RoomId: roomId, Valid: valid}
}

// Middleware decodes the share session cookie and packs the session into context
func AuthMiddleware() func(http.Handler) http.Handler {
	return func(next http.Handler) http.Handler {
		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			tokenString := r.Header.Get("Authorization")
			user := getUser(tokenString)
			// put it in context
			ctx := context.WithValue(r.Context(), userCtxKey, &user)
			// and call the next with our new context
			r = r.WithContext(ctx)
			next.ServeHTTP(w, r)
		})
	}
}

// Middleware decodes the share session cookie and packs the session into context
func AuthMiddlewareWebsocket(ctx context.Context, initPayload transport.InitPayload) (context.Context, error) {
	tokenString := initPayload["Authorization"].(string)
	user := getUser(tokenString)
	ctxNew := context.WithValue(ctx, userCtxKey, &user)
	return ctxNew, nil
}

// ForContext finds the user from the context. REQUIRES Middleware to have run.
func GetUser(ctx context.Context) *User {
	user, _ := ctx.Value(userCtxKey).(*User)
	return user
}
