function characterCanMove(a, b){
	
	if(!place_empty(x + a, y + b, objCreature)){ return false; }
	if(!flying && !place_empty(x + a, y + b, objPit)){ return false; }
	
	
	return true;
}