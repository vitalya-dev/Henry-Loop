state = "EMPTY";

interact = function() {
  switch (state) {
    case "EMPTY":
      obj_camera_manager.show_dialog(obj_to_soon_dialog);
      break;
  }
}