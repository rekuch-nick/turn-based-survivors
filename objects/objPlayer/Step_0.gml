getPlayerInput();
if(instance_number(objScreen) > 0){ return; }

lastUse = use;
if(shiftHold){
	for(var i=1; i<11; i++){
		if(numClick[i]){
			var ii = i + 10;
			if(use == ii){
				use = ii <= 10 ? ii + 10 : ii;
			} else {
				use = ii;
			}
		}
	}
} else {
	for(var i=1; i<11; i++){
		if(numClick[i]){
			if(use == i){
				use = i <= 10 ? i + 10 : i;
			} else {
				use = i;
			}
		}
	}
}

var dir = 0;
if(mouse_wheel_down()){ dir = 1; }
if(mouse_wheel_up()){ dir = -1; }
if(dir != 0){
	while(true){
		use += dir;
		if(use < 0){ use = 20; }
		if(use > 20){ use = 0; }
		if(act[use] != ""){ break; }
	}
}

if(act[use] == ""){ use = lastUse; }
lastUse = use; ///





if(spaceHold){ ww.activeFrames = clamp(ww.activeFrames, 1, ww.activeFrames + 1); }



if(xIn != 0 || yIn != 0){
	ww.activeFrames = clamp(ww.activeFrames, 1, ww.activeFrames + 1);
	
	var eSpeed = moveSpeed;
	
	xs = xIn * eSpeed;
	ys = yIn * eSpeed;
	
	if(xIn != 0 && yIn != 0){
		xs = xs * .7;
		ys = ys * .7;
	}
	
	
	
	
	if(!characterCanMove(xs, 0)){ xs = 0; }
	if(!characterCanMove(0, ys)){ ys = 0; }
	
	
	with(objScrollable){
		if(object_index == objPlayer){ continue; }
		x += -other.xs;
		y += -other.ys;
	}
	
}



if(lMouseClick){
	if(mouse_y >= 48 && mouse_y < room_height - 48){
	
		var canCast = true;
		if(mp < actCost[use]){ canCast = false; }
		if(actCD[use] > 0){ canCast = false; }
	
		if(canCast){
			mp -= actCost[use];
			actCD[use] = actCDMax[use];
			
			
			if(ww.activeFrames < getSpell(act[use]).waitTime){
				ww.activeFrames = getSpell(act[use]).waitTime;
			}
			
			characterShoot(getSpell(act[use]));
			
			
			
		}
	}
	
	if(mouse_y >= room_height - 48){
		
	}
}

if(ww.activeFrames > 0){
	for(var i=1; i<21; i++){
		actCD[i] = clamp(actCD[i] - 1, 0, actCDMax[i]);
	}
}