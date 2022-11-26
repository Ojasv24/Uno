package main

import (
	"log"
	"net/http"
	"os"
	"uno_server/graph"
	"uno_server/graph/generated"

	// "uno_server/graph/model"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/handler/extension"
	"github.com/99designs/gqlgen/graphql/handler/transport"
	"github.com/99designs/gqlgen/graphql/playground"
	"github.com/go-chi/chi"
	"github.com/gorilla/websocket"
	"github.com/rs/cors"
)

const defaultPort = "8000"

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = defaultPort
	}

	router := chi.NewRouter()

	c := cors.New(cors.Options{
		AllowedOrigins:   []string{"*"},
		AllowCredentials: true,
		Debug:            false,

		AllowedHeaders: []string{"*"},
	})

	// router.Use(cors.New(cors.Options{
	// 	AllowedOrigins:   []string{"*"},
	// 	AllowCredentials: true,
	// 	Debug:            true,
	// 	// AllowedMethods: []string{},
	// 	AllowedHeaders: ["",]string{},
	// }).Handler)

	router.Use(graph.AuthMiddleware())

	var rooms = make(map[string]*graph.RoomState)
	srv := handler.New(generated.NewExecutableSchema(generated.Config{Resolvers: &graph.Resolver{
		Rooms: rooms,
	}}))

	srv.AddTransport(transport.POST{})
	srv.AddTransport(transport.Websocket{
		InitFunc: graph.AuthMiddlewareWebsocket,

		Upgrader: websocket.Upgrader{

			CheckOrigin: func(r *http.Request) bool {
				return true
			},
		},
	})
	srv.Use(extension.Introspection{})

	router.Handle("/", playground.Handler("GraphQL playground", "/graphql"))
	router.Handle("/graphql", c.Handler(srv))

	log.Printf("connect to http://localhost:%s/ for GraphQL playground", port)
	log.Fatal(http.ListenAndServe(":"+port, router))
}
