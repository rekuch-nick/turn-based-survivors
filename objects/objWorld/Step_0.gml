if(instance_number(objScreen) > 0){ return; }

if(activeFrames > 0){
	
	msPast ++; if(msPast >= 60){
		msPast = 0;
		secPast ++; if(secPast >= 60){
			secPast = 0;
			minPast ++; 
			spawnCharge += 100 * minPast;
			if(minPast >= 60){
				minPast = 0;
				houPast ++;
			}
		}
	}
	
	
	
	activeFrames --;
	spawnCharge ++;
	
	with(objCreature){
		
		mobTurn();
	}
	
	with(objShot){
		shotTurn();
	}
	
	with(objPup){
		if(hone){
			if(x < pc.x){ x += 2; }
			if(x > pc.x){ x -= 2; }
			if(y < pc.y){ y += 2; }
			if(y > pc.y){ y -= 2; }
		}

	}
	
	
	
	if(spawnCharge >= 30){
		
		var c = 30;
		var t = objGoon;
		
		if(minPast < 1){ 
			t = objMinion;
			if(secPast > 40){ c = 10; }
		}
		
		
		if(minPast >= 4){ 
			if(secPast > 40){ c = 15; }
		}
		
		
		
		if(minPast >= 7){ 
			t = objGoonArmor;
		}
		
		
		if(spawnCharge >= 100 && minPast > 1){
			c = 100;
			t = objChunk;
		}
		
		var a = irandom_range(0, room_width);
		var b = irandom_range(0, room_height);
		if(choose(true, false)){
			a = choose(0, room_width);
		} else {
			b = choose(0, room_height);
		}
		
		spawnCharge -= c;
		var m = instance_create_depth(a, b, layerMob, t);
		var i = 0;
		with(m){
			i ++;
			while(!characterCanMove(0, 0)){
				m.x += irandom_range(-i, i);
				m.y += irandom_range(-i, i);
			}
		}
	}
}
