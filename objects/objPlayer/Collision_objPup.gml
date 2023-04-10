


if(other.sprite_index == imgHPGlob && other.col == c_red){
	var hpGain = clamp(floor(hpMax / 20), 10, 50);
	hp = clamp(hp + hpGain, 0, hpMax);
}


if(other.sprite_index == imgHPGlobSmall && other.col == c_red){
	var hpGain = clamp(floor(hpMax / 100), 1, 10);
	hp = clamp(hp + hpGain, 0, hpMax);
}


instance_destroy(other);