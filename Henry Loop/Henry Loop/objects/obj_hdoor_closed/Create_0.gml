event_inherited();
state = "CLOSE";
open = function(by) {
  switch (state) {
    case "CLOSE":
      obj_camera_manager.show_dialog(obj_door_closed_dialog);
      break;
  }  
}