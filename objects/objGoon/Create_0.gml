event_inherited();

hp = 10;
hpMax = 10;

moveSpeed = 2;

isBomb = true;
col = c_maroon;


if(irandom_range(1, 3) == 1){
	isBomb = false;
	col = c_orange;
	
	acts = ["Knife Throw", "", ""];
	actCDMax = 180;
	actCD = actCDMax;
	
	hp = 20; hpMax = hp;
	
}




