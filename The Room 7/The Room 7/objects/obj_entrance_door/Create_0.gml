event_inherited();
state = "CLOSE";
open = function(by) {
  switch (state) {
    case "CLOSE":
      obj_camera_manager.show_dialog("knock knock");
      state = "WAIT";
      break;
    case "WAIT":
      if (obj_camera_manager.current_camera.state = "FOLLOW_PLAYER") {
        state = "WAIT_FOR_GERTRUDE";
      }
      break;
    case "WAIT_FOR_GERTRUDE":
      obj_gertrude.visible = true;
      _open_helper(by);
      state = "OPEN";
      break;
    case "OPEN":
      _open_helper(by);
      break;
  }  
}