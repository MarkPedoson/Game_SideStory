/// @description Insert description here
// You can write your code in this editor
event_inherited();
charType = PLAYERCHAR.FISHING;

//Prop
runsp = -2.5; //How fast moving
//Char specific
dodgesp = 4;
dodgedist = 80;
//Cooldowns
canDodge = true;
dodgeCD = 3; 
dodgeAmmo = 3;
canSkill = false;


//Let's setup the cooldown
var _c = global.iCD;

if (dodgeAmmo != -1) and (_c.dodgeAmmoCounter == -1) _c.dodgeAmmoCounter = dodgeAmmo;
if (skillAmmo != -1) and (_c.skillAmmoCounter == -1) _c.skillAmmoCounter = skillAmmo;

//Skins
spriteRun = sFishHook;
spriteIdle = sFishHook;
spriteJump = sFishHook;
spriteDodge = sFishHook;

playerCharScript[PLAYERSTATE.DODGE] = PlayerStateDodgeFishHook;