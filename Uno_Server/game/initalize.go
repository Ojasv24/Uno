package game

import (
	"math/rand"
	"time"
	m "uno_server/game/models"
)

func Initialize(players []m.Player, divideCardsBy int) m.GameState {
	var cardStack []m.Card

	cards := createCards()

	leftCards := int((len(cards) - divideCardsBy) / len(players))
	var newPlayers []m.Player
	for _, p := range players {
		var playerCard []m.Card
		for i := 0; i <= leftCards; i++ {
			lastCard := cards[len(cards)-1]
			cards = cards[:len(cards)-1]
			playerCard = append(playerCard, lastCard)
		}
		p.Cards = playerCard
		newPlayers = append(newPlayers, p)
	}
	firstNumberCardIndex := getFirstNumberCardIndex(cards)
	firstNumberCard := cards[firstNumberCardIndex]
	cards = append(cards[:firstNumberCardIndex], cards[firstNumberCardIndex+1:]...)
	cardStack = append(cardStack, firstNumberCard)

	return m.GameState{
		Players:            newPlayers,
		Cards:              cards,
		CardStack:          cardStack,
		CurrentPlayerIndex: 0,
		MoveDirection:      1,
		PickUpCount:        0,
		HasPickedCard:      false,
		RequirePick:        false,
		LastNumber:         firstNumberCard.Number,
		LastColor:          firstNumberCard.Color,
	}

}

func getFirstNumberCardIndex(cards []m.Card) int {
	for i, p := range cards {
		if p.CardType == m.CardType(m.NumberCard) {
			return i
		}
	}
	return -1
}

func createCards() []m.Card {
	var Cards []m.Card
	colors := [4]m.Color{m.Color(m.Red), m.Color(m.Yellow), m.Color(m.Green), m.Color(m.Blue)}
	Cards = createNumberCards(Cards, colors[:])
	Cards = createSkipReverseDrawTwoCards(Cards, colors[:])
	Cards = createWildCard(Cards)
	Cards = createWildDrawFourCard(Cards)
	rand.Seed(time.Now().UnixNano())
	rand.Shuffle(len(Cards), func(i, j int) { Cards[i], Cards[j] = Cards[j], Cards[i] })
	return Cards
}

var id int = 0

func getCardId() int {
	id += 1
	if id == 108 {
		id = 0
		return 108
	}
	return id
}

func createNumberCards(Cards []m.Card, colors []m.Color) []m.Card {
	for k := 0; k < 2; k++ {
		for j := 0; j < len(colors); j++ {
			for i := 1; i < 10; i++ {
				Cards = append(Cards, m.Card{CardType: m.CardType(m.NumberCard),
					Number: i, Color: colors[j], Id: getCardId()})

			}
		}
	}
	for j := 0; j < len(colors); j++ {
		Cards = append(Cards, m.Card{CardType: m.CardType(m.NumberCard),
			Number: 0, Color: colors[j], Id: getCardId()})

	}
	return Cards
}

func createSkipReverseDrawTwoCards(Cards []m.Card, colors []m.Color) []m.Card {
	for i := 0; i < 2; i++ {
		for j := 0; j < len(colors); j++ {
			Cards = append(Cards, m.Card{CardType: m.CardType(m.SkipCard),
				Number: 10, Color: colors[j], Id: getCardId()})
			Cards = append(Cards, m.Card{CardType: m.CardType(m.ReverseCard),
				Number: 11, Color: colors[j], Id: getCardId()})
			Cards = append(Cards, m.Card{CardType: m.CardType(m.DrawTwoCard),
				Number: 12, Color: colors[j], Id: getCardId()})
		}
	}
	return Cards
}

func createWildCard(Cards []m.Card) []m.Card {
	for j := 0; j < 4; j++ {
		Cards = append(Cards, m.Card{CardType: m.CardType(m.WildCard),
			Number: 13, Color: m.Color(m.Black), Id: getCardId()})
	}
	return Cards
}

func createWildDrawFourCard(Cards []m.Card) []m.Card {
	for j := 0; j < 4; j++ {
		Cards = append(Cards, m.Card{CardType: m.CardType(m.WildDrawFourCard),
			Number: 14, Color: m.Color(m.Black), Id: getCardId()})
	}
	return Cards
}
