package graph

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.

import (
	"context"
	"fmt"
	"strconv"
	"strings"
	"time"
	"uno_server/game"
	"uno_server/game/models"
	"uno_server/graph/generated"
	"uno_server/graph/model"

	"github.com/google/uuid"
	// gameModel "uno_server/game/models"
)

// Join is the resolver for the join field.
func (r *mutationResolver) Join(ctx context.Context, roomID string, name string) (string, error) {
	room, ok := r.Rooms[roomID]
	if !ok {
		return "", fmt.Errorf("INVALID ROOM")
	}
	
	if room.GameState != nil {
		return "", fmt.Errorf("CANT JOIN! GAME IS ON")
	}

	for _, p := range room.Players {
		if p.Name == name {
			return "", fmt.Errorf("PLAYER EXIST")
		}
	}

	room.Players = append(room.Players, &Player{Name: name, Ch: nil})
	send(room)
	return CreateUserToken(roomID, name), nil
}

// StartGame is the resolver for the startGame field.
func (r *mutationResolver) StartGame(ctx context.Context) (bool, error) {
	room, _, err := r.getRoomPlayer(ctx)
	if err != nil {
		return false, err
	}

	if room.GameState != nil {
		return false, fmt.Errorf("GAME IS ON")
	}

	if len(room.Players) < 2 {
		return false, fmt.Errorf("MINIMUM NUMBER OF PLAYERS IS 2")
	}

	var gamePlayer []models.Player
	for _, p := range room.Players {
		gamePlayer = append(gamePlayer, models.Player{Id: p.Name, Name: p.Name})
	}

	state := game.Initialize(gamePlayer, 82)
	room.GameState = &state
	send(room)
	return true, nil
}

// KeepCard is the resolver for the keepCard field.
func (r *mutationResolver) KeepCard(ctx context.Context) (bool, error) {
	room, player, err := r.getRoomStartedPlayer(ctx)
	if err != nil {
		return false, err
	}
	moved := game.Keep(player.Name, room.GameState)
	if moved {
		send(room)
		return true, nil
	}
	return false, fmt.Errorf("INVALID MOVE")
}

// PickCard is the resolver for the pickCard field.
func (r *mutationResolver) PickCard(ctx context.Context) (bool, error) {
	room, player, err := r.getRoomStartedPlayer(ctx)
	if err != nil {
		return false, err
	}
	moved := game.PickUpCard(player.Name, room.GameState)
	if moved {
		send(room)
		return true, nil
	}
	return false, fmt.Errorf("INVALID MOVE")
}

// Restart is the resolver for the restart field.
func (r *mutationResolver) Restart(ctx context.Context) (bool, error) {
	room, _, err := r.getRoomStartedPlayer(ctx)
	if err != nil {
		return false, err
	}

	if game.IsGameOver(room.GameState) {
		room.GameState = nil
		r.StartGame(ctx)
		return true, err
	}
	return false, fmt.Errorf("CAN'T RESET, GAME NOT OVER")
}

// Move is the resolver for the move field.
func (r *mutationResolver) Move(ctx context.Context, cardID string, cardColor *model.Color) (bool, error) {
	room, player, err := r.getRoomStartedPlayer(ctx)
	if err != nil {
		return false, err
	}

	cardIDint, err := strconv.Atoi(cardID)
	if err != nil {
		return false, fmt.Errorf("INVALID CARDID")
	}

	if cardColor == nil {
		cardColor = &model.AllColor[2]
	}
	moved := game.MakeMove(player.Name, room.GameState, cardIDint, models.Color(*cardColor))
	if moved {

		send(room)
		return true, nil
	}
	return false, fmt.Errorf("INVALID MOVE")
}

// ResetGame is the resolver for the resetGame field.
func (r *mutationResolver) ResetGame(ctx context.Context) (bool, error) {
	panic(fmt.Errorf("not implemented: ResetGame - resetGame"))
}

// CreateRoom is the resolver for the createRoom field.
func (r *mutationResolver) CreateRoom(ctx context.Context) (*model.Room, error) {
	roomId := strings.Split(uuid.NewString(), "-")[1]
	room := &RoomState{
		Id: roomId,
		// Players:   make([]*gameModel.Player, 0),
		Done:      false,
		GameState: nil,
	}

	r.Rooms[roomId] = room

	return room.toRoom(""), nil
}

// Test is the resolver for the test field.
func (r *queryResolver) Test(ctx context.Context) (string, error) {
	panic(fmt.Errorf("not implemented: Test - test"))
}

// RoomState is the resolver for the roomState field.
func (r *subscriptionResolver) RoomState(ctx context.Context) (<-chan *model.Room, error) {
	ch := make(chan *model.Room)

	room, player, err := r.getRoomPlayer(ctx)

	if err != nil {
		return nil, err
	}

	go func() {
		time.Sleep(time.Millisecond)
		ch <- room.toRoom(player.Name)
	}()
	player.Ch = ch
	return ch, nil

}

// Mutation returns generated.MutationResolver implementation.
func (r *Resolver) Mutation() generated.MutationResolver { return &mutationResolver{r} }

// Query returns generated.QueryResolver implementation.
func (r *Resolver) Query() generated.QueryResolver { return &queryResolver{r} }

// Subscription returns generated.SubscriptionResolver implementation.
func (r *Resolver) Subscription() generated.SubscriptionResolver { return &subscriptionResolver{r} }

type mutationResolver struct{ *Resolver }
type queryResolver struct{ *Resolver }
type subscriptionResolver struct{ *Resolver }

// send

func send(room *RoomState) {
	for _, p := range room.Players {
		if p.Ch == nil {
			fmt.Println("NIL")
			continue
		}
		select {
		case p.Ch <- room.toRoom(p.Name):
		default:
			fmt.Println("Defult")
			continue
		}

	}
}

func (r *Resolver) getRoomStartedPlayer(ctx context.Context) (*RoomState, *Player, error) {
	room, player, err := r.getRoomPlayer(ctx)
	if err != nil {
		return room, player, err
	}
	if room.GameState == nil {
		return room, player, fmt.Errorf("GAME NOT STARTED")
	}
	return room, player, err
}

func (r *Resolver) getRoomPlayer(ctx context.Context) (*RoomState, *Player, error) {
	user := GetUser(ctx)

	room, ok := r.Rooms[user.RoomId]

	if !ok {
		return nil, nil, fmt.Errorf("INVALID ROOM")
	}
	for _, p := range room.Players {
		if p.Name == user.UserId {
			return room, p, nil
		}
	}
	return room, nil, fmt.Errorf("PLAYER NOT EXISIT")
	// return room, p, nil
}
