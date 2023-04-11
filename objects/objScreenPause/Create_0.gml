image_xscale = 4; image_yscale = 4;





for(var i=0; i<5; i++){
	//var s = instance_create_depth(170, 240 + 120 * i, depth - 1, objButton);
	//s.sprite_index = imgButtonThin;
	
	if(pc.circle[i] == -1){
		txt[i] = "  " + "\n" + "( ??? )";
		col[i] = c_grey;
	} else {
		txt[i] = ww.circle[pc.circle[i]].nam + "\n";
		
		if(pc.cStat[i] == 0){ txt[i] += "(Power)"; }
		if(pc.cStat[i] == 1){ txt[i] += "(Agility)"; }
		if(pc.cStat[i] == 2){ txt[i] += "(Toughness)"; }
		if(pc.cStat[i] == 3){ txt[i] += "(Intellect)"; }
		if(pc.cStat[i] == 4){ txt[i] += "(Spirit)"; }
	
		col[i] = ww.circle[pc.circle[i]].col;
	}
	
		
	
}