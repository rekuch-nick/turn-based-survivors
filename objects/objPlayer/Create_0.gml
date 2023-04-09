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
chargeGain = 1;

flying = false;

xp = 0;
xpMax = 100;
level = 1;



canLastDiag = true;
isBomb = false;

debug = true;


lastXIn = 1;
lastYIn = 0;


getPlayerInput();

for(var n=1; n<21; n++){
	act[n] = "";
	actIcon[n] = imgBlank;
	actCol[n] = c_white;
	actCost[n] = n;
	actCD[n] = 0;
	actCDMax[n] = 60;
	actForceTime[n] = 15;
	
	
	/*if(choose(true, true, false)){
		act[n] = "Slash";
		actIcon[n] = imgKnife;
		actCost[n] = 1;
		actCD[n] = 0;
		actCDMax[n] = 15;
		actForceTime[n] = 15;
	}*/
}

act[1] = "Slash";
actIcon[1] = imgKnife;
actCol[1] = c_aqua;
actCost[1] = 1;
actCD[1] = 0;
actCDMax[1] = 15;
actForceTime[1] = 15;



act[2] = "Cross Blade";
actIcon[2] = imgCrossBlade;
actCol[2] = c_aqua;
actCost[2] = 10;
actCD[2] = 0;
actCDMax[2] = 60 * 10;
actForceTime[2] = 15;


act[3] = "Knife Throw";
actIcon[3] = imgKnives;
actCol[3] = c_aqua;
actCost[3] = 2;
actCD[3] = 0;
actCDMax[3] = 15;
actForceTime[3] = 15;

act[13] = "Mana Potion";
actIcon[13] = imgPotion;
actCol[13] = c_aqua;
actCost[13] = 0;
actCD[13] = 0;
actCDMax[13] = 60;
actForceTime[13] = 15;



use = 1;