function characterHasBuff(c, n){
	
	if(c.object_index == objPlayer){
		for(var i=0; i<60; i++){
			if(pc.passive[i] == n){ return true; }
		}
	}
	
	
	
	
	return false;
	
}