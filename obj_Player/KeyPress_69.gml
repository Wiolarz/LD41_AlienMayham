/// @description Insert description here
// You can write your code in this editor
	global.Ammo += 3;
if distance_to_object(obj_Building) > 150
{
	global.Ammo += 10;
	
	if(global.FILLED == true)
	{
		global.Energy += 100;
		
		switch(global.PC)
		{
		case 0:
		break;
		case 1:
		
		instance_create_layer(x,y,"Buildings", obj_Arsenal)
		global.FILLED = false;
		break;
		
		case 2:
		instance_create_layer(x,y,"Buildings", obj_Armory)
		global.FILLED = false;
		break;
		
		case 3:
		instance_create_layer(x,y,"Buildings", obj_TowerAsembler)
		global.FILLED = false;
		break;
		}
		
	}
	
}
else
{
instance_create_layer(x,y,"Bullets",obj_NoPlace);	
}