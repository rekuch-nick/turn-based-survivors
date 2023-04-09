function getSpell(n){
	
	var s = {
		nam: n,
		img: imgKnife,
		tiltByInput: true,
		simpleShot: true,
		waitTime: 15,
		followCaster: false,
		moveSpeed: 10,
		pow: 10,
		maxTargets: 1,
		offsetByInput: false,
		aimByInput: false,
	}
	
	
	
	if(n == "Slash"){
		s.img = imgKnife;
		s.tiltByInput = true;
		s.simpleShot = true;
		s.waitTime = 15;
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
	

	
	
	
	
	
	
	
	
	
	
	return s;
}