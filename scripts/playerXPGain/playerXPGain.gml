function playerXPGain(n){
	
	pc.xp += n;
	
	if(pc.xp >= pc.xpMax){
		pc.xp = clamp(pc.xp - pc.xpMax, 0, pc.xpMax);
		pc.xpMax = pc.xpMax + 10;
		pc.level ++;
		
		eatPlayerInput();
		instance_create_depth(0, 0, -1009, objScreenUpgrade);
		
	}

}