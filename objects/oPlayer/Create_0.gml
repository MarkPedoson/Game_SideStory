/// @description Insert description here
// You can write your code in this editor
//Attr
state = PLAYERSTATE.STARTING;
lastState = state;
image_speed = 0;

//Movement speeds up and down
hsp = 0;
vsp = 0;
//Gravity both up and down
grav_down = 0.4;
grav_up = -0.4;
//Bunch of helpers and regulators
grav_prev = 1; //Positive value rather than value itself used as true or false
grav_current = grav_down; //Gravity value put here
grav_high = 5; //Gravity limit both up and down
grav_low = -5;
runsp = 0; //How fast moving, but in alarm[0] is changed to the actual one


//Scripts
playerCharScript[PLAYERSTATE.HUB] = -1;
playerCharScript[PLAYERSTATE.STARTING] = PlayerStateStarting;
playerCharScript[PLAYERSTATE.RUNNING] = PlayerStateRunning;
playerCharScript[PLAYERSTATE.JUMPING] = -1;
playerCharScript[PLAYERSTATE.LOCKED] = -1;
playerCharScript[PLAYERSTATE.SWITCHING] = -1;

//Skins
spriteRun = sCerberusRun;
spriteIdle = sCerberusIdle;
//spriteJump = sCerberusJump;