/// @description Insert description here
// You can write your code in this editor
up_instance = instance_place(x, y - 2, oDestructibleFloor);
down_instance = instance_place(x, y + 32, oDestructibleFloor);
if (up_instance != noone) up_instance.alarm[0] = destruction_time;
if (down_instance != noone) down_instance.alarm[0] = destruction_time;