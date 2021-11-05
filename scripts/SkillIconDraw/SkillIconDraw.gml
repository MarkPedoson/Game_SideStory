// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkillIconDraw(_icon, _CDTimer, _CD, _x, _y, _ammo){
	var _tf;
	if (_ammo != -1){
		draw_sprite(sDodgeIconEdge, 0, _x, _y);
		_tf = true;
	}
	else{
		draw_sprite(sSkillIconEdge, 0, _x, _y);
		_tf = false;
	}
	
	if (_icon != -1){
		if (_tf = true)draw_sprite(_icon, 0, _x + 7, _y + 15);
		else draw_sprite(_icon, 0, _x + 9, _y + 12);
	}
	
	if (_CDTimer != 0) SkillIconCDDraw(_x, _y, _CDTimer, _CD, _tf);

	if (_tf){ //Ammo text
		//Font
		draw_set_font(fFont);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_colour(c_white);
		draw_text_transformed(_x + 65, _y + 16, _ammo, 3, 3, 0);
	}

}