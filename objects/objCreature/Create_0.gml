image_xscale = 4; image_yscale = 4;
aly = -1;

col = c_maroon;
face = choose(1, -1);
lastXIn = face;
lastYIn = 0;



thinkCD = 0;
thinkCDMax = 120;
moveSpeed = 2;
moveType = "player";

kill = false;
canLastDiag = false;
deathChips = 20;

armor = 0;
hp = 10; hpMax = 10;
mp = 10; mpMax = 10;
xpOnKill = 4;
moveSpeed = 2;
regenCD = 0;
regenMax = 60;
regenGain = 0;
chargeCD = 0;
chargeMax = 60;
chargeGain = 0;


summoned = false;
summonTime = 60 * 30;
pow = 0;
agi = 0;
tou = 0;
int = 0;
spi = 0;
critPlus = 0;
CDR = 0;
procPlus = 0;

spellRes = 0;


flying = false;

stun = 0;
wait = 0;

xPush = 0;
yPush = 0;


actCD = 0;
actCDMax = 180;
//acts = ["Knife Throw", "", ""];
acts = [""];



isBomb = false;
//isBomb = true; //
bombPow = 10;

buffs = ds_list_create();