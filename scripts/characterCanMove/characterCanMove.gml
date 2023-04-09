function characterCanMove(a, b){
	
	if(!place_empty(x + a, y + b, objCreature)){ return false; }
	
	
	return true;
}