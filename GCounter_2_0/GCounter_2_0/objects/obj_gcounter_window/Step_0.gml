event_inherited();


switch (state) {
  case "OFF":
    if (audio_is_playing(snd_noise)) {
      audio_stop_sound(snd_noise);
    }
    break;
  case "TUNED":
    if (audio_is_playing(snd_noise)) {
      audio_stop_sound(snd_noise);
    }
    break;
  case "UNTUNED":
    if (!audio_is_playing(snd_noise)) {
      audio_play_sound(snd_noise, 10, false);
    }
    break;	
}
