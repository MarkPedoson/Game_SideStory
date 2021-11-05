/// @description Insert description here
// You can write your code in this editor
with (instance_create_layer(x, y, "Skill", oCerberusSkillColl)){
		ownerChar = other.ownerChar;
		speed = 2;
		image_yscale = other.image_yscale;
}
instance_destroy();