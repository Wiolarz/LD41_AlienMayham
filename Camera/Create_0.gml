/// @description Insert description here
// You can write your code in this editor
	cxp = 640;//1280;
	cyp = 480;//960;
	camera = camera_create();
	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	var pm = matrix_build_projection_ortho(cxp,cyp,1,1000);
	camera_set_view_mat(camera,vm);
	camera_set_proj_mat(camera,pm);
	view_camera[0] = camera;
	follow = obj_Player;
	xTo = x;
	yTo = y;
	
	movespeed = 1;