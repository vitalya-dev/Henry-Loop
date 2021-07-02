event_inherited();
state = "CLOSE";
open = function(by) {
  switch (state) {
    case "CLOSE":
      obj_camera_manager.show_dialog(obj_knock_knock_dialog);
      state = "OPEN_0";
      break;
    case "OPEN_0":
      obj_gertrude.visible = true;
      _open_helper(by);
      state = "OPEN_1";
      break;
    case "OPEN_1":
      _open_helper(by);
      break;
  }  
}