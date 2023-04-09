if(aly == other.aly){ return; }
if(arrayContains(hits, other)){ return; }


hurtCharacter(other, 10, "", 0, "");








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


