package game

import (
	m "uno_server/game/models"
)

func _modLikePython(d, m int) int {
	var res int = d % m
	if (res < 0 && m > 0) || (res > 0 && m < 0) {
		return res + m
	}
	return res
}

func nextPlayerMoveOrSkipCard(gameState *m.GameState, cardType m.CardType) {
	lenOfPlayers := len(gameState.Players)
	if cardType == m.CardType(m.SkipCard) && !gameState.RequirePick {
		gameState.CurrentPlayerIndex += 2 * gameState.MoveDirection
		gameState.CurrentPlayerIndex = _modLikePython(gameState.CurrentPlayerIndex, lenOfPlayers)
	} else {
		gameState.CurrentPlayerIndex += gameState.MoveDirection
		gameState.CurrentPlayerIndex = _modLikePython(gameState.CurrentPlayerIndex, lenOfPlayers)
	}
}

func givePlayerCards(gameState *m.GameState, numberOfCards int) {
	for i := 0; i < numberOfCards; i++ {
		gameState.Players[gameState.CurrentPlayerIndex].Cards =
			append(gameState.Players[gameState.CurrentPlayerIndex].Cards, popCard(gameState))
	}
}

func givePlayerCard(gameState *m.GameState, card m.Card) {
	gameState.Players[gameState.CurrentPlayerIndex].Cards =
		append(gameState.Players[gameState.CurrentPlayerIndex].Cards, card)
}

func removeCardFromPlayer(gameState *m.GameState, card m.Card) {

	playerCard := gameState.Players[gameState.CurrentPlayerIndex].Cards
	for i, p := range playerCard {
		if p == card {
			gameState.Players[gameState.CurrentPlayerIndex].Cards = append(playerCard[:i],
				playerCard[i+1:]...)
			return
		}
	}
}
func changeMoveDirection(gameState *m.GameState) {
	gameState.MoveDirection *= -1
}
