/// @description Insert description here
// You can write your code in this editor





switch(currentslot)
	{
	case 0: //free hand
	instance_deactivate_object(obj_Revolver);
	instance_deactivate_object(obj_LaserGun);
	instance_deactivate_object(obj_FlameThrower);
	instance_deactivate_object(obj_RocketLauncher);
	currentslot += 1;
	break;
	case 1:	//revolver
	instance_activate_object(obj_Revolver);
	//deactive other weapons
	instance_deactivate_object(obj_LaserGun);
	instance_deactivate_object(obj_FlameThrower);
	instance_deactivate_object(obj_RocketLauncher);
	
	//logic of eq
	if(currentslot <= global.EqSize)
		{
		currentslot += 1;	
		}
		else
		{
		currentslot = 0;	
		}
	break;
	
	
	case 2: //laser gun
	instance_activate_object(obj_LaserGun);
	//deactive other weapons
	instance_deactivate_object(obj_Revolver);
	instance_deactivate_object(obj_FlameThrower);
	instance_deactivate_object(obj_RocketLauncher);
	//logic of eq
	if(currentslot <= global.EqSize)
		{
		currentslot += 1;	
		}
		else
		{
		currentslot = 0;	
		}
	break;
	case 3: //Rocket
	instance_activate_object(obj_RocketLauncher);
	
	instance_deactivate_object(obj_LaserGun);
	instance_deactivate_object(obj_Revolver);
	instance_deactivate_object(obj_FlameThrower);
		if(currentslot <= global.EqSize)
		{
		currentslot += 1;	
		}
		else
		{
		currentslot = 0;	
		}
	break;
	
	case 4: //Flame
	instance_activate_object(obj_FlameThrower);
	
	instance_deactivate_object(obj_LaserGun);
	instance_deactivate_object(obj_Revolver);
	instance_deactivate_object(obj_RocketLauncher);
	
	currentslot = 0;	
	break;
	}