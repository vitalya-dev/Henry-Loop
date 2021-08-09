switch (state) {
  case "INIT":
    if (progress < 1) {
      progress += 1 / (fps);
      if (not audio_is_playing(Count)) {
        audio_play_sound(Count, 10, false);
      }
    } else if (alarm[0] == -1) {
      progress = 1;
      alarm[0] = fps;
      audio_stop_sound(Count);
    }
    break;
}
 