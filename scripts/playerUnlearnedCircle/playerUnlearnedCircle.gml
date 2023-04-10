function playerUnlearnedCircle(){
	if(pc.circle[0] == -1){ return 0; }
	if(pc.circle[1] == -1){ return 1; }
	if(pc.circle[2] == -1){ return 2; }
	if(pc.circle[3] == -1){ return 3; }
	if(pc.circle[4] == -1){ return 4; }
	return -1;
}