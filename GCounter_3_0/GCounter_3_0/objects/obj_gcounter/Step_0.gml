event_inherited();

switch (state) {
  case "OFF":
    if (audio_is_playing(noise)) {
      audio_stop_sound(noise);
    }
    break;
  case "TUNED":
    if (audio_is_playing(noise)) {
      audio_stop_sound(noise);
    }
    break;
  case "UNTUNED":
    if (!audio_is_playing(noise)) {
      noise = audio_play_sound(snd_noise, 10, false);
    }
    break;	
}


wheel.x = x;
wheel.y = y + 7;

btn_on.x = x + 7;
btn_on.y = y + 20;

show_debug_message(camera_get_view_x(view_camera[0]));
