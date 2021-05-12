switch (body_door.state) {
  case "OPEN":
    audio_emitter_gain(heart.audio_emmiter,1);
    break;
  case "CLOSE":
    audio_emitter_gain(heart.audio_emmiter,0);
    break;
 }