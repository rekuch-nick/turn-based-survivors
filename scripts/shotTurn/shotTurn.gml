function shotTurn(){
	
	if(firstFrame){
		if(spl.pointAtMouse){ image_angle = point_direction(x, y, xt, yt); }
		
		
		firstFrame = false;
	}
	
	x += xs;
	y += ys;
	
	image_angle += rot;
	
	if(drift){
		x += choose(-1, 0, 1);
		y += choose(-1, 0, 1);
	}
	
	if(spl.stopShots){
		var s = collision_circle(x, y, 15, objShot, false, true);
		if(s != noone){
			if(s.aly != aly && s.spl.stoppableShot){
				instance_destroy(s);
			}
		}
	}
	
	try{
		if(follow != noone){
			x = follow.x + xOff;
			y = follow.y + yOff;
		}
	} catch (e) {
		show_debug_message(string(e));
	}
	
	
	
	dis -= clamp(moveSpeed, 1, moveSpeed + 1);
	if(dis < 1){
		instance_destroy();
	}
	
}