// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkillIconCDDraw(_x, _y, _CDTimer, _CD, _isAmmo){
	var v;
	v = ((_CDTimer / (_CD * room_speed)) * 100) / 100;
	if (v < 0) v += 1;
	draw_set_alpha(0.5);
	draw_set_colour(c_black);
	DrawRectangleCd(_x + 78, _y + 4, _x + 8, _y + 74, v, _isAmmo);
	draw_set_alpha(1);
	/*
	//Font
	draw_set_font(fFont);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_text_transformed(_x + 15, _y + 13, CdToSeconds(_CDTimer), 1, 1, 0);
	*/
}