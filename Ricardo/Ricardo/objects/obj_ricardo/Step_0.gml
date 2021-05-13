switch (body_door.state) {
  case "OPEN":
    audio_emitter_gain(heart.audio_emmiter,1);
    break;
  case "CLOSE":
    audio_emitter_gain(heart.audio_emmiter,0);
    break;
}

switch (state) {
  case "READY":
    eye.light = c_green;
    eye.flickering_rythm = noone;
    break;
  case "ERROR":
    eye.light = c_yellow;
    switch (error_code) {
      case 5:
        if (eye.flickering_rythm == noone) {
          eye.flickering_rythm = ".-.-.-.-.-";
        }
        break;
    }
    break;
 }