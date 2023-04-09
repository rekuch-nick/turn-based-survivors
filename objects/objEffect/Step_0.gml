x += xs;
y += ys;
ys += grav;
image_alpha -= fade;

cd --;
if(cd < 1){
	instance_destroy();
}