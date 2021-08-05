// Inherit the parent event
event_inherited();

state = "LOCKED";
open = function(by) {
  switch (state) {
    case "LOCKED":
      obj_camera_manager.show_window(obj_gb_elock_window);
      break;
    case "UNLOCKED_1":
      alarm[1] = fps;
      _open_helper(by);
      state = "UNLOCKED_2";
      break;
    case "UNLOCKED_2":
      _open_helper(by);
      break;

  }  
}