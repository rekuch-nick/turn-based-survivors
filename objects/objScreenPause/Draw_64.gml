draw_self();

//draw_set_halign(fa_center);
//draw_text_ext_transformed(room_width / 2, 120, hed, 44, sprite_width, 2, 2, 0);





/*for(var i=0; i<5; i++){
	
	var index = pc.powerID; var         str = "Power:     ";
	if(i == 1){ index = pc.agilityID;   str = "Agility:   "; }
	if(i == 2){ index = pc.toughnessID; str = "Toughness: "; }
	if(i == 3){ index = pc.intellectID; str = "Intellect: "; }
	if(i == 4){ index = pc.spiritID;    str = "Spirit:    "; }
	
	var str2 = ".....";
	if(pc.circleLevel[index] > 0){
		str2 = ww.circle[pc.circle[index]].nam;
	}
	
	var str3 = "";
	for(var j=0; j < (10 - string_length(str2)); j++){
		str3 += " ";
	}
	
	str3 += string(pc.circleLevel[index]);

	draw_text_transformed(30, 80 + i * 50, str + str2 + str3, 2, 2, 0);
	
}*/





for(var i=0; i<5; i++){
	draw_set_halign(fa_center);
	draw_text_color(140, 414 + i * 72, txt[i], col[i], col[i], col[i], col[i], 1);
	draw_set_halign(fa_left);
	
	for(var j=0; j<pc.circleLevel[i]; j++){
		
		var a = 300 + j * 60;
		var b = 410 + 72 * i;
		draw_rectangle(a, b, a + 50, b + 50, false);
		
	
	}
}