/// @description Insert description here
// You can write your code in this editor
event_inherited();
charType = PLAYERCHAR.FISHING;

//Prop
runsp = -2.5; //How fast moving
//Char specific
dodgesp = -6;
dodgedist = 80;
dodgeHeight = 1;
//Cooldowns
canDodge = true;
dodgeCD = 3; 
dodgeAmmo = 2;
canSkill = false;

dodgeSkillIcon = -1;
basicSkillIcon = -1;

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