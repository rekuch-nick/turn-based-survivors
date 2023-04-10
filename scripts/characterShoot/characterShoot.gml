function characterShoot(spl){
	if(spl.nam == ""){ return; }
	
	if(spl.simpleShot){
		
		
		for(var i=0; i<spl.multiShot; i++){
			var a = x; var b = y;
			
			if(spl.startOff > 0){
				a += irandom_range(-spl.startOff, spl.startOff);
				b += irandom_range(-spl.startOff, spl.startOff);
			}
		
			if(spl.startPoint == "mouse" && object_index == objPlayer){
				a = mouse_x; b = mouse_y;
			}
			
			if(spl.startPoint == "target"){
				if(object_index == objPlayer){
					a = mouse_x; b = mouse_y;
				} else {
					a = pc.x; b = pc.y; // replace with chosen target script
				}
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
			s.col = spl.col;
			if(aly != 1){ s.col = [c_red, c_orange]; } //
			s.sprite_index = spl.img;
			s.aly = aly;
			
			
			s.pow = spl.pow; /// add damage formula ///
			
			
			
			if(spl.melee && characterHasBuff(id, "Cleave")){
				s.image_xscale *= 1.5;
				s.image_yscale *= 1.5;
				s.pow *= 1.5;
			}
			
			
			if(spl.target == "target"){
				if(object_index == objPlayer){
					s.xt = mouse_x; s.yt = mouse_y;
				} else {
					s.xt = pc.x; s.yt = pc.y; // replace with chosen target script
				}
			}
			
			
	
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
			
			s.forceDrop = spl.forceDrop;
			s.forceDropChance = spl.forceDropChance;
			s.forceDropCol = spl.forceDropCol;
			s.forceDropHone = spl.forceDropHone;
		
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
			
			
			if(spl.lineTo != noone){
				var x1 = x; var y1 = y;
				var x2 = a; var y2 = b;
				
				var angle = arctan2(y2 - y1, x2 - x1);
				var xs = cos(angle) * spl.lineToSpeed;
				var ys = sin(angle) * spl.lineToSpeed;
				
				while(point_distance(x1, y1, x2, y2) > spl.lineToSpeed){
					var ss = instance_create_depth(x1, y1, ww.layerEff, objEffect);
					ss.col = spl.lineToCol;
					if(spl.lineOff > 0){
						ss.x += irandom_range(-spl.lineOff, spl.lineOff);
						ss.y += irandom_range(-spl.lineOff, spl.lineOff);
					}
					ss.drift = true;
					ss.sprite_index = spl.lineTo;
					
					x1 += xs; y1 += ys;
					
					if(!spl.linePass){
						if(collision_point(x1, y1, objCreature, true, true)){
							s.x = x1; s.y = y1;
							x2 = x1; y2 = y1;
						}
					}
				}
			}
			
			if(spl.projectile){
				var angle = arctan2(s.yt - y, s.xt - x);
				s.xs = cos(angle) * s.moveSpeed;
				s.ys = sin(angle) * s.moveSpeed;
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
		
		if(spl.nam == "Water of Life"){
			var n = clamp(ceil(hpMax * .2), 20, 100);
			hp = clamp(hp + n, 0, hpMax);
		}
		
	} /// end of simple effect ///
	
	
	
	return s;
	

	

}