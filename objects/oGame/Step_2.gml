/// @description Insert description here
// You can write your code in this editor

if (room_get_name(room) == "rStartScreen") and (press){
	room_goto(rChooseCharacter);
}
else if (room_get_name(room) == "rChooseCharacter") and (press){
	ChooseCharacter();
}
else if (room_get_name(room) == "rChooseLevelDemo") and (press){
	ChooseLevel();	
}

GamePause();
GamePausedScreen();