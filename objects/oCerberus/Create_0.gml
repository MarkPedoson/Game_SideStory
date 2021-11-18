/// @description Insert description here
// You can write your code in this editor
event_inherited();

charType = PLAYERCHAR.CERBERUS;

//Prop
runsp = 2.5; //How fast moving
//Char specific
dodgesp = 4;
dodgedist = 80;
dodgeHeight = -6;
//Cooldowns
canDodge = true;
dodgeCD = 3; 
dodgeAmmo = 3;
canSkill = true;
skillAmmo = -1;
skillCD = 2;

dodgeSkillIcon = sCerberusDodgeIcon;
basicSkillIcon = sCerberusSkillIcon;

//Let's setup the cooldown
var _c = global.iCD;

if (dodgeAmmo != -1) and (_c.dodgeAmmoCounter == -1) _c.dodgeAmmoCounter = dodgeAmmo;
if (skillAmmo != -1) and (_c.skillAmmoCounter == -1) _c.skillAmmoCounter = skillAmmo;

//Skins
spriteRun = sCerberusRun;
spriteIdle = sCerberusIdle;
spriteJump = sCerberusJump;
spriteDodge = sCerberusDodge;

playerCharScript[PLAYERSTATE.DODGE] = PlayerStateDodgeCerberus;
playerCharScript[PLAYERSTATE.SKILL] = PlayerStateSkillCerberus;