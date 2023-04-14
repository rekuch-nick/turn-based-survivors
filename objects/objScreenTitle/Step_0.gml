





if(	keyboard_check_pressed(vk_enter) ||
	(pc.lMouseClick && collision_point(mouse_x, mouse_y, buttonStart, true, false))
					){
		
		
	
	with(objButton){ instance_destroy(); }
	instance_destroy();
	eatPlayerInput();
		
}