obj_elock_tv.set_code(code);

obj_elock_door_handle.on_click = function() {
  switch (state) {
    case "LOCKED":
      if (get_input() == code) {
        state = "UNLOCKED";
        obj_entrance_door_3.state = "UNLOCKED";
        alarm[1] = fps;
      } else {
				code = string(irandom(9)) + string(irandom(9)) + string(irandom(9));
				obj_elock_tv.set_code(code);
			}
      break;
  }
}