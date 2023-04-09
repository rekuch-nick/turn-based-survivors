function characterShoot(spl){
	if(spl.nam == ""){ return; }
	
	if(spl.simpleShot){
		
		
		for(var i=0; i<spl.multiShot; i++){
			var a = x; var b = y;
		
			if(spl.startPoint == "mouse" && object_index == objPlayer){
				a = mouse_x; b = mouse_y;
			}
			
			if(i > 0){
				if(spl.multiMethod == "rad"){
					var aa = irandom_range(0, spl.multiRad);
					var bb = irandom_range(0, spl.multiRad - aa);
					aa = choose(-aa, aa);
					bb = choose(-bb, bb);
					a = a + aa; b = b + bb;
					
				}
			}
		
			var s = instance_create_depth(a, b, ww.layerEff, objShot);
			if(aly != 1){ s.col = [c_red, c_orange]; } //
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
				
			}
			s.dis = spl.dis;
		
			if(spl.offsetByInput){
				var off = abs(sprite_width);
				s.x += lastXIn * off;
				s.xOff += lastXIn * off;
				s.y += lastYIn * off;
				s.yOff += lastYIn * off;
			}
			
			s.rot = spl.rot;
			s.drift = spl.drift;
			
			s.moveSpeed = spl.moveSpeed;
			s.hitsMax = spl.maxTargets;
		
			if(spl.aimByInput){
				s.moveType = "";
				if(lastYIn == -1){ s.ys = -s.moveSpeed; }
				if(lastYIn == 1){ s.ys = s.moveSpeed; }
				if(lastXIn == -1){ s.xs = -s.moveSpeed; }
				if(lastXIn == 1){ s.xs = s.moveSpeed; }
			}
			
		} /// end of for multishot ///
		
	} /// end of simple shot ///
	
	
	if(spl.simpleEffect){
		
		var a = x; var b = y-24;
		
		var s = instance_create_depth(a, b, ww.layerEff, objEffect);
		s.ys = -1;
		s.fade = .03;
		s.cd = 180;
		s.sprite_index = spl.img;
		
		if(spl.nam == "Mana Potion"){
			var n = clamp(ceil(mpMax * .2), 20, 100);
			mp = clamp(mp + n, 0, mpMax);
		}
		
	} /// end of simple effect ///
	
	
	
	return s;
	

	

}