obj_elock_tv.set_code(code);

obj_elock_door_handle.on_click = function() {
  switch (state) {
    case "LOCKED":
      if (get_input() == code) {
        state = "UNLOCKED";
        obj_gb_entrance_door_1.state = "UNLOCKED_1";
        audio_play_sound(Success, 10, false);
      } else { 
				code = string(irandom(9)) + string(irandom(9)) + string(irandom(9));
				obj_elock_tv.set_code(code);
        audio_play_sound(Negative, 10, false)
			}
      break;
    case "UNLOCKED":
      if (obj_gb_entrance_door_1.image_angle == 0) {
        obj_gb_entrance_door_1.open(obj_twardowski);
      } 
      audio_play_sound(Door_open, 10, false);
      obj_camera_manager.camera_pop();
      break;
  }
}