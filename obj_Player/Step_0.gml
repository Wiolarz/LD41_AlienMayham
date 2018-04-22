/// @description Insert description here
// You can write your code in this editor

if(global.HAPE <= 0)
{
//room_goto(Defeat);	
}
	
	lvl = global.Armour;

switch(lvl)
{
case 1:

break;

case 2:
sprite_index = spr_Hero2;
break;
case 3:
sprite_index = spr_Hero3;
break;
case 4:
sprite_index = spr_Hero4;
break;
}

	
	// określenie Inputu od klawiatury
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_down = keyboard_check(ord("S"));
	key_up = keyboard_check(ord("W"));

	//if(sh > 0) && key_up 
	//{
	//	vsp = jump;
	//	sh -= 2;
	//}
	//if(place_meeting(x, y + 1, Collision))
	//{
	//	sh = 2;
	//}
	
	
		// ruch w lewo i prawo
	var move = key_right - key_left;
	hsp = move * walkspeed;
	
	if(place_meeting(x + hsp, y, Collision))
	{
		while(!place_meeting(x + sign(hsp), y, Collision))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	x = x + hsp;


	var move = key_down - key_up;
	vsp = move * walkspeed;
	
	if(place_meeting(x, y + vsp, Collision))
	{
		while(!place_meeting(x, y + sign(vsp), Collision))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;