function getSpell(n){
	
	var s = {
		nam: n,
		img: imgKnife,
		tiltByInput: false,
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
		col: [c_white],
		simpleEffect: false,
		lineTo: noone,
		lineOff: 0,
		linePass: false,
		lineToCol: [c_white],
		lineToSpeed: 20,
		icon: imgBlank,
		iconCol: c_white,
		mpCost: 1,
		forceTime: 15,
		pcCD: 15,
		startOff: 0,
		projectile: false,
		holdToShoot: false,
		target: "target",
		passive: false,
		melee: false,
		forceDrop: noone,
		forceDropChance: 100,
		forceDropCol: c_white,
		forceDropHone: false,
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
		s.icon = imgKnife;
		s.iconCol = c_aqua;
		s.mpCost = 0;
		s.forceTime = 15;
		s.pcCD = 15;
		s.col = [c_blue, c_aqua];
		s.holdToShoot = true;
		s.melee = true;
	}
	
	
	
	
	if(n == "Knife Throw"){
		s.img = imgKnife;
		s.tiltByInput = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.moveSpeed = 10;
		s.pow = 10;
		s.aimByInput = true;
		s.icon = imgKnives;
		s.iconCol = c_aqua;
		s.mpCost = 2;
		s.forceTime = 15;
		s.pcCD = 15;
		s.col = [c_blue, c_aqua];
		s.holdToShoot = true;
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
		s.icon = imgCrossBlade;
		s.iconCol = c_aqua;
		s.mpCost = 10;
		s.forceTime = 15;
		s.pcCD = 60 * 10;
		s.col = [c_blue, c_aqua];
	}
	
	if(n == "Mana Potion"){
		s.simpleShot = false;
		s.img = imgPotion;
		s.col = c_aqua;
		s.simpleEffect = true;
		s.icon = imgPotion;
		s.iconCol = c_aqua;
		s.mpCost = 0;
		s.forceTime = 15;
		s.pcCD = 60 * 60;
		s.col = [c_blue, c_aqua];
	}
	
	if(n == "Water of Life"){
		s.simpleShot = false;
		s.img = imgPotion;
		s.col = c_white;
		s.simpleEffect = true;
		s.icon = imgPotion;
		s.iconCol = c_white;
		s.mpCost = 0;
		s.forceTime = 15;
		s.pcCD = 60 * 60;
		s.col = [c_white, c_aqua];
	}
	
	if(n == "Fire Bolt"){
		s.img = imgFireSmall;
		s.simpleShot = true;
		s.waitTime = 15;
		s.moveSpeed = 1;
		s.lineToSpeed = 20;
		s.pow = 10;
		s.dis = 60 * 4;
		s.icon = imgFireboltIcon;
		s.iconCol = c_white;
		s.mpCost = 2;
		s.forceTime = 15;
		s.pcCD = 15;
		s.maxTargets = 4;
		s.lineTo = imgFireChip;
		s.startPoint = "target";
		s.lineOff = 10;
		s.holdToShoot = true;
	}
	
	if(n == "Lightning Bolt"){
		s.img = imgLightning;
		s.col = [c_yellow, c_white];
		s.simpleShot = true;
		s.waitTime = 30;
		s.moveSpeed = 1;
		s.lineToSpeed = 30;
		s.dis = 30;
		s.pow = 120;
		s.icon = imgLightning;
		s.iconCol = c_yellow;
		s.mpCost = 5;
		s.forceTime = 30;
		s.pcCD = 60 * 3;
		s.maxTargets = 1;
		s.lineTo = imgLightning;
		s.lineToCol = [c_yellow, c_white];
		s.startPoint = "target";
		s.lineOff = 3;
		s.holdToShoot = false;
	}
	
	if(n == "Ice Shard"){
		s.img = imgCrystalShard;
		s.tiltByInput = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.moveSpeed = 10;
		s.pow = 5;
		s.icon = imgCrystalShard;
		s.iconCol = c_aqua;
		s.mpCost = 1;
		s.forceTime = 10;
		s.pcCD = 10;
		s.col = [c_blue, c_aqua];
		s.startOff = 10;
		s.projectile = true;
		s.holdToShoot = true;
	}
	
	if(n == "Drain"){
		s.img = imgDrainChip;
		s.simpleShot = true;
		s.waitTime = 20;
		s.moveSpeed = 8;
		s.pow = 10;
		s.icon = imgDrainChip;
		s.iconCol = c_white;
		s.mpCost = 3;
		s.forceTime = 15;
		s.pcCD = 20;
		s.col = [c_white];
		s.dis = 150;
		s.projectile = true;
		s.holdToShoot = true;
		s.forceDrop = imgHPGlobSmall;
		s.forceDropChance = 100;
		s.forceDropCol = c_red;
		s.forceDropHone = true;
	}
	
	
	if(n == "Cleave"){
		s.passive = true;
		s.icon = imgCrossBlade;
		s.iconCol = c_red;
	}
	
	
	
	
	
	
	
	
	s.holdToShoot = false;
	
	return s;
}