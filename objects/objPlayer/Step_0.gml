getPlayerInput();
ignoreClickTime = clamp(ignoreClickTime - 1, 0, ignoreClickTime);
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
		if(use < 1){ use = 20; }
		if(use > 20){ use = 1; }
		if(act[use] != ""){ break; }
	}
}

if(act[use] == ""){ use = lastUse; }
lastUse = use; ///





if(spaceHold){ ww.activeFrames = clamp(ww.activeFrames, 1, ww.activeFrames + 1); }



if(xIn != 0 || yIn != 0){
	ww.activeFrames = clamp(ww.activeFrames, 1, ww.activeFrames + 1);
	
	var eSpeed = moveSpeed;
	
	if(characterHasBuff(id, "Web")){ eSpeed = ceil(moveSpeed / 2); }
	
	xs = xIn * eSpeed;
	ys = yIn * eSpeed;
	
	if(xIn != 0 && yIn != 0){
		xs = xs * .7;
		ys = ys * .7;
	}
	
	
	
	var xss = xs;
	var yss = ys;
	
	if(characterHasBuff(id, "Haste")){ xss *= 2; yss *= 2; }
	
	if(xPush > 0){ xss += xPush; xPush --; }
	if(xPush < 0){ xss += xPush; xPush ++; }
	if(abs(xPush) < 1){ xPush = 0; }
	if(yPush > 0){ yss += yPush; yPush --; }
	if(yPush < 0){ yss += yPush; yPush ++; }
	if(abs(yPush) < 1){ yPush = 0; }
	
	
	if(!characterCanMove(xss, 0)){ xss = 0; }
	if(!characterCanMove(0, yss)){ yss = 0; }
	
	playerMove(xss, yss);
	
	
	
}



if(lMouseClick || (lMouseHold && getSpell(act[use]).holdToShoot && ignoreClickTime < 1) ){
	if(mouse_y >= 48 && mouse_y < room_height - 48){
	
		var canCast = playerCanCastSelected();
		
	
		if(canCast){
			mp -= actCost[use];
			
			
			//var wtReduce = floor(actCDMax[use] * ( 100 - (100 - CDR) / 100));
			//show_debug_message(wtReduce)
			//var wtReduceMax = 
			//var wt = clamp(actCDMax[use] - wtReduce, 10, actCDMax[use]);
			
			var wt = ceil( actCDMax[use] * ((100 - CDR) / 100) );
			
			actCD[use] = wt;
			
			var ff = wt;
			if(ff > 30){ ff = 15; }
			//clamp(wt, 10, 30);
			if(ww.activeFrames < ff){
				ww.activeFrames = ff;
			}
			
			characterCast(getSpell(act[use]));
			
			
			
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

if(waitXp > 0){
	waitXp --;
} else {
	if(xpToGain > 0){
		xpToGain --;
		playerXPGain(1);
	}
}



if(pauseClick){
	eatPlayerInput();
	instance_create_depth(0, 0, -1000, objScreenPause);
}


if(debug){
	if(keyboard_check_direct(vk_f1)){ playerXPGain(xpMax); }
	if(keyboard_check_direct(vk_f2)){ 
		ww.msPast = 59;
		ww.secPast = 59;
	}
}