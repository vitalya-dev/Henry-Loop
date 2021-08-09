// Inherit the parent event
event_inherited();

state = "LOCKED";
open = function(by) {
  switch (state) {
    case "LOCKED":
      obj_camera_manager.show_dialog(obj_knock_knock_dialog);
      state = "UNLOCKED_1";
      break;
    case "UNLOCKED_1":
      obj_gertrude.visible = true;
      _open_helper(by);
      state = "UNLOCKED_2";
      break;
    case "UNLOCKED_2":
      _open_helper(by);
      break;
  }  
}