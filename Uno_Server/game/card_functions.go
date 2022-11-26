package game

import (
	m "uno_server/game/models"
	"fmt"
	"log"
)

func numberCard(gameState *m.GameState, currentCard m.Card) {
	if currentCard.CardType == m.CardType(m.NumberCard) {
		gameState.LastNumber = currentCard.Number
		gameState.LastColor = currentCard.Color
	}
}

func reverseCard(gameState *m.GameState, currentCard m.Card) {
	if currentCard.CardType == m.CardType(m.ReverseCard) {
		changeMoveDirection(gameState)
	}
}

func wildDrawFourCardPlay(gameState *m.GameState, currentCard m.Card, color m.Color) m.Card {
	if color == m.Color(m.Black) {
		color = m.Color(m.Yellow)
	}
	if currentCard.CardType == m.CardType(m.WildDrawFourCard) {
		gameState.PickUpCount += 4
		currentCard.Color = color
		gameState.WildCardRequirePick = true
		return currentCard
	}
	return currentCard
}

func drawTwoCardPlay(gameState *m.GameState, currentCard m.Card) {
	if currentCard.CardType == m.CardType(m.DrawTwoCard) {
		gameState.PickUpCount += 2
		gameState.WildCardRequirePick = true
	}
}

func wildCard(gameState *m.GameState, currentCard m.Card, color m.Color) m.Card {
	if color == m.Color(m.Black) {
		color = m.Color(m.Yellow)
	}
	if currentCard.CardType == m.CardType(m.WildCard) {
		fmt.Println("Color: ", color)
		currentCard.Color = color
		return currentCard
	}
	return currentCard
}

func wildCardOrWildDrawFourCardPickup(gameState *m.GameState, topCard m.Card, drawCardCount int) bool {
	log.Print("PickupCall: ", drawCardCount)
	if (topCard.CardType == m.CardType(m.DrawTwoCard) || topCard.CardType == m.CardType(m.WildDrawFourCard)) && gameState.WildCardRequirePick {
		log.Print("Picked: ", drawCardCount)
		givePlayerCards(gameState, drawCardCount)
		gameState.PickUpCount = 0
		gameState.WildCardRequirePick = false
		nextPlayerMoveOrSkipCard(gameState, topCard.CardType)
		return true
	}
	return false
}
