/// @description Insert description here
// You can write your code in this editor

movespeed = global.camerspeed;



x += (xTo - x)/(5*movespeed);
	y += (yTo - y)/(5*movespeed);
	if (follow != noone)
	{
		xTo = follow.x;
		yTo = follow.y;
	}
	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	camera_set_view_mat(camera,vm);