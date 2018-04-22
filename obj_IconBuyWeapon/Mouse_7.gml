/// @description Insert description here
// You can write your code in this editor


if(global.Iron >= 10) && (global.EqSize < 5) && (canbuy > 0)
{
	//canbuy = -2;
	global.Iron -= 10
	global.EqSize += 1;
	
	instance_destroy(self);
}