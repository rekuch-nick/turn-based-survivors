if(aly == other.aly){ return; }
if(arrayContains(hits, other)){ return; }


hurtCharacter(other, pow, "", 0, "");


if(aly == 1 && forceDrop != noone && irandom_range(0, 99) < forceDropChance){
	var s = instance_create_depth(x, y, ww.layerPup, objPup);
	s.sprite_index = forceDrop;
	s.col = forceDropCol;
	if(forceDropHone){ s.hone = true; }
}






hits[hitIndex] = other;
hitIndex ++;
if(array_length(hits) >= hitsMax){
	var e = instance_create_depth(x, y, depth, objEffect);
	e.sprite_index = sprite_index;
	e.col = col;
	e.image_angle = image_angle;
	e.fade = .05;
	instance_destroy();
}


