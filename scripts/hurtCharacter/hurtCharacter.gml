function hurtCharacter(c, dam, ele, pie, note){
	
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