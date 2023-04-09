if(instance_number(objScreen) > 0){ return; }

if(activeFrames > 0){
	
	msPast ++; if(msPast >= 60){
		msPast = 0;
		secPast ++; if(secPast >= 60){
			secPast = 0;
			minPast ++; if(minPast >= 60){
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
	
	
	
	if(spawnCharge >= 30){
		
		var c = 30;
		var t = objGoon;
		
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
