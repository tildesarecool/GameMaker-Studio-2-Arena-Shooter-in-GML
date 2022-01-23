

if ( instance_exists(obj_player) ) {
	
	move_towards_point(obj_player.x, obj_player.y, spd);
	
}

// set image angle to direction of image
image_angle = direction;


// when the hp gets to 0 destroy the enemy
if ( hp <= 0 ) { 
	
	with ( obj_score ) { // i just can't do the single line/no braces. just feels weird.
		thescore = thescore + 5;
	}
	
	//audio_sound_set_track_position(snd_death,0.3); // just trying things. not sure i'm using this right
	audio_sound_pitch(snd_death, random_range(0.8, 1.2) );
	audio_play_sound(snd_death,0,false);
	
	instance_destroy();
	
}

// death sound (snd_death ogg file)

