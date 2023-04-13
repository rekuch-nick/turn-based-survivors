if(firstFrame){ return; }
aniCD --;
if(aniCD < 1){
	aniCD = aniCDMax;
	colIndex ++;
	if(colIndex >= array_length(col)){
		colIndex = 0;
	}
	
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, col[colIndex], image_alpha);

