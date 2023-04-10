draw_set_font(fntPlain);

layerPup = -150;
layerMob = -200;
layerEff = -700;

activeFrames = 0;
spawnCharge = 0;

msPast = 0;
secPast = 0;
minPast = 0;
houPast = 0;

defineCircles();

instance_create_depth(0, 0, -1010, objScreenTitle);