/// @description Insert description here
// You can write your code in this editor


	//position
	x = obj_Player.x;
	y = obj_Player.y;
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	
	
	firedelay = firedelay - 1;
	recoil = max(0, recoil - 1);
	
	
	//if(firedelay < 0)
	//{
	//	image_index = 0;
	//}
	
	
	
	if(mouse_check_button(mb_left)) && (global.Ammo <= 0) && (global.InShop < 1)
	{
		instance_create_layer(x,y,"Bullets",obj_NoAmmo);
	}

		
		if(mouse_check_button(mb_left)) && (firedelay < 0) && (global.Ammo >= 1)
		{
			global.Ammo -= 0.5;
			image_index = 1;
			recoil = 1;
			firedelay = 0.1;
			with(instance_create_layer(x, y, "Bullets", obj_Flame))
			{
				speed = 10;
				direction = other.image_angle + irandom_range(-1, 1);
				image_angle = direction;
			}
		}	
		x = x - lengthdir_x(recoil, image_angle);
		y = y - lengthdir_y(recoil, image_angle);
		if (image_angle > 90) && (image_angle < 270)
		{
			image_yscale = -1;
			x = x -10;
		}
		else
		{
			image_yscale = 1;
		}
