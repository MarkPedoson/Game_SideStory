/// @description Insert description here
// You can write your code in this editor
//Create camera chasee object
if (instance_exists(oRoomIsMainRun)){
	instance_create_layer(global.checkpointX-218, 0, "Tools", oChasee);
}
else if (instance_exists(oRoomIsFishing)){
	instance_create_layer(global.checkpointX-522, 0, "Tools", oChasee);
}

//Transition character into next room
if (instance_exists(oRoomIsHub) or 
	instance_exists(oRoomIsMainRun) or
	instance_exists(oRoomIsFishing)){
		TransitionScript();
	}