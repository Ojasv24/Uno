package game

import (
	"uno_server/game/models"
	"math/rand"
	"time"
)

func popCard(gameState *models.GameState) models.Card {
	cards := gameState.Cards
	returnCard := cards[len(cards)-1]
	gameState.Cards = cards[:len(cards)-1]
	return returnCard
}

func refillTheCards(gameState *models.GameState) {
	topCard := gameState.CardStack[len(gameState.CardStack)-1]
	for i := 0; i < len(gameState.CardStack)-2; i++ {
		gameState.Cards = append(gameState.Cards, gameState.CardStack[i])
	}
	gameState.CardStack = nil
	gameState.CardStack = append(gameState.CardStack, topCard)
	rand.Seed(time.Now().UnixNano())
	rand.Shuffle(len(gameState.Cards), func(i, j int) { gameState.Cards[i], gameState.Cards[j] = gameState.Cards[j], gameState.Cards[i] })
}
