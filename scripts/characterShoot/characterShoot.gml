function characterShoot(spl){
	if(spl.nam == ""){ return; }
	
	if(spl.simpleShot){
		var s = instance_create_depth(x, y, ww.layerEff, objShot);
		if(aly == 1){ s.col = [c_blue, c_aqua]; } //
		s.sprite_index = spl.img;
		s.aly = aly;
	
		if(spl.tiltByInput){
			if(lastYIn == -1){ s.image_angle = 90; }
			if(lastYIn == 1){ s.image_angle = -90; }
			if(lastXIn == -1){ s.image_angle = 180; }
			if(lastXIn == 1){ s.image_angle = 0; }
			if(lastXIn == 1 && lastYIn == -1){ s.image_angle = 45; }
			if(lastXIn == 1 && lastYIn == 1){ s.image_angle = -45; }
			if(lastXIn == -1 && lastYIn == 1){ s.image_angle = -135; }
			if(lastXIn == -1 && lastYIn == -1){ s.image_angle = 135; }
		}
		
		if(spl.followCaster){
			s.follow = id;
			s.dis = spl.waitTime;
		}
		
		if(spl.offsetByInput){
			var off = abs(sprite_width);
			s.x += lastXIn * off;
			s.xOff += lastXIn * off;
			s.y += lastYIn * off;
			s.yOff += lastYIn * off;
		}
		
		s.moveSpeed = spl.moveSpeed;
		s.hitsMax = spl.maxTargets;
		
		if(spl.aimByInput){
			s.moveType = "";
			if(lastYIn == -1){ s.ys = -s.moveSpeed; }
			if(lastYIn == 1){ s.ys = s.moveSpeed; }
			if(lastXIn == -1){ s.xs = -s.moveSpeed; }
			if(lastXIn == 1){ s.xs = s.moveSpeed; }
		}
		
	} /// end of simple shot ///
	
	
	
	
	
	
	return s;
	

	

}