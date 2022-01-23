// keyboard controls (video one)

if (keyboard_check(vk_right) ) {
	x += 4;
}

if (keyboard_check(vk_left) ) {
	x -= 4;
}

if (keyboard_check(vk_up) ) {
	y -= 4;
}

if (keyboard_check(vk_down) ) {
	y += 4;
}

// adjust image angle to point towards mouse
image_angle = point_direction(x, y, mouse_x, mouse_y );

// while left mb held, count down from 6 and when less then one fire off a 
// bullet spawn
if (mouse_check_button( mb_left )) && (cooldown < 1) {
	instance_create_layer(x, y, "BulletsLayer", obj_bullet );
	// cool is the fire rate for the bullet coming out of the ship
	cooldown = 6; // changed this to higher number in order to notice the difference in fire rate
}

cooldown = cooldown - 1;

