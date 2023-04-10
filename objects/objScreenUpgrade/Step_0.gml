





if(pc.lMouseClick){
	
	var b = collision_point(mouse_x, mouse_y, objButton, true, false);
	if(b){
		
		
		if(mode == 1){
			var i = playerUnlearnedCircle();
			pc.circle[i] = b.num;
			
			if(ww.circle[pc.circle[i]].first != ""){
				playerGainSpell(ww.circle[pc.circle[i]].first);
			}
		}
		
		if(mode == 2){
			pc.circleLevel[b.num] += 1;
		}
		
	
		with(objButton){ instance_destroy(); }
	
		instance_destroy();
		eatPlayerInput();
	}
}