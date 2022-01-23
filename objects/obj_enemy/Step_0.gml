

if ( instance_exists(obj_player) ) {
	
	move_towards_point(obj_player.x, obj_player.y, spd);
	
}

// set image angle to direction of image
image_angle = direction;


// when the hp gets to 0 destroy the enemy
if ( hp <= 0 ) { // i just can't do the single line/no braces. just feels weird.
	
	instance_destroy();
	
}