function characterCast(spl){
	if(spl.nam == ""){ return; }
	
	if(spl.nam == "Wild Spell"){
		if(pc.druidSpellCD < 1){
			pc.druidSpellCD = choose(5, 6, 7, 8, 9, 10) * 60;
			pc.druidSpell = choose("Ice Shard", "Razor Leaf", "Fire Bolt", "Crush", "Spark", "Gust", "Wave");
		}
		spl = getSpell(pc.druidSpell);
	}
	
	if(spl.simpleShot || spl.teleStrike){
		
		xLastHit = x; yLastHit = y;
		chaining = false;
		
		for(var i=0; i<spl.multiShot; i++){
			
			var a = x; var b = y;
			
			
			if(chaining && spl.lineTo != noone){
				
				spl.startPoint = "";
				
				var tar = getRandomEnemyInRangeFrom(60, spl.chainRange, xLastHit, yLastHit);
				if(tar != noone){
					
					a = tar.x;
					b = tar.y;
				} else {
					return;
				}
			}
			
			
			
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
			
			
			s.pow = spl.pow + floor(spl.pow * (pow / 10));
			
			var critRoll = irandom_range(1, 100) + critPlus + spl.critPlus;
			s.isCrit = critRoll >= 101;
			s.critMod = spl.critMod;
			
			s.pie = spl.pie; // + (int * 5);
			
			if(spl.angleByCaster){
				if(image_xscale < 0){ s.image_xscale *= -1; }
			}
			
			s.spl = spl;
			s.buff = spl.buff;
			s.stunTime = spl.stunTime;
			s.pointAtMouse = spl.pointAtMouse;
			s.procChance = spl.procChance + (int * 2);
			
			s.push = spl.push;
			
			if(spl.melee && characterHasBuff(id, "Cleave")){
				s.extraBleed = true;
			}
			
			if(spl.melee && characterHasBuff(id, "Burning Hand")){
				var roll = irandom_range(1, 100) + (int * 2);
				if(roll >= 50){
					s.extraBurn = true;
				}
			}
			
			
			if(spl.target == "target"){
				if(object_index == objPlayer){
					s.xt = mouse_x; s.yt = mouse_y;
				} else {
					s.xt = pc.x; s.yt = pc.y; // replace with chosen target script
				}
			}
			
			if(spl.offsetFromTarget > 0){
				s.xt += irandom_range(-spl.offsetFromTarget, spl.offsetFromTarget);
				s.yt += irandom_range(-spl.offsetFromTarget, spl.offsetFromTarget);
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
				// the shot object is at a, b
				// it was shot from object corde if i == 0
				// else it was shot from last hit cords
				
				if(!chaining){
					var x1 = x; var y1 = y;
				} else {
					var x1 = xLastHit; var y1 = yLastHit;
				}
				
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
						if(collision_circle(x1, y1, 6, objCreature, true, true)
							&& !collision_circle(x1, y1, 6, objCreature, true, true).justHitByChain
						){
							collision_circle(x1, y1, 6, objCreature, true, true).justHitByChain = true;
							s.x = x1; s.y = y1;
							x2 = x1; y2 = y1;
						}
					}
				}
				
				xLastHit = s.x; yLastHit = s.y;
			}
			
			if(spl.projectile){
				var angle = arctan2(s.yt - y, s.xt - x);
				s.xs = cos(angle) * s.moveSpeed;
				s.ys = sin(angle) * s.moveSpeed;
			}
			
			
			
			if(spl.lineChain > 0){
				i --;
				spl.lineChain --;
				chaining = true;
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
		
		if(spl.buff != noone){
			characterGainBuff(id, spl.buff);
		}
		
	} /// end of simple effect ///
	
	if(spl.isTeleport || spl.teleStrike){
		
		var a = x; var b = y-24;
		var s = instance_create_depth(a, b, ww.layerEff, objEffect);
		s.ys = -1;
		s.fade = .03;
		s.cd = 180;
		s.sprite_index = spl.img;
		if(spl.teleStrike){ s.sprite_index = imgBlank; }
		
		
		
		var xOld = x; var yOld = y;
		
		if(spl.target == "target"){
			if(object_index == objPlayer){
				s.xt = mouse_x; s.yt = mouse_y;
			} else {
				s.xt = pc.x; s.yt = pc.y; // replace with chosen target script
				
				if(spl.teleType == "run"){ 
					// some run code
					var angle = arctan2(y - pc.y, x - pc.x);
					xs = cos(angle) * 200;
					ys = sin(angle) * 200;
					s.xt = x + xs;
					s.yt = y + ys;
				}
			}
			
			var ms = 20; var dis = 0;
			
			var angle = arctan2(s.yt - y, s.xt - x);
			var xss = cos(angle) * ms;
			var yss = sin(angle) * ms;
			
			while(dis < spl.teleRange){ 
				if(object_index == objPlayer){
					playerMove(xss, yss);
				} else {
					x += xss; y += yss; 
				}	
				dis += ms; 
			}
			
			while( !characterCanMove(0, 0) ){
				if(object_index == objPlayer){
					playerMove(xss, yss);
				} else {
					x += xss; y += yss; 
				}
				dis += ms;
				if(dis > spl.teleRange * 2){
					//fizzle
					x = xOld; y  = yOld;
					
					break;
				}
			}
			
			
			
			
			var a = x; var b = y-24;
			var s = instance_create_depth(a, b, ww.layerEff, objEffect);
			s.ys = -1;
			s.fade = .03;
			s.cd = 180;
			s.sprite_index = spl.img;
			
			
			
		}
		
		
		
		
		
		
		
	} /// end of isTeleport ///
	
	
	
	
	
	if(spl.isSummon){
		for(var i=0; i<spl.multiSummon; i++){
			
			var s = instance_create_depth(x, y, ww.layerMob, spl.summonKind);
			s.aly = aly;
			s.col = col;
			s.summoned = true;
			s.pow = pow;
			s.agi = agi;
			s.tou = tou;
			s.int = int;
			s.spi = spi;
			s.moveType = spl.summonMove;
			s.summonTime = spl.summonTime;
			
			with(s){
				var dis = 0;
				while(!characterCanMove(0, 0)){
					dis ++;
					x = other.x + irandom_range(-dis, dis);
					y = other.y + irandom_range(-dis, dis);
				}
			}
			
			
		}
		
	} /// end of is summon ///
	
	
	
	
	
	return s;
	

	

}