package game

import (
	m "uno_server/game/models"
)

func ValidMoves(topCard m.Card, lastNumber int,
	currentPlayerCards []m.Card, WildCardRequirePick bool) []m.Card {
	var validCards []m.Card
	for _, card := range currentPlayerCards {
		if ValidMove(topCard, lastNumber, card, WildCardRequirePick) {
			validCards = append(validCards, card)
		}
	}
	return validCards
}

func ValidMove(topCard m.Card, lastNumber int,
	card m.Card, WildCardRequirePick bool) bool {

	// Number Card
	if topCard.CardType == m.CardType(m.NumberCard) {
		if card.CardType == m.CardType(m.WildCard) || card.CardType == m.CardType(m.WildDrawFourCard) {
			return true
		} else if card.Color == topCard.Color || card.Number == topCard.Number {
			return true
		}
		if !WildCardRequirePick && card.Number == lastNumber {
			return true
		}
	}

	// Skip Card
	if topCard.CardType == m.CardType(m.SkipCard) {
		if card.CardType == m.CardType(m.WildCard) || card.CardType == m.CardType(m.WildDrawFourCard) {
			return true
		} else if card.Color == topCard.Color || card.Number == topCard.Number {
			return true
		} else if card.Number == lastNumber {
			return true
		}
	}

	// Reverse Card
	if topCard.CardType == m.CardType(m.ReverseCard) {
		if card.CardType == m.CardType(m.WildCard) || card.CardType == m.CardType(m.WildDrawFourCard) {
			return true
		} else if card.Color == topCard.Color || card.Number == topCard.Number {
			return true
		} else if card.Number == lastNumber {
			return true
		}
	}

	//  Draw Two Card
	if topCard.CardType == m.CardType(m.DrawTwoCard) {
		if card.CardType == m.CardType(m.WildDrawFourCard) {
			return true
		} else if card.CardType == m.CardType(m.DrawTwoCard) {
			return true
		} else if !WildCardRequirePick {
			if card.Color == topCard.Color || card.Number == topCard.Number {
				return true
			}
		}
	}

	// Wild Card
	if topCard.CardType == m.CardType(m.WildCard) {
		if card.CardType == m.CardType(m.WildDrawFourCard) {
			return true
		} else if card.Number == lastNumber {
			return true
		} else if card.Color == topCard.Color || card.Number == topCard.Number {
			return true
		}
	}

	// Wild Draw Four Card
	if topCard.CardType == m.CardType(m.WildDrawFourCard) {

		if card.CardType == m.CardType(m.WildDrawFourCard) {
			return true
		} else if card.CardType == m.CardType(m.DrawTwoCard) {
			return true
		} else if !WildCardRequirePick {
			if card.Color == topCard.Color || card.Number == topCard.Number {
				return true
			}
			if card.Number == lastNumber {
				return true
			}
		}
	}
	return false
}
