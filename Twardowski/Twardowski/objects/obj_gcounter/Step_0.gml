switch (state) {
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

wheel.x = x;
wheel.y = y + 7;
wheel.depth = depth - 1;
