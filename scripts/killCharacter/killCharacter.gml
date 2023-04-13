function killCharacter(c){
	
	if(c.object_index == objPlayer){ return; }
	
	
	if(c.hp < 1){
		
		if(c.aly == -1 && !c.summoned){ 
			if(pc.waitXp < 1){ pc.waitXp = 10; }
			pc.xpToGain += c.xpOnKill;
			//playerXPGain(c.xpOnKill); 
		}
		
		for(var i=0; i<c.deathChips; i++){
			var a = c.x + irandom_range(-c.sprite_width/2, c.sprite_width/2);
			var b = c.y + irandom_range(-c.sprite_height/2, c.sprite_height/2);
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
	with(objEffect){
		if(follow == c){ follow = noone; dis = 0; }
	}
	
	instance_destroy(c);
}