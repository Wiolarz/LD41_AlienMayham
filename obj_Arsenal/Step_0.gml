/// @description Insert description here
// You can write your code in this editor
if distance_to_object(obj_Player) < 100
{
global.InShop = 2;
}



var _r = (display_get_gui_width()/4);//*3;
var _g = 1;
var _l = (display_get_gui_width()/2);



if(global.InShop == 2) //&& (global.FILLED == false)
{
	//global.Energy += 1;
	if(global.EqSize < 5)
	{
	instance_create_layer(x + 100, y + 100,"Bullets",obj_IconBuyWeapon);
	}
	
	instance_create_layer(x + 100, y,"Bullets",obj_IconBuyAmmo);
	//instance_create_layer(_r,_l,"Bullets",obj_IconArsenal);
}