function getSpell(n){
	
	var s = {
		nam: n,
		img: imgKnife,
		tiltByInput: true,
		simpleShot: true,
		waitTime: 15,
		dis: 2000,
		followCaster: false,
		moveSpeed: 10,
		pow: 10,
		maxTargets: 1,
		offsetByInput: false,
		aimByInput: false,
		multiShot: 1,
		rot: 0,
		multiMethod: "rad",
		multiRad: 100,
		startPoint: "caster",
		drift: false,
		col: c_white,
		simpleEffect: false,
	}
	
	
	
	if(n == "Slash"){
		s.img = imgKnife;
		s.tiltByInput = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.dis = 15;
		s.followCaster = true;
		s.moveSpeed = 1;
		s.pow = 10;
		s.maxTargets = 4;
		s.offsetByInput = true;
	}
	
	
	if(n == "Knife Throw"){
		s.img = imgKnife;
		s.tiltByInput = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.moveSpeed = 10;
		s.pow = 10;
		s.aimByInput = true;
	}
	
	if(n == "Cross Blade"){
		s.img = imgKnife;
		s.simpleShot = true;
		s.waitTime = 15;
		s.moveSpeed = 0;
		s.pow = 10;
		s.multiShot = 10;
		s.rot = -25;
		s.multiMethod = "rad";
		s.multiRad = 100;
		s.startPoint = "mouse";
		s.drift = true;
		s.dis = 120;
	}
	
	if(n == "Mana Potion"){
		s.simpleShot = false;
		s.img = imgPotion;
		s.col = c_aqua;
		s.simpleEffect = true;
	}
	

	
	
	
	
	
	
	
	
	
	
	return s;
}