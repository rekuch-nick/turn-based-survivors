function characterGainBuff(c, b){
	
	if(characterHasBuff(c, b.nam)){
		b = characterGetBuff(c, b);
		if(b == noone){ return; } // should not happen
		
		if(b.stacks < b.stacksMax){
			b.stacks ++;
		}
		
		b.dur = b.durMax;
		
	} else {
		ds_list_add(c.buffs, b);
	}
	
	
	
	
}