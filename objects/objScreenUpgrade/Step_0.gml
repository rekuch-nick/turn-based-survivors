


if(image_alpha < 1){
	image_alpha += .01;
	image_alpha += .09;
	with(objButton){ image_alpha = other.image_alpha; }
	return;
}


if(pc.lMouseClick){
	
	var b = collision_point(mouse_x, mouse_y, objButton, true, false);
	if(b){
		
		
		if(mode == 1){
			var i = playerUnlearnedCircle();
			pc.circle[i] = b.num;
			pc.circleLevel[i] ++;
			
			if(ww.circle[pc.circle[i]].first != ""){
				playerGainSpell(ww.circle[pc.circle[i]].first);
			}
		}
		
		if(mode == 2){
			pc.circleLevel[b.num] += 1;
			
			for(var i=0; i<4; i++){
				if( ww.circle[b.num].spellLevels[i] == pc.circleLevel[b.num] ){
					playerGainSpell( ww.circle[b.num].spells[i] );
				}
			}
			
		}
		
	
		with(objButton){ instance_destroy(); }
	
		instance_destroy();
		eatPlayerInput();
		
		if(mode == 1){/*
			var s = instance_create_depth(0, 0, -1000, objScreenTextBox);
			s.hed = "You Bonded " + ww.circle[pc.circle[i]].nam;
			
			var an = ""
			if(pc.cStat[i] == 0){ an = "Power"; }
			if(pc.cStat[i] == 1){ an = "Agility"; }
			if(pc.cStat[i] == 2){ an = "Toughness"; }
			if(pc.cStat[i] == 3){ an = "Intellect"; }
			if(pc.cStat[i] == 4){ an = "Spirit"; }
			
			s.txt = "This Circle has bonded to the " + string(an) + " attribute, it will increase as your mastery of this Circle does.";
			s.txt += "\n\n";
			s.txt += getLevelUpDesc(ww.circle[pc.circle[i]].nam, 1);*/
		}
		playerSetStats();
		
	}
}