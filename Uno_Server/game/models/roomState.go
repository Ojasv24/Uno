package models

type RoomState struct {
	Id        string
	Players   []Player
	Started   bool
	GameState GameState
}
