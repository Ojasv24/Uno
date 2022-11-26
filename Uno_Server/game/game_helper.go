package game

import (
	"fmt"
	m "uno_server/game/models"
	// "fmt"
)

func GetPlayerState(gameState *m.GameState, playerName string, started bool) m.PlayerState {

	var playersInfo []m.PlayerInfo
	var card []m.Card
	var validCard []m.Card
	var topCard m.Card
	requireChoose := false
	for _, p := range gameState.Players {
		playersInfo = append(playersInfo, m.PlayerInfo{Name: p.Name, CardCount: len(p.Cards)})

		if playerName == p.Name {
			card = p.Cards
		}

		if started && gameState.Players[gameState.CurrentPlayerIndex].Name == playerName {
			validCard = GetValidMoves(playerName, gameState)
		}

	}
	if started {
		topCard = gameState.CardStack[len(gameState.CardStack)-1]
	}

	if gameState.Players[gameState.CurrentPlayerIndex].Name == playerName {
		requireChoose = gameState.RequirePick
	}

	return m.PlayerState{
		TopCard:       topCard,
		LastNumber:    gameState.LastNumber,
		LastColor:     gameState.LastColor,
		Players:       playersInfo,
		CurrentPlayer: gameState.CurrentPlayerIndex,
		ValidMoves:    validCard,
		PickCount:     gameState.PickUpCount,
		Cards:         card,
		RequireChoose: requireChoose,
		GameDirection: gameState.MoveDirection,
	}
}

func IsGameOver(gameState *m.GameState) bool {
	players := gameState.Players
	for _, player := range players {
		if len(player.Cards) == 0 {
			gameState.GameCompelete = true
			gameState.Winner = player.Name
			return true
		}
	}
	return false
}

func GetTopCard(gameState *m.GameState) m.Card {
	return gameState.CardStack[len(gameState.CardStack)-1]
}

func GetValidMoves(player string, gameState *m.GameState) []m.Card {
	if player != gameState.Players[gameState.CurrentPlayerIndex].Name || gameState.HasPickedCard {
		var noCards []m.Card
		return noCards
	}
	currentPlayerCards := gameState.Players[gameState.CurrentPlayerIndex].Cards
	topCard := GetTopCard(gameState)
	return ValidMoves(topCard, gameState.LastNumber, currentPlayerCards, gameState.WildCardRequirePick)
}

func MakeMove(player string, gameState *m.GameState, cardId int, color m.Color) bool {
	if player != gameState.Players[gameState.CurrentPlayerIndex].Name {
		return false
	}
	if gameState.HasPickedCard && cardId != gameState.PickedCard.Id {
		return false
	}
	for _, card := range gameState.Players[gameState.CurrentPlayerIndex].Cards {
		if card.Id == cardId && ValidMove(GetTopCard(gameState), gameState.LastNumber, card, gameState.WildCardRequirePick) {
			removeCardFromPlayer(gameState, card)
			reverseCard(gameState, card)
			drawTwoCardPlay(gameState, card)
			card = wildDrawFourCardPlay(gameState, card, color)
			card = wildCard(gameState, card, color)
			numberCard(gameState, card)
			nextPlayerMoveOrSkipCard(gameState, card.CardType)
			gameState.CardStack = append(gameState.CardStack, card)
			gameState.RequirePick = false
			gameState.HasPickedCard = false
			IsGameOver(gameState)
			return true
		}
	}
	return false
}

func PickUpCard(playerId string, gameState *m.GameState) bool {
	if playerId != gameState.Players[gameState.CurrentPlayerIndex].Name || gameState.HasPickedCard {
		return false
	}

	if len(gameState.CardStack) <= gameState.PickUpCount || len(gameState.CardStack) <= 5 {
		refillTheCards(gameState)
	}

	if wildCardOrWildDrawFourCardPickup(gameState, GetTopCard(gameState), gameState.PickUpCount) {
		return true
	}

	gameState.PickedCard = popCard(gameState)
	gameState.HasPickedCard = true
	gameState.RequirePick = true
	givePlayerCard(gameState, gameState.PickedCard)
	if !ValidMove(GetTopCard(gameState), gameState.LastNumber, gameState.PickedCard, gameState.RequirePick) {
		Keep(playerId, gameState)
		return true
	}
	return true
}

func Keep(playerId string, gameState *m.GameState) bool {
	if playerId != gameState.Players[gameState.CurrentPlayerIndex].Name {
		return false
	}
	if gameState.HasPickedCard {
		gameState.HasPickedCard = false
		gameState.PickUpCount = 0
		nextPlayerMoveOrSkipCard(gameState, gameState.PickedCard.CardType)
		gameState.RequirePick = false
		fmt.Println("Pickup")
		return true
	}
	return false
}
