switch (state) {
  case "ERROR":
    break;
  case "READY":
    break;
  case "INIT":
    if (obj_card.sum() != 3086) {
      state = "ERROR";
      audio_play_sound(Negative, 10, false);
    } else {
      state = "READY";
      audio_play_sound(Startup, 10, false);
      alarm[1] = fps;
    }
    break;
}