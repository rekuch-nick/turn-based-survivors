function shotTurn(){
	
	if(firstFrame){
		
		
		
		firstFrame = false;
	}
	
	x += xs;
	y += ys;
	
	if(follow != noone){
		x = follow.x + xOff;
		y = follow.y + yOff;
	}
	
	
	
	dis -= clamp(moveSpeed, 1, moveSpeed + 1);
	if(dis < 1){
		instance_destroy();
	}
	
}