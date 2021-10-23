/// @description Insert description here
// You can write your code in this editor

if (room_get_name(room) == "rStartScreen") and (press){
	room_goto(Room1);
}

GamePause();
GamePausedScreen();