event_inherited();
state = "LOCKED";
open = function(by) {
  switch (state) {
    case "LOCKED":
      obj_camera_manager.show_window("entrance_door_3");
      break;
    case "UNLOCKED":
      _open_helper(by);
      break;
  }  
}