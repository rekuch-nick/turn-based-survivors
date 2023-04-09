x += xs;
y += ys;
ys += grav;
image_alpha -= fade;
if(flicker){ image_alpha = choose(0, 1); }
if(follow != noone){
	x = follow.x; y = follow.y;
}
cd --;
if(cd < 1){
	instance_destroy();
}