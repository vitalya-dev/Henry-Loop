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
