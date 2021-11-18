/// @description Insert description here
// You can write your code in this editor
draw_self();

if (instance_exists(oEndpoint)){
	draw_set_color(c_black);
	draw_line(oEndpoint.x+16, oEndpoint.y+32, x-24, y);
}