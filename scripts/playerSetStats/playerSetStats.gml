function playerSetStats(){
	
	pc.pow = pc.circleLevel[pc.cStat[0]];
	pc.agi = pc.circleLevel[pc.cStat[1]];
	pc.tou = pc.circleLevel[pc.cStat[2]];
	pc.int = pc.circleLevel[pc.cStat[3]];
	pc.spi = pc.circleLevel[pc.cStat[4]];
	
	
	
	pc.hpMax = 100 + (20 * pc.tou);
	pc.regenMax = 180;
	pc.regenGain = 1 + (1 * pc.tou);
	
	
	pc.mpMax = 25 + (5 * pc.int);
	pc.critPlus = 0 + (5 * pc.int);
	// +2% raw proc per level
	
	
	pc.chargeMax = 60;
	pc.chargeGain = 1 + (1 * pc.spi);
	
	
	pc.CDR = 0 + (5 * pc.agi);
	
	
	
}