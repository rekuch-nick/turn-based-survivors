function getPlayerInput(){
	
	
	
	
	
	
	xIn = 0;
	if( keyboard_check(vk_left) || keyboard_check(ord("A")) ){
		xIn --;
	}
	if( keyboard_check(vk_right) || keyboard_check(ord("D")) ){
		xIn ++;
	}
	
	yIn = 0;
	if( keyboard_check(vk_up) || keyboard_check(ord("W")) ){
		yIn --;
	}
	if( keyboard_check(vk_down) || keyboard_check(ord("S")) ){
		yIn ++;
	}
	
	if(xIn != 0 || yIn != 0){
		lastXIn = xIn;
		lastYIn = yIn;
	}
	if(xIn > 0 && image_xscale < 0){ image_xscale *= -1; }
	if(xIn < 0 && image_xscale > 0){ image_xscale *= -1; }
	shiftHold = false;
	if(keyboard_check(vk_shift)){ xIn = 0; yIn = 0; shiftHold = true;}
	
	lMouseClick = mouse_check_button_pressed(mb_left);
	lMouseHold = mouse_check_button(mb_left);
	
	
	
	rMouseClick = mouse_check_button_pressed(mb_right);
	rMouseHold = mouse_check_button(mb_right);
	
	spaceHold = keyboard_check(vk_space);
	
	pauseClick = keyboard_check_pressed(vk_escape);
	
	for(var i=1; i<11; i++){
		var s = string(i);
		if(i == 10){ s = "0"; }
		numClick[i] = keyboard_check_pressed(ord(s));
		numHold[i] = keyboard_check_pressed(ord(s));
	}
	
	
	
	if(keyboard_check_pressed(vk_backspace)){ debug = !debug; }
}