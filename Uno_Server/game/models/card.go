package models

type Card struct {
	Id       int
	Number   int
	Color    Color
	CardType CardType
}

type CardType string

const (
	NumberCard       string = "NUMBER_CARD"
	ReverseCard      string = "REVERSE_CARD"
	SkipCard         string = "SKIP_CARD"
	DrawTwoCard      string = "DRAW_TWO_CARD"
	WildCard         string = "WILD_CARD"
	WildDrawFourCard string = "WILD_DRAW_FOUR_CARD"
)

type Color string

const (
	Red    string = "RED"
	Blue   string = "BLUE"
	Yellow string = "YELLOW"
	Green  string = "GREEN"
	Black  string = "BLACK"
)
