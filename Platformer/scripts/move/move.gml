//Move and collision with o_solid
function move(){
	
	//move right-left
	if place_meeting(x+hspeed_, y, o_solid) {
		while !place_meeting(x+sign(hspeed_), y, o_solid){
			x += sign(hspeed_);	
		}
		hspeed_ = 0;
	}
	x += hspeed_;
	
	//move up-down
	if place_meeting(x, y+vspeed_, o_solid) {
		while !place_meeting(x, y+sign(vspeed_), o_solid){
			y += sign(vspeed_);	
		}
		vspeed_ = 0;
	}
	y += vspeed_;
}

