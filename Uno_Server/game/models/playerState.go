package models

type PlayerInfo struct {
	Name      string
	CardCount int
}

type PlayerState struct {
	TopCard       Card
	LastNumber    int
	LastColor     Color
	Players       []PlayerInfo
	Cards         []Card
	CurrentPlayer int
	GameDirection int
	ValidMoves    []Card
	PickCount     int
	RequireChoose bool
}
