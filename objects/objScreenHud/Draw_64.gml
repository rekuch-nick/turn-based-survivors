draw_self();

var x1 = 0;
var y1 = 0;
var x2 = 300;
var y2 = 24;
draw_rectangle_color(x1, y1, x2, y2, c_black, c_black, #1E1F4C, #1E1F4C, false);
var xMax = x2 - x1;
var xMod = (pc.hp / pc.hpMax) * xMax;
draw_rectangle_color(x1, y1, x1 + xMod, y2, c_red, c_red, c_maroon, c_maroon, false);
draw_text(3, 3, pc.hp);

y1 = 25;
y2 = 48;
draw_rectangle_color(x1, y1, x2, y2, c_black, c_black, #1E1F4C, #1E1F4C, false);
var xMax = x2 - x1;
var xMod = (pc.mp / pc.mpMax) * xMax;
draw_rectangle_color(x1, y1, x1 + xMod, y2, c_aqua, c_aqua, c_blue, c_blue, false);
draw_text(3, y1 + 3, pc.mp);


draw_set_halign(fa_center);
var s = "0";
if(ww.houPast > 0){ s = string(ww.houPast); }
if(ww.minPast == 0){ s = s + ":00"; }
if(ww.minPast > 0 && ww.minPast < 10){ s = s + ":0" + string(ww.minPast); }
if(ww.minPast >= 10){ s = s + ":" + string(ww.minPast); }
if(ww.secPast == 0){ s = s + ":00"; }
if(ww.secPast > 0 && ww.secPast < 10){ s = s + ":0" + string(ww.secPast); }
if(ww.secPast >= 10){ s = s + ":" + string(ww.secPast); }
draw_text(room_width / 2, room_height - 20, s);
draw_set_halign(fa_left);

x1 = 480;
y1 = room_height - 48;
x2 = x1 + (48 * 3);
y2 = room_height - 25;
draw_rectangle_color(x1, y1, x2, y2, c_black, c_black, #1E1F4C, #1E1F4C, false);
xMax = x2 - x1;
xMod = (pc.xp / pc.xpMax) * xMax;
draw_rectangle_color(x1, y1, x1 + xMod, y2, #007F00, #007F00, c_green, c_green, false);
//draw_text(482, room_height - 44, pc.xp);
//draw_text(482, room_height - 44, playerClassname());


for(var i=1; i<21; i++){
	var a = i - 1;
	if(i > 10){ a += 3; }
	
	var x1 = 48 * a;
	var y1 = room_height - 48;
	
	//draw_sprite_stretched(pc.actIcon[i], 0, x1, y1, 48, 48);
	draw_sprite_ext(pc.actIcon[i], 0, x1 + 24, y1 + 24, 4, 4, 0, pc.actCol[i], 1);
	
	if(pc.mp < pc.actCost[i] || pc.act[i] == ""){
		draw_set_alpha(.7);
		draw_rectangle_color(x1, y1, x1+48, y1+48, c_black, c_black, c_black, c_black, false);
	} else if (pc.actCD[i] > 0) {
		draw_set_alpha(.7);
		var m = 48;
		var mm = (pc.actCD[i] / pc.actCDMax[i]) * m;
		draw_rectangle_color(x1, y1, x1+48, y1+mm, c_black, c_black, c_black, c_black, false);
	}
	draw_set_alpha(1);
}

var a = pc.use - 1;
if(pc.use > 10){ a += 3; }
var c = playerCanCastSelected() ? c_white : c_dkgrey;
draw_sprite_ext(imgCursor, 0, 48 * a, room_height - 48, 4, 4, 0, c, 1);



var a = room_width - 48;
for(var i=0; i<60; i++){
	if(pc.passive[i] != ""){
		var p = getSpell(pc.passive[i]);
		
		draw_sprite_ext(p.icon, 0, a+24, 24, 4, 4, 0, p.iconCol, 1);
		
		a -= 48;
	}
}

var aSpot = room_width - 48;
for(var i=0; i<ds_list_size(pc.buffs); i++){
	var b = ds_list_find_value(pc.buffs, i);
	draw_rectangle_color(aSpot + 0, 48, aSpot + 48, 96, #1E1F4C, #1E1F4C, #1E1F4C, #1E1F4C, false);
	draw_rectangle_color(aSpot + 4, 52, aSpot + 44, 92, c_black, c_black, c_black, c_black, false);
	var bMod = 40 - (40 * (b.dur / b.durMax) );
	draw_rectangle_color(aSpot + 4, 52 + bMod, aSpot + 44, 52 + 40, c_navy, c_navy, c_navy, c_navy, false);
	draw_sprite_ext(b.icon, 0, aSpot + 24, 72, 4, 4, 0, b.iconCol, 1);
	if(b.stacks > 1){
		draw_text(aSpot + 4, 74, b.stacks);
	}
	aSpot -= 48;
}






