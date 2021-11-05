/// @description Insert description here
// You can write your code in this editor

global.currentPlayer = -1;

//Initialise
randomize();
global.gamePaused = false;
global.countdownCreate = false;

global.iCamera = instance_create_layer(0,0, layer, oCamera);
global.iUi = instance_create_layer(0,0, layer, oUI);
global.iCD = instance_create_layer(0,0, layer, oCooldown);
global.lvl = instance_create_layer(0,0, layer, oLevelsInfo);

//Transitionstats 
global.targetX = -1;
global.targetY = -1;
global.targetState = -1;
global.checkpointX = -1;
global.checkpointY = -1;
global.prevPlayerChar = -1;

room_goto(rStartScreen);