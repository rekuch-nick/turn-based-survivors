function characterGetBuff(c, b){
	
	for(var i=0; i<ds_list_size(c.buffs); i++){
		var bb = ds_list_find_value(c.buffs, i);
		if(bb.nam == b.nam){
			return bb;
		}
	}
	
	
	
	
	
	
	
	
	
	return noone;
	
	
	
}