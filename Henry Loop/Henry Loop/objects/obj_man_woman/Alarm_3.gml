image_index = 2;
audio_play_sound(Shot_blow_destruction, 10, false);
audio_play_sound(No, 10, false);
obj_twardowski.dead = true;
obj_twardowski.image_angle = 0;
obj_twardowski.x += 10;
alarm[4] = fps / 2;
