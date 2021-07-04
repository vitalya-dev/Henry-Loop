state = "EMPTY";

interact = function() {
  switch (state) {
    case "EMPTY":
      obj_camera_manager.show_dialog(obj_to_soon_dialog);
      break;
    case "GERTRUDE":
      instance_deactivate_object(obj_twardowski);
      instance_deactivate_object(obj_suitcase_small);
      audio_stop_all();
      alarm[1] = fps;
      break;
  }
}