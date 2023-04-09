event_inherited();


var a = x + lastXIn * 22;
var b = y + lastYIn * 22;
draw_rectangle_color(a-2, b-2, a+2, b+2, c_blue, c_blue, c_blue, c_blue, false);

if(debug){
	draw_set_halign(fa_right);
	//draw_text(room_width, 50, ".");
	//draw_text(room_width, 100, string(instance_number(objCreature) - 1) + " mobs");
	draw_set_halign(fa_left);
}