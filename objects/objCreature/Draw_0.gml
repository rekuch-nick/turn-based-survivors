



draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, col, image_alpha);

for(var i=0; i<ds_list_size(buffs); i++){
	var b = ds_list_find_value(buffs, i);
	if(b.effect != noone && b.effect != imgBlank){
		var ss = abs(sprite_width / 12);
		draw_sprite_ext(b.icon, 0, x, y, ss, ss, 0, b.effectCol, b.effectAlpha);
	}
}