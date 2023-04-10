event_inherited();

hp = 10;
hpMax = 10;

moveSpeed = 2;

isBomb = true;
col = c_maroon;


if(irandom_range(1, 6) == 1){
	isBomb = false;
	col = c_orange;
	
	acts = ["Knife Throw", "", ""];
	actCDMax = 180;
	actCD = actCDMax;
	
	hp = 20; hpMax = hp;
	
}

if(irandom_range(1, 20) == 1){
	isBomb = false;
	col = c_aqua;
	
	acts = ["Ice Shard"];
	actCDMax = 60 * 7;
	actCD = actCDMax;
	
	hp = 15; hpMax = hp;
	
}


/*
if(irandom_range(1, 20) == 1){
	isBomb = false;
	col = c_blue;
	
	acts = ["Cross Blade", "", ""];
	actCDMax = 180;
	actCD = actCDMax;
	
	hp = 30; hpMax = hp;
	
}


if(irandom_range(1, 30) == 1){
	isBomb = false;
	col = c_fuchsia;
	
	acts = ["Fire Bolt"];
	actCDMax = 60 * 10;
	actCD = actCDMax;
	
	hp = 30; hpMax = hp;
	
}

*/




