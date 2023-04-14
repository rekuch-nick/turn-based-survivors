event_inherited();

hp = 1;
hpMax = 1;

moveSpeed = irandom_range(1, 3);

isBomb = true;
bombPow = 6;

col = c_maroon;



if(irandom_range(1, 12) == 1){
	isBomb = false;
	col = c_orange;
	
	acts = ["Spark"];
	actCDMax = 60 * 7;
	actCD = actCDMax;	
}

if(irandom_range(1, 6) == 1){
	isBomb = false;
	col = c_green;
	
	acts = ["Venom Strike"];
	actCDMax = 60 * 4;
	actCD = actCDMax;	
}


if(irandom_range(1, 120) == 1){
	isBomb = false;
	col = c_lime;
	
	acts = ["Wolfcall"];
	actCDMax = 60 * 7;
	actCD = actCDMax;	
}