/// @description Insert description here
// You can write your code in this editor
key_grav = mouse_check_button_pressed(mb_left);
//key_test = keyboard_check(ord("q"));




//if (!global.gamePaused) 

if (playerCharScript[state] != -1) script_execute(playerCharScript[state]);
show_debug_message(string(state));
show_debug_message(string(alarm[0]));