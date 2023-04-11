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
	pc.procPlus = 0 + (10 * pc.int); // percent of init chance increased, i.e. 10% means a 20% is a 22%
	pc.spellPierce = 0 + (5 * pc.int);
	
	pc.chargeMax = 60;
	pc.chargeGain = 1 + (1 * pc.spi);
	
	pc.critPlus = 0 + (5 * pc.agi);
	pc.CDR = 0 + (5 * pc.agi);
	
	
	
}