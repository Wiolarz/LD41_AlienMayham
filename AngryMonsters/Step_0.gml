/// @description Insert description here
// You can write your code in this editor

calm += 1;



if(global.IronClon >= 100)
{
	global.ChaoticIron = true;
}
else
{
	global.ChaoticIron = false;
}

if(global.ThunderClon >= 100)
{
	global.ChaoticThunder = true;
}
else
{
	global.ChaoticThunder = false;
}

if(global.UranClon >= 100)
{
	global.ChaoticUran = true;
}
else
{
	global.ChaoticUran = false;
}




if(global.KilledIron >= 5)
{
	calm = 0;
	global.AngryIron = true;
}

	if(calm == 100)
	{
	global.AngryIron = false;
	global.KilledIron = 0;
	}


if(global.KilledThunder >= 5)
{
	global.AngryThunder = true;
}





if(global.KilledUran >= 5)
{
	global.AngryUran = true;
	calm = 0;
}

	if(calm == 100)
	{
	
	global.AngryUran = false;
	global.KilledUran = 0;
	}



