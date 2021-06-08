state = "OFF";
screen = instance_create_layer(x - 43, y - 21, layer, obj_oscilloscope_screen);
btn_on = instance_create_layer(x + 31, y + 14, layer, obj_oscilloscope_btn_on);
btn_on.visible = false;

btn_pause = instance_create_layer(x + 18, y, layer, obj_oscilloscope_btn_pause);
btn_pause.visible = false;

btn_left  = instance_create_layer(x + 18, y - 10, layer, obj_oscilloscope_btn_left);
btn_left.visible = false;

btn_right = instance_create_layer(x + 30, y - 10, layer, obj_oscilloscope_btn_right);
btn_right.visible = false;

btn_plus = instance_create_layer(x + 18, y - 21, layer, obj_oscilloscope_btn_plus);
btn_plus.visible = false;

btn_minus = instance_create_layer(x + 30, y - 21, layer, obj_oscilloscope_btn_minus);
btn_minus.visible = false;

btn_on.on_click = function() {
  switch (state) {
    case "OFF":
      state = "WORKING";
      break;
    case "PAUSE":
    case "WORKING":
      state = "OFF";
      break;
  }
}


btn_pause.on_click = function() {
  switch (state) {
    case "PAUSE":
      state = "WORKING";
      break;
    case "WORKING":
      state = "PAUSE";
      break;
    case "OFF":
      break;
  }
}

btn_minus.on_click = function() {
  if (screen.scale > 0.1) {
    screen.scale -= 0.1;
  }
}

btn_plus.on_click = function() {
  screen.scale += 0.1;
}


btn_left.on_click = function() {
  screen.offset += floor((1 / screen.scale) * 15);
  if (screen.offset > array_length(screen.data)) {
    screen.offset = array_length(screen.data)
  }
}

btn_right.on_click = function() {
  screen.offset -= floor((1 / screen.scale) * 15);
  if (screen.offset < 0) {
    screen.offset = 0;
  }
}