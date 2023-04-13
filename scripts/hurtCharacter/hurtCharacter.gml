function hurtCharacter(c, dam, ele, pie, note){
	
	var arm = c.armor;
	arm -= pie;
	if(arm > 0){ dam -= floor( dam * (arm / 100) ); }
	
	
	c.hp -= dam;
	
	
	var s = instance_create_depth(c.x, c.y, ww.layerEff, objEffect);
	s.flicker = true;
	s.sprite_index = c.sprite_index;
	s.follow = c;
	s.cd = 10;
	
	if(c.hp < 1){
		killCharacter(c);
			
		
			
		
	
	}
}