function playerCanCastSelected(){
	
	if(pc.mp < pc.actCost[pc.use]){ return false; }
	if(pc.actCD[pc.use] > 0){ return false; }
		
	return true;
	
}