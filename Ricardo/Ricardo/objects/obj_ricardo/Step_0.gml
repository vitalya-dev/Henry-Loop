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
      var editor = instance_create_layer(window_get_width() / 2, window_get_height() / 2, "Editors", obj_punchcard_editor);
      editor.image_xscale = image_xscale / 2;
      editor.image_yscale = image_yscale / 2;
      editor.x -= editor.sprite_width / 2 - 18 * editor.image_xscale;
      editor.y -= editor.sprite_height / 2;
      instance_deactivate_layer("Instances");
    }
    break;
  case "CLOSE":
    break;
}

switch (state) {
  case "INIT":
    if (light.state != "OFF") {
      light.state = "OFF";
    }
    if (acceptor.state == "OPEN") {
      state = "ERROR";
      error_code = 7;
    } else if (body_door.state == "OPEN") {
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
      else if (error_code == 3)
        light.flickering_rythm = ".-.-.-";
      else if (error_code == 7)
        light.flickering_rythm = ".-.-.-.-.-.-.-";
    }
    switch (error_code) {
      case 3:
        if (body_door.state == "CLOSE")
          state = "INIT";
        break;
      case 7:
        if (acceptor.state == "CLOSE")
          state = "INIT";
        break;
    }
    break;
 }
