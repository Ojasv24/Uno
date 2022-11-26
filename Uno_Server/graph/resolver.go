package graph

import (
	"strconv"
	"uno_server/game"
	gameModel "uno_server/game/models"
	"uno_server/graph/model"
)

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require here.

type Player struct {
	Name string
	Ch   chan *model.Room
}

type RoomState struct {
	Id        string
	Players   []*Player
	Done      bool
	GameState *gameModel.GameState
}

type Resolver struct {
	Rooms map[string]*RoomState
}

func (roomState *RoomState) toRoom(playerId string) *model.Room {

	var winner *model.Player = nil
	if roomState.GameState != nil && roomState.GameState.GameCompelete {
		winner = &model.Player{
			Name: roomState.GameState.Winner,
		}
	}
	return &model.Room{
		ID:      roomState.Id,
		Players: toModelPlayer(roomState),
		State:   toState(roomState.GameState, playerId),
		Winner:  winner,
	}
}

func toModelPlayer(roomState *RoomState) []*model.Player {
	var players []*model.Player
	for _, p := range roomState.Players {
		players = append(players, &model.Player{
			Name: p.Name,
		})
	}
	return players
}

func toState(gameState *gameModel.GameState, playerID string) *model.PlayerState {
	if gameState == nil {
		return nil
	}
	playerState := game.GetPlayerState(gameState, playerID, true)
	return &model.PlayerState{
		Topcard:       toCard(playerState.TopCard),
		LastNumber:    playerState.LastNumber,
		LastColor:     model.Color(playerState.LastColor),
		Players:       toPlayers(playerState.Players),
		Cards:         toCards(playerState.Cards),
		CurrentPlayer: strconv.Itoa(playerState.CurrentPlayer),
		GameDirection: gameDirection(playerState.GameDirection),
		Validmoves:    toCards(playerState.ValidMoves),
		PickCount:     playerState.PickCount,
		RequireChoose: playerState.RequireChoose,
	}
}

func gameDirection(gameDirection int) model.Direction {
	if gameDirection > 0 {
		return model.DirectionForward
	}
	return model.DirectionBackward
}

func toCard(card gameModel.Card) *model.Card {
	return &model.Card{
		ID:       strconv.Itoa(card.Id),
		Number:   strconv.Itoa(card.Number),
		Color:    model.Color(card.Color),
		CardType: model.CardType(card.CardType),
	}
}

func toCards(cards []gameModel.Card) []*model.Card {
	var cardsModel []*model.Card

	for _, card := range cards {
		cardsModel = append(cardsModel, toCard(card))
	}
	return cardsModel
}

func toPlayer(player gameModel.PlayerInfo) *model.Player {
	return &model.Player{
		Name:      player.Name,
		CardCount: player.CardCount,
	}
}

func toPlayers(players []gameModel.PlayerInfo) []*model.Player {
	var playersModel []*model.Player

	for _, player := range players {
		playersModel = append(playersModel, toPlayer(player))
	}
	return playersModel
}
