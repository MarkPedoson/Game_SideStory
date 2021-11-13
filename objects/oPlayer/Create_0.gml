/// @description Insert description here
// You can write your code in this editor
//Attr
state = PLAYERSTATE.STARTING;
lastState = state;
canRun = false;
image_speed = 0;
charType = -1;

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

canDodge = false;
dodgeCD = 0; 
dodgeAmmo = -1;
canSkill = false;
skillCD = 0;
skillAmmo = -1;


//Scripts
playerCharScript[PLAYERSTATE.HUB] = PlayerStateHub;
playerCharScript[PLAYERSTATE.STARTING] = PlayerStateStarting;
playerCharScript[PLAYERSTATE.RUNNING] = PlayerStateRunning;
playerCharScript[PLAYERSTATE.JUMPING] = PlayerStateJumping;
playerCharScript[PLAYERSTATE.LOCKED] = PlayerStateLocked;
playerCharScript[PLAYERSTATE.DODGE] = -1;
playerCharScript[PLAYERSTATE.SKILL] = -1;

