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
		offsetFromTarget: 0,
		rot: 0,
		multiMethod: "rad",
		multiRad: 100,
		startPoint: "caster",
		drift: false,
		col: [c_white],
		simpleEffect: false,
		isTeleport: false,
		lineTo: noone,
		lineOff: 0,
		linePass: false,
		lineToCol: [c_white],
		lineToSpeed: 20,
		lineChain: 0,
		icon: imgBlank,
		iconCol: c_white,
		mpCost: 1,
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
		stunTime: 10,
		pointAtMouse: false,
		angleByCaster: false,
		teleType: "chase",
		teleRange: 200,
		teleStrike: false,
		stopShots: false,
		stoppableShot: true,
		pie: 0,
		isSummon: false,
		multiSummon: 1,
		summonKind: noone,
		summonMove: "foe",
		summonTime: 1800,
		buff: noone,
		procChance: 50,
		push: 0,
		critPlus: 0,
		critMod: 2,
		chainRange: 400,
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
		s.pcCD = 15;
		s.col = [c_blue, c_aqua];
		s.holdToShoot = true;
		s.melee = true;
	}
	
	if(n == "Venom Strike"){
		s.img = imgKnife;
		s.col = [c_green, c_lime];
		s.tiltByInput = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.dis = 15;
		s.followCaster = true;
		s.moveSpeed = 1;
		s.pow = 5;
		s.maxTargets = 1;
		s.offsetByInput = true;
		s.icon = imgKnife;
		s.iconCol = c_green;
		s.mpCost = 1;
		s.pcCD = 15;
		s.holdToShoot = true;
		s.melee = true;
		s.procChance = 100;
		s.buff = getBuff("Poison");
	}
	
	if(n == "Bite"){
		s.img = imgWolfBite;
		s.col = [c_white, c_red];
		//s.tiltByInput = true;
		s.angleByCaster = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.dis = 15;
		s.followCaster = true;
		s.moveSpeed = 1;
		s.pow = 2;
		s.maxTargets = 2;
		s.offsetByInput = true;
		s.icon = imgChip;
		s.iconCol = c_white;
		s.mpCost = 0;
		s.pcCD = 15;
		s.holdToShoot = true;
		s.melee = true;
	}
	
	if(n == "Poison Bite"){
		s.img = imgWolfBite;
		s.col = [c_white, c_red];
		//s.tiltByInput = true;
		s.angleByCaster = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.dis = 15;
		s.followCaster = true;
		s.moveSpeed = 1;
		s.pow = 2;
		s.maxTargets = 2;
		s.offsetByInput = true;
		s.icon = imgChip;
		s.iconCol = c_white;
		s.mpCost = 0;
		s.pcCD = 15;
		s.holdToShoot = true;
		s.melee = true;
		s.buff = getBuff("Poison");
		s.procChance = 40;
	}
	
	
	if(n == "Web"){
		s.img = imgWeb;
		s.col = [c_white, c_grey];
		s.simpleShot = true;
		s.waitTime = 15;
		s.dis = 15;
		s.followCaster = true;
		s.moveSpeed = 1;
		s.pow = 2;
		s.maxTargets = 2;
		s.offsetByInput = true;
		s.icon = imgWeb;
		s.iconCol = c_white;
		s.mpCost = 0;
		s.pcCD = 15;
		s.holdToShoot = true;
		s.buff = getBuff("Web");
	}
	
	//Bone Spear
	if(n == "Bone Spear"){
		s.img = imgBoneSpear;
		s.simpleShot = true;
		s.waitTime = 15;
		s.dis = 15;
		s.followCaster = true;
		s.moveSpeed = 1;
		s.pow = 10;
		s.maxTargets = 8;
		s.icon = imgBoneSpearIcon;
		s.iconCol = c_white;
		s.mpCost = 1;
		s.pcCD = 15;
		s.col = [c_white, c_dkgray];
		s.holdToShoot = true;
		s.melee = true;
		s.pointAtMouse = true;
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
		s.pcCD = 15;
		s.col = [c_blue, c_aqua];
		s.holdToShoot = true;
	}
	
	if(n == "Wave"){
		s.img = imgWave;
		s.col = [c_blue, c_aqua];
		s.simpleShot = true;
		s.waitTime = 20;
		s.moveSpeed = 10;
		s.pow = 5;
		s.maxTargets = 20;
		s.aimByInput = true;
		s.icon = imgWave;
		s.iconCol = c_aqua;
		s.mpCost = 1;
		s.pcCD = 20;
		s.holdToShoot = true;
		s.angleByCaster = true;
	}
	
	if(n == "Gust"){
		s.img = imgGust;
		s.col = [c_dkgrey, c_grey];
		s.simpleShot = true;
		s.waitTime = 20;
		s.moveSpeed = 10;
		s.pow = 4;
		s.push = 12;
		s.maxTargets = 20;
		s.aimByInput = true;
		s.icon = imgGust;
		s.iconCol = c_gray;
		s.mpCost = 1;
		s.pcCD = 20;
		s.holdToShoot = true;
		s.angleByCaster = true;
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
		s.pcCD = 60 * 60;
		s.col = [c_white, c_aqua];
	}
	
	if(n == "Haste"){
		s.simpleShot = false;
		s.img = imgClock;
		s.col = c_red;
		s.simpleEffect = true;
		s.icon = imgClock;
		s.iconCol = c_red;
		s.mpCost = 4;
		s.pcCD = 60 * 60;
		s.col = [c_white, c_red];
		s.buff = getBuff("Haste");
	}
	
	if(n == "Shadow Step"){
		s.simpleShot = false;
		s.isTeleport = true;
		
		s.img = imgPortCircle;
		s.col = [c_purple, c_fuchsia];

		s.icon = imgPortCircle;
		s.iconCol = c_purple;
		s.mpCost = 4;
		s.pcCD = 60 * 5;
		
	}
	
	
	if(n == "After Slash"){
		s.img = imgKnife;
		s.col = [c_blue, c_navy];
		s.tiltByInput = true;
		s.waitTime = 15;
		s.dis = 15;
		
		s.moveSpeed = 1;
		s.pow = 10;
		s.maxTargets = 4;
		s.offsetByInput = true;
		
		s.mpCost = 10;
		s.pcCD = 60 * 5;
		
		s.holdToShoot = true;
		s.melee = true;
		
		s.simpleShot = false;
		s.teleStrike = true;
		
		s.multiShot = 12;
		s.rot = -25;
		s.multiMethod = "rad";
		s.multiRad = 40;
		s.drift = true;
		s.dis = 120;
		
		s.icon = imgCrossBlade;
		s.iconCol = c_navy;
		s.teleType = "run";
		
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
		s.pcCD = 15;
		s.maxTargets = 4;
		s.lineTo = imgFireChip;
		s.startPoint = "target";
		s.lineOff = 10;
		s.holdToShoot = true;
	}
	
	if(n == "Razor Leaf"){
		s.img = imgLeaf;
		s.col = [c_green, c_green];
		s.offsetFromTarget = 100;
		s.simpleShot = true;
		s.multiShot = 10;
		s.waitTime = 30;
		s.moveSpeed = 8;
		s.pow = 2;
		s.icon = imgLeaf;
		s.iconCol = c_green;
		s.mpCost = 2;
		s.pcCD = 15;
		s.holdToShoot = true;
		s.projectile = true;
		s.multiRad = 40;
	}
	
	if(n == "Lightning Bolt"){
		s.img = imgLightning;
		s.col = [c_yellow, c_white];
		s.simpleShot = true;
		s.waitTime = 30;
		s.moveSpeed = 1;
		s.lineToSpeed = 10;
		s.dis = 30;
		s.pow = 120;
		s.icon = imgLightning;
		s.iconCol = c_yellow;
		s.mpCost = 5;
		s.pcCD = 60 * 3;
		//s.mpCost = 0; s.pcCD = 20; ///////////
		s.maxTargets = 1;
		s.lineTo = imgChip;
		s.lineToCol = [c_yellow, c_white];
		s.startPoint = "target";
		s.lineOff = 3;
		s.holdToShoot = false;
		s.lineChain = 2;
		s.multiMethod = "";
		s.chainRange = 300;
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
		s.pcCD = 10;
		s.col = [c_blue, c_aqua];
		s.startOff = 10;
		s.projectile = true;
		s.holdToShoot = true;
	}
	
	if(n == "Spark"){
		s.img = imgChip;
		s.col = [c_yellow, c_white];
		s.tiltByInput = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.moveSpeed = 10;
		s.pow = 10;
		s.icon = imgChip;
		s.iconCol = c_yellow;
		s.mpCost = 1;
		s.pcCD = 10;
		s.startOff = 10;
		s.projectile = true;
		s.holdToShoot = true;
	}
	
	if(n == "Shoot"){
		s.img = imgArrow;
		s.col = [c_orange, c_white];
		s.pointAtMouse = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.moveSpeed = 10;
		s.pow = 10;
		s.icon = imgBow;
		s.iconCol = c_orange;
		s.mpCost = 1;
		s.pcCD = 20;
		s.projectile = true;
		s.holdToShoot = true;
		s.critPlus = 10;
		s.critMod = 3;
	}
	
	if(n == "Wild Spell"){
		
		s.waitTime = 15;
		
		s.icon = imgLeaf;
		s.iconCol = c_red;
		
		s.mpCost = 2;
		s.pcCD = 20;
		
		
		s.holdToShoot = true;
	}
	
	if(n == "Crush"){
		s.img = imgStone;
		var cc = #7F4E0C;
		s.col = [cc];
		s.tiltByInput = true;
		s.simpleShot = true;
		s.waitTime = 15;
		s.moveSpeed = 8;
		s.pow = 10;
		s.icon = imgStone;
		s.iconCol = #7F4E0C;
		s.mpCost = 2;
		s.pcCD = 10;
		s.startOff = 10;
		s.projectile = true;
		s.holdToShoot = true;
		s.dis = 250;
		s.stopShots = true;
	}
	
	if(n == "Drain"){
		s.img = imgDrainChip;
		s.simpleShot = true;
		s.waitTime = 20;
		s.moveSpeed = 8;
		s.pow = 7;
		s.icon = imgDrainChip;
		s.iconCol = c_white;
		s.mpCost = 2;
		s.pcCD = 20;
		s.col = [c_white];
		//s.dis = 250;
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
	
	if(n == "Burning Hand"){
		s.passive = true;
		s.icon = imgHand;
		s.iconCol = c_red;
	}
	
	
	if(n == "Wolfcall"){
		s.simpleShot = false;
		
		s.img = imgWolf;
		s.col = c_white;
		
		s.icon = imgWolf;
		s.iconCol = c_white;
		s.mpCost = 1;
		s.pcCD = 60 * 5;
		s.col = [c_white, c_red];
		
		s.isSummon = true;
		s.multiSummon = 1;
		s.summonKind = objPet;
		s.summonMove = "foe";
		s.summonTime = 30 * 60;
	}
	
	if(n == "Animate Skeleton"){
		s.simpleShot = false;
		
		s.img = imgHand;
		s.col = c_white;
		
		s.icon = imgHand;
		s.iconCol = c_white;
		s.mpCost = 6;
		s.pcCD = 60 * 5;
		s.col = [c_white, c_red];
		
		s.isSummon = true;
		s.multiSummon = 1;
		s.summonKind = objSkelli;
		s.summonMove = "foe";
		s.summonTime = 60 * 60;
	}
	
	if(n == "Spider Plague"){
		s.simpleShot = false;
		
		s.img = imgSpider;
		s.col = c_white;
		
		s.icon = imgSpider;
		s.iconCol = c_fuchsia;
		s.mpCost = 4;
		s.pcCD = 60 * 5;
		s.col = [c_white, c_fuchsia];
		
		s.isSummon = true;
		s.multiSummon = 3;
		s.summonKind = objSpider;
		s.summonMove = "foe";
		s.summonTime = 30 * 60;
	}
	
	
	
	
	
	
	s.holdToShoot = false;
	s.holdToShoot = true;
	
	return s;
}