image_xscale = 4; image_yscale = 4;
txt = "";
mode = 1;


if(pc.circle[4] == -1){
	txt = "Choose a Circle";
	var a = 120; var b = 240;
	for(var i=0; i<ww.circleMax; i++){
		if(playerHasCircle(i)){ continue; }
		
		var s = instance_create_depth(a, b, depth - 1, objButton);
		s.sprite_index = imgButtonSmall;
		s.txt = ww.circle[i].nam;
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
	var a = 252; var b = 240;
	for(var i=0; i<5; i++){
		if(i == 3){ a -= 900; b = 430; a += 150;}
		
		var s = instance_create_depth(a, b, depth - 1, objButton);
		s.txt = ww.circle[pc.circle[i]].nam;
		s.col = ww.circle[pc.circle[i]].col;
		s.num = ww.circle[pc.circle[i]].num;
		
		a += 300;
		
	}
}