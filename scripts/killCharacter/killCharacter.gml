function killCharacter(c){
	
	if(c.object_index == objPlayer){ return; }
	
	
	if(c.hp < 1){
		
		if(c.aly == -1){ playerXPGain(c.xpOnKill); }
		
		for(var i=0; i<c.deathChips; i++){
			var a = x + irandom_range(-sprite_width/2, sprite_width/2);
			var b = y + irandom_range(-sprite_height/2, sprite_height/2);
			var s = instance_create_depth(a, b, ww.layerEff, objEffect);
			s.sprite_index = imgChip;
			s.col = [c.col, c_purple, c_red];
			s.grav = 1;
			s.ys = irandom_range(-8, -2);
			s.fade = .03;
		}
		
	}
	
	with(objShot){
		if(follow == c){ follow = noone; dis = 0; }
	}
	
	instance_destroy(c);
}