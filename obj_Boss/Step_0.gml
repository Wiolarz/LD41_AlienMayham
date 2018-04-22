/// @description Insert description here
// You can write your code in this editor
if(HP <= 0)
{
global.LvPC += 1;

instance_destroy(self);
}




time -=1;


if(global.LvPC == 3) || (HP < 45)
{
move_towards_point(obj_Player.x,obj_Player.y,4);
}


//eyes
if(global.LvPC == 3) || (HP < 40)
{
image_index = 1;
}
else
{
image_index = 0;	
}



if!(global.LvPC == 3) && (HP < 50)
{
idlechance = choose(true, false, false, false, false, false, false, false, false, false);

if(idlechance == true)
{
	
	
	do
	{
			randmove = choose(1, 2, 3, 4);
			switch(randmove) //random direction
			{
			case 1: //up
			vsp += 0.1;
			break;
	
			case 2: //down
			vsp -= 0.1;
			break;
	
			case 3: //left
			hsp -= 0.1;
			break;
		
			case 4: //right
			hsp += 0.1;
			break;
			}
						// checking walls
		
		if(place_meeting(x + hsp, y, Collision))
		{
			while(!place_meeting(x + sign(hsp), y, Collision))
			{
				x = x + sign(hsp);
			}
			hsp = 0;
		}
	
	
		if(place_meeting(x, y + vsp, Collision))
		{
			while(!place_meeting(x, y + sign(vsp), Collision))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
		}
		
		if(hsp > 0) || (vsp > 0)
		{
			idlemovereal = true;
		}
		
		x = x + hsp;
		y = y + vsp;
	
		}
	until(idlemovereal == true);

	idlechance = false;
	}
}