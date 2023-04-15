function getRandomEnemyInRangeFrom(rMin, rMax, a, b){
	
	var best = noone;
	var tries = 0;
	
	
	while (best == noone && tries < 1000){
		tries ++;
		var inst = instance_find(objCreature, irandom(instance_number(objCreature) - 1));
		
		var d = point_distance(inst.x, inst.y, a, b);
		if(d < rMin){ continue; }
		if(d > rMax){ continue; }
		if(inst.aly == aly){ continue; }
		if(inst.justHitByChain){ continue; }
		
		best = inst;
		inst.justHitByChain = true;
	}
	
	return best;
}