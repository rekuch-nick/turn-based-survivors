function shotTurn(){
	
	if(firstFrame){
		
		
		
		firstFrame = false;
	}
	
	x += xs;
	y += ys;
	
	image_angle += rot;
	
	if(drift){
		x += choose(-1, 0, 1);
		y += choose(-1, 0, 1);
	}
	
	if(follow != noone){
		x = follow.x + xOff;
		y = follow.y + yOff;
	}
	
	
	
	dis -= clamp(moveSpeed, 1, moveSpeed + 1);
	if(dis < 1){
		instance_destroy();
	}
	
}