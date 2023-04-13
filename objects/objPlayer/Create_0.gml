event_inherited();
randomize();
image_xscale = 4; image_yscale = 4;
depth = -210;
XX = x; YY = y;
aly = 1;

col = c_white;

moveSpeed = 4;
hp = 100; mp = 25;
regenCD = 0; chargeCD = 0;

flying = false;

waitXp = 0;
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

//for(var i=0; i<5; i++){ circle[i] = i; circleLevel[i] = 1; level ++; }




//assign a # that reps a stat to each circle
nums = ds_list_create();
ds_list_add(nums, 0); ds_list_add(nums, 1); ds_list_add(nums, 2); ds_list_add(nums, 3); ds_list_add(nums, 4);
for(var i=0; i<5; i++){
	var r = irandom_range(0, ds_list_size(nums) - 1);
	cStat[i] = ds_list_find_value(nums, r);
	if(i == 0){ powerID = ds_list_find_value(nums, r); }
	if(i == 1){ agilityID = ds_list_find_value(nums, r); }
	if(i == 2){ toughnessID = ds_list_find_value(nums, r); }
	if(i == 3){ intellectID = ds_list_find_value(nums, r); }
	if(i == 4){ spiritID = ds_list_find_value(nums, r); }
	ds_list_delete(nums, r);
}
ds_list_destroy(nums);


playerSetStats();



use = 1;