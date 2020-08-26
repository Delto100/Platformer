/// @function distance_switch();
function distance_switch(){
	var _y = 0;
	
	while !place_meeting(x, y-_y*sign(o_player.gravity_), o_solid){
		_y ++;	
	}
	return _y;
}


/// @function switch_sprite_origin(object, speed);
/// @param {real}  _y
/// @param {index} _sprite
function switch_sprite_origin(_y, _sprite){
	if y == ((y-_y)+y)/2 and o_player.gravity_ > 0 {
		sprite_set_offset(_sprite, sprite_width/2, sprite_height)
	} else if y == ((y+_y)+y)/2 and o_player.gravity_ < 0 {
		sprite_set_offset(_sprite, sprite_width/2, 0)
	}
}
