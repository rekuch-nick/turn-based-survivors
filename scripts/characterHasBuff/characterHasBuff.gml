function characterHasBuff(c, n){
	
	
	
	if(c.object_index == objPlayer){
		for(var i=0; i<60; i++){
			if(pc.passive[i] == n){ return true; }
		}
	}
	
	
	
	for(var i=0; i<ds_list_size(c.buffs); i++){
		var b = ds_list_find_value(c.buffs, i);
		if(b.nam == n){ return true; }
	}
	
	
	
	return false;
	
}