/// @description Insert description here
// You can write your code in this editor
//Initialise
randomize();
global.gamePaused = false;
global.countdownCreate = false;

global.iCamera = instance_create_layer(0,0, layer, oCamera);
global.iUi = instance_create_layer(0,0, layer, oUI);
global.iCD = instance_create_layer(0,0, layer, oCooldown);

room_goto(rStartScreen);