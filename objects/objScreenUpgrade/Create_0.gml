image_xscale = 4; image_yscale = 4;
txt = "";
mode = 1;
image_alpha = 0;

if(pc.circle[4] == -1){
	txt = "Choose a Circle";
	var a = 120; var b = 240;
	for(var i=0; i<ww.circleMax; i++){
		if(playerHasCircle(i)){ continue; }
		
		var s = instance_create_depth(a, b, depth - 1, objButton);
		s.sprite_index = imgButtonSmall;
		s.image_alpha = 0;
		s.txt = "\n"+ww.circle[i].nam;
		s.col = ww.circle[i].col;
		s.num = i;
		a += 48 * 3;
		if(a > 48 * 21){
			a -= 48 * 21;
			b += 48 * 3;
		}
	}
	
} else {
	mode = 2;
	txt = "Advance a Circle";
	
	for(var i=0; i<5; i++){
		var s = instance_create_depth(170, 240 + 120 * i, depth - 1, objButton);
		s.sprite_index = imgButtonThin;
		s.image_alpha = 0;
		s.txt = ww.circle[pc.circle[i]].nam + "\n";
		if(pc.cStat[i] == 0){ s.txt += "(Power)"; }
		if(pc.cStat[i] == 1){ s.txt += "(Agility)"; }
		if(pc.cStat[i] == 2){ s.txt += "(Toughness)"; }
		if(pc.cStat[i] == 3){ s.txt += "(Intellect)"; }
		if(pc.cStat[i] == 4){ s.txt += "(Spirit)"; }
		
		s.col = ww.circle[pc.circle[i]].col;
		s.num = i;
	}
	
	
	
	/*
	var a = 252; var b = 240;
	for(var i=0; i<5; i++){
		if(i == 3){ a -= 900; b = 430; a += 150;}
		
		var s = instance_create_depth(a, b, depth - 1, objButton);
		s.txt = ww.circle[pc.circle[i]].nam;
		s.col = ww.circle[pc.circle[i]].col;
		//s.num = ww.circle[pc.circle[i]].num;
		s.num = i;
		
		a += 300;
		
	}*/
}