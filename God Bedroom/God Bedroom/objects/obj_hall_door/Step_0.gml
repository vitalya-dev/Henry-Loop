switch (state) {
  case "WAIT_2":
    if (obj_camera_manager.current_camera.state = "FOLLOW_PLAYER") {
      obj_man_woman.visible = true;
      obj_twardowski.playable = false;
      state = "NORMAL";
      alarm[1] = fps; 
    }
    break;
}