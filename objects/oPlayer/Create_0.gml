/// @description Insert description here
// You can write your code in this editor
//Attr
state = PLAYERSTATE.STARTING;
lastState = state;
canRun = false;
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

//Prop
runsp = 2.5; //How fast moving
dodgesp = 4;
dodgedist = 100;

//Cooldowns
startingTime = 3; //3s
dodgeCD = 3; 
if(oCooldown.startingTimer == -1){
	oCooldown.startingTimer = startingTime * room_speed;
}

//Scripts
playerCharScript[PLAYERSTATE.HUB] = -1;
playerCharScript[PLAYERSTATE.STARTING] = PlayerStateStarting;
playerCharScript[PLAYERSTATE.RUNNING] = PlayerStateRunning;
playerCharScript[PLAYERSTATE.JUMPING] = PlayerStateJumping;
playerCharScript[PLAYERSTATE.LOCKED] = -1;
playerCharScript[PLAYERSTATE.DODGE] = PlayerStateDodge;

//Skins
spriteRun = sCerberusRun;
spriteIdle = sCerberusIdle;
spriteJump = sCerberusJump;
spriteDodge = sCerberusDodge;