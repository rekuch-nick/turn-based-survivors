function getBuff(n){
	
	
	
	var b = { 
		nam: n,
		icon: imgBlank, 
		iconCol: c_white, 
		effect: noone, 
		effectCol: c_white, 
		effectAlpha: .5, 
		dur: 60 * 30, 
		durMax: 60 * 30, 
		stacks: 1,
		stacksMax: 1,
		pow: 0, 
		dot: false, 
	}
	
	if(n == "Poison"){
		b.icon = imgBubs;
		b.iconCol = c_green;
		b.effect = imgBubs;
		b.effectCol = c_green;
		b.stacksMax = 10;
		b.pow = 1;
		b.dot = true;
	}
	
	if(n == "Bleed"){
		b.icon = imgDrop;
		b.iconCol = c_red;
		b.effect = imgDrop;
		b.effectAlpha = .7;
		b.effectCol = c_red;
		b.stacksMax = 10;
		b.pow = 1;
		b.dot = true;
		b.dur = 60 * 10;
		b.durMax = 60 * 10;
	}
	
	
	if(n == "Haste"){
		b.icon = imgClock;
		b.iconCol = c_red;
		b.effect = imgClock;
		b.effectCol = c_red;
		b.stacksMax = 1;
		b.pow = 4;
		b.dot = false;
	}
	
	if(n == "Web"){
		b.icon = imgWeb;
		b.iconCol = c_white;
		b.effect = imgWeb;
		b.effectCol = c_white;
		b.stacksMax = 1;
		b.pow = 4;
		b.dot = false;
	}
	
	
	return b;
}