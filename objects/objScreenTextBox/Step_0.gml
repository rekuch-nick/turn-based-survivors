





if( pc.pauseClick ||
			(pc.lMouseClick && collision_point(mouse_x, mouse_y, buttonStart, true, false)) 
			){
	
	with(objButton){ instance_destroy(); }
	instance_destroy();
	eatPlayerInput();
		

}