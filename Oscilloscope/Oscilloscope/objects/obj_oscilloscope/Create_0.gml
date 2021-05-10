state = "OFF"

screen = child_instance_create(3, 4, obj_oscilloscope_screen);
on_btn = child_instance_create(77, 39, obj_oscilloscope_btn_on);
pause_btn = child_instance_create(64, 25, obj_oscilloscope_btn_pause);
left_btn = child_instance_create(64, 15, obj_oscilloscope_btn_left);
right_btn = child_instance_create(76, 15, obj_oscilloscope_btn_right);
plus_btn = child_instance_create(64, 4, obj_oscilloscope_btn_plus);
minus_btn = child_instance_create(76, 4, obj_oscilloscope_btn_minus);


plus_btn.on_click = function() {
  screen.scale += 0.1;
}

left_btn.on_click = function() {
  screen.offset += floor((1 / screen.scale) * 15);
  if (screen.offset > array_length(screen.data)) {
    screen.offset = array_length(screen.data)
  }
  
}

right_btn.on_click = function() {
  screen.offset -= floor((1 / screen.scale) * 15);
  if (screen.offset < 0) {
    screen.offset = 0;
  }
  
}

minus_btn.on_click = function() {
  if (screen.scale > 0.1) {
    screen.scale -= 0.1;
  }
}

on_btn.on_click = function() {
  switch (state) {
    case "OFF":
      state = "WORKING";
      screen.state = "ON";
      break;
    case "PAUSE":
    case "WORKING":
      state = "OFF";
      screen.state = "OFF";
      break;
  }
}


pause_btn.on_click = function() {
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