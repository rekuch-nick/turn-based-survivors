draw_self();
draw_set_halign(fa_center);
draw_text_transformed(room_width / 2, 50, "You are now Level " + string(pc.level), 2, 3, 0);

draw_text(room_width / 2, 120, txt);
draw_set_halign(fa_left);




if(mode == 2){
	for(var i=0; i<5; i++){
		for(var j=0; j<pc.circleLevel[i]; j++){
		
			var a = 300 + j * 60;
			var b = 192 + 120 * i;
			draw_rectangle(a, b, a + 50, b + 96, false);
		
	
		}
	}
}