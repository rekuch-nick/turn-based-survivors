function mobTurn(){
	
	
	
	regenCD += regenGain;
	if(regenCD >= regenMax){
		regenCD -= regenMax;
		hp = clamp(hp + 1, 0, hpMax);
	}
	
	chargeCD += chargeGain;
	if(chargeCD >= chargeMax){
		chargeCD -= chargeMax;
		mp = clamp(mp + 1, 0, mpMax);
	}
	
	
	
	
	if(object_index == objPlayer){ return; }
	
	
	
	if(summoned){ summonTime --; }
	if(stun > 0){ stun --; return; }
	if(actCD > 0){ actCD --; }
	if(wait > 0){ wait --; return; }
	
	thinkCD --;
	if(thinkCD <= 0){
		thinkCD = thinkCDMax;
		
		if(moveType == "player"){
			xt = pc.x; yt = pc.y;
		}
		
		if(moveType == "foe"){
			xt = x; yt = y;
			var m = getClosestEnemy();
			if(m != noone){
				xt = m.x; yt = m.y;
			}
		}
		
		
		
		var angle = arctan2(yt - y, xt - x);
		xs = cos(angle) * moveSpeed;
		ys = sin(angle) * moveSpeed;
		
		
		lastXIn = getDirection(xs);
		lastYIn = getDirection(ys);
		
		if(xs != 0 || ys != 0){
			if(!canLastDiag && (xs != 0 && ys != 0)){
				if(abs(xs) >= abs(ys)){
					lastYIn = 0;
				} else {
					lastXIn = 0;
				}
			}
		}
		
		
		
	}
	
	
	
	if(actCD < 1){
		actCD = actCDMax;
		var i = irandom_range(0, array_length(acts) - 1);
		var act = acts[i];
		
		characterCast(getSpell(act));
		wait = getSpell(act).waitTime;
	}
	
	
	
	
	
	var xss = xs;
	var yss = ys;
	if(!characterCanMove(xs, 0)){ xss = 0; }
	if(!characterCanMove(0, ys)){ yss = 0; }
	
	x += xss;
	y += yss;
	
	
	
	if(xss > 0 && image_xscale < 0){ image_xscale *= -1; }
	if(xss < 0 && image_xscale > 0){ image_xscale *= -1; }
	
	
	
	if(isBomb && point_distance(x, y, pc.x, pc.y) < abs(pc.sprite_width) * 1.1){
		
		var s = instance_create_depth(x, y, ww.layerEff, objEffect);
		s.sprite_index = imgBlast;
		s.col = [c_yellow, c_white, col];
		s.image_alpha = .6;
		s.image_xscale = 5; s.image_yscale = 5;
		hurtCharacter(pc, bombPow, "", 0, "");
		kill = true;
	}
	
	

	
	if(summoned && summonTime <= 0){ kill = true; }
	
	if(				x < -room_width ||
					x > 2*room_width ||
					y < -room_height ||
					y > 2*room_height ){
		kill = true;
	}
	
	
	
	
	if(kill){
		killCharacter(id);
	}
	
	
	
	
	
	
	
	
	
	
	
}