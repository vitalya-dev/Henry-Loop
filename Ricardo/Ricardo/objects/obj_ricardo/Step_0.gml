switch (body_door.state) {
  case "OPEN":
    instance_activate_object(heart);
    instance_activate_object(leverage);
    break;
  case "CLOSE":
    instance_deactivate_object(heart);
    instance_deactivate_object(leverage);
    break;
 }

switch (leverage.state) {
  case "UP":
    acceptor.state = "CLOSE";
    break;
  case "DOWN":
    acceptor.state = "OPEN";
    break;
 }

switch (acceptor.state) {
  case "OPEN":
    if (acceptor.card_clicked) {
      global.punchcard = self.punchcard;
      global.punchcard_editor_xscale = image_xscale / 2;
      global.punchcard_editor_yscale = image_yscale / 2;
      room_goto(rm_punchcard_editor);
    }
    break;
  case "CLOSE":
    break;
 }

switch (state) {
  case "INIT":
    light.colour = c_yellow;
    light.state = "SOLID";
    if (acceptor.state == "OPEN") {
      obj_phonograph.state = "IDLE";
      state = "ERROR";
      error_code = 5;
    }
    else if (obj_phonograph.state == "IDLE") {
      obj_phonograph.punchcard = self.punchcard;
      obj_phonograph.state = "PLAY";
    }
    else if (obj_phonograph.state == "FINISH") {
      obj_phonograph.state = "IDLE";
      if (array_2d_hash(self.punchcard, 5, 21) == punchcard_correct_hash) {
        self.state = "READY";
      } else {
        self.state = "ERROR";
        error_code = 7;
      }
    }
    break;
  case "READY":
    if (light.colour != c_green or light.state != "SOLID") {
      light.colour = c_green;
      light.state = "SOLID";
    }
    if (acceptor.state == "OPEN") {
      state = "INIT";
    }
    break;
  case "ERROR":
    if (light.state != "FLICKERING") {
      light.colour = c_yellow;
      light.state = "FLICKERING";
    }
    switch (error_code) {
      case 5:
        light.flickering_rythm = ".-.-.-.-.-";
        if (acceptor.state == "CLOSE") {
          state = "INIT";
        }
        break;
      case 7:
        light.flickering_rythm = ".-.-.-.-.-.-.-";
        if (acceptor.state == "OPEN") {
          state = "INIT";
        }
        break;
    }
    break;
}


