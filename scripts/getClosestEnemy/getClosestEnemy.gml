function getClosestEnemy(){
	var bestDis = 10000;
	var best = noone;
	
	
	with(objCreature){
		var d = point_distance(x, y, other.x, other.y);
		if(d == 0){ continue; }
		if(aly == other.aly){ continue; }
		if(d < bestDis){
			bestDis = d;
			best = id;
		}
	}
	
	
	return best;
}