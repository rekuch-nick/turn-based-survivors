function playerStat(nam){
	
	var i = 0;
	
	if(nam == "pow"){ i = pc.circleLevel[pc.powerID]; }
	if(nam == "agi"){ i = pc.circleLevel[pc.agilityID]; }
	if(nam == "tou"){ i = pc.circleLevel[pc.toughnessID]; }
	if(nam == "int"){ i = pc.circleLevel[pc.intellectID]; }
	if(nam == "spi"){ i = pc.circleLevel[pc.spiritID]; }
	
	return i;
}