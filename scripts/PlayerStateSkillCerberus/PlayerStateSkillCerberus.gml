// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateSkillCerberus(){
	//Movement
	hsp = dodgesp;
	vsp = vsp + grav_current;
	
	var _canCast = CastablePlayer(oCerberusSkill, global.currentPlayer);
	if (_canCast){
		with (instance_create_layer(x, y - 18, "Skill", oCerberusSkill))
		{
			ownerChar = global.currentPlayer;
			speed = 8; //Magic number, sue me
			image_yscale = other.image_xscale;
		}
	}
	
	state = lastState;
	lastState = PLAYERSTATE.SKILL;
}