if(aly == other.aly){ return; }
if(arrayContains(hits, other)){ return; }


if(buff != noone){
	var procRoll = irandom_range(0, 99);
	if(procRoll < procChance){
		characterGainBuff(other, buff);
	}
}
if(extraBleed){ characterGainBuff(other, getBuff("Bleed") ); }

var dam = pow;
var p = pie;
if(isCrit){ dam *= critMod; }
hurtCharacter(other, dam, "", p, "");
if(other.object_index != objPlayer && push == 0){ other.stun += stunTime; }

if(push > 0){
	//var angle = arctan2(other.y - y, other.x - x);
	//other.xPush = cos(angle) * push;
	//other.yPush = sin(angle) * push;
	other.xPush = xs;
	other.yPush = ys;
}


if(aly == 1 && forceDrop != noone && irandom_range(0, 99) < forceDropChance){
	var s = instance_create_depth(x, y, ww.layerPup, objPup);
	s.sprite_index = forceDrop;
	s.col = forceDropCol;
	if(forceDropHone){ s.hone = true; }
}






hits[hitIndex] = other;
hitIndex ++;
if(array_length(hits) >= hitsMax){
	var e = instance_create_depth(x, y, depth, objEffect);
	e.sprite_index = sprite_index;
	e.col = col;
	e.image_angle = image_angle;
	e.fade = .05;
	instance_destroy();
}


