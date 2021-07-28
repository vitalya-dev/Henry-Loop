if (sprite_index == spr_twardowski_walk_strip2 and !audio_is_playing(Footsteps)) {
  audio_play_sound(Footsteps, 10, false);  
}

if (sprite_index == spr_twardowski_idle and audio_is_playing(Footsteps)) {
  audio_stop_sound(Footsteps);  
}

if (sprite_index == spr_twardowski_dead and audio_is_playing(Footsteps)) {
  audio_stop_sound(Footsteps);  
}