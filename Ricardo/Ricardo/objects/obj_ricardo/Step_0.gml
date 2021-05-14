switch (body_door.state) {
  case "OPEN":
    audio_emitter_gain(heart.audio_emmiter,1);
    break;
  case "CLOSE":
    audio_emitter_gain(heart.audio_emmiter,0);
    break;
}


switch (state) {
  case "INIT":
    if (light.state != "OFF") {
      light.state = "OFF";
    }
    if (body_door.state == "OPEN") {
      state = "ERROR";
      error_code = 3;
    } else {
      state = "READY";
    }
    break;
  case "READY":
    if (light.state != "SOLID") {
      light.colour = c_green;
      light.state = "SOLID";
    }
    if (body_door.state == "OPEN")
      state = "INIT";
    break;
  case "ERROR":
    if (light.state != "FLICKERING") {
      light.colour = c_yellow;
      light.state = "FLICKERING";
      if (error_code == 5)
	      light.flickering_rythm = ".-.-.-.-.-";
      if (error_code == 3)
        light.flickering_rythm = ".-.-.-";
    }
    switch (error_code) {
      case 3:
        if (body_door.state == "CLOSE")
          state = "INIT";
        break;
    }
    break;
 }
