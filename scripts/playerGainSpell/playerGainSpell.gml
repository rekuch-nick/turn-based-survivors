function playerGainSpell(t){
	var s = getSpell(t);
	
	
	if(!s.passive){
		var n = 0;
		while(pc.act[n] != ""){
			n ++;
		}
	
	
		pc.act[n] = s.nam;
	
		pc.actIcon[n] = s.icon;
		pc.actCol[n] = s.iconCol;
		pc.actCost[n] = s.mpCost;
		pc.actCD[n] = 0;
		pc.actCDMax[n] = s.pcCD;
	} else {
		var n = 0;
		while(pc.passive[n] != ""){
			n ++;
		}
		pc.passive[n] = t;
	}
	
}