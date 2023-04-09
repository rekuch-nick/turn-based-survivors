function playerXPGain(n){
	
	pc.xp += n;
	
	if(pc.xp >= pc.xpMax){
		pc.xp = clamp(pc.xp - pc.xpMax, 0, pc.xpMax);
		pc.xpMax = pc.xpMax + 10;
		pc.level ++;
	}

}