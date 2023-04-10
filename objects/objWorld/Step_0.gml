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
		
		if(spawnCharge >= 100){
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
		instance_create_depth(a, b, layerMob, t);
	}
}
