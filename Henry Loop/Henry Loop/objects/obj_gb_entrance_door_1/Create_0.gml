// Inherit the parent event
event_inherited();

state = "LOCKED";
open = function(by) {
  switch (state) {
    case "LOCKED":
      obj_camera_manager.show_window(obj_gb_elock_window);
      break;
  }  
}