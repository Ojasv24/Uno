package models

type Player struct {
	Id    string
	Name  string
	Cards []Card
}

type GameState struct {
	Players             []Player
	Cards               []Card
	CardStack           []Card
	LastNumber          int
	LastColor           Color
	PickedCard          Card
	HasPickedCard       bool
	RequirePick         bool
	WildCardRequirePick bool
	CurrentPlayerIndex  int
	MoveDirection       int
	PickUpCount         int
	GameCompelete       bool
	Winner              string
}
