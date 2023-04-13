function playerMove(xshift, yshift){
	
	with(objScrollable){
		if(object_index == objPlayer){ continue; }
		x += -xshift;
		y += -yshift;
		
		if(object_index == objPit){
			if(x < -room_width * 3){ x = room_width * 4; }
			if(x > room_width * 4){ x = -room_width * 3; }
			
			if(y < -room_height * 2){ y = room_height * 3; }
			if(y > room_height * 3){ y = -room_height * 2; }
		}
	}

}