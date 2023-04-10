event_inherited();
image_xscale = 4; image_yscale = 4;
depth = -210;
aly = 1;

col = c_white;

moveSpeed = 4;
hp = 100;
hpMax = 100;
regenCD = 0;
regenMax = 180;
regenGain = 1;
mp = 25;
mpMax = 25;
chargeCD = 0;
chargeMax = 60;
chargeGain = 10; /////

flying = false;

xp = 0;
xpMax = 100;
level = 1;
xpToGain = 0;


canLastDiag = true;
isBomb = false;

debug = true;


lastXIn = 1;
lastYIn = 0;


getPlayerInput();

for(var n=1; n<121; n++){
	act[n] = "";
	actIcon[n] = imgBlank;
	actCol[n] = c_white;
	actCost[n] = n;
	actCD[n] = 0;
	actCDMax[n] = 60;
	actForceTime[n] = 15;
	
	
	
	passive[n] = "";
	
	
}

playerGainSpell("Slash");
//playerGainSpell("Fire Bolt");
//act[2] = "Cross Blade";
//act[3] = "Knife Throw";
//act[13] = "Mana Potion";


for(var i=0; i<5; i++){
	circle[i] = -1; 
	circleLevel[i] = 0;
}
//circle[0] = 0; circle[1] = 1; circle[2] = 2; circle[3] = 3; circle[4] = 4;


use = 1;