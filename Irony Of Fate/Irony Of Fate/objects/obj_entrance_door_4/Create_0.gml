event_inherited();
state = "CLOSE";
open = function(by) {
  switch (state) {
    case "CLOSE":
      obj_twentyfour.numbers[0] = 4;
      obj_twentyfour.numbers[1] = 7;
      obj_twentyfour.numbers[2] = 2;
      obj_twentyfour.numbers[3] = 8;
      obj_camera_manager.show_window(obj_twentyfour_window);
      obj_camera_manager.show_dialog(obj_my_mind_is_flowing_dialog);
      state = "OPEN";
      break;
    case "OPEN":
      _open_helper(by);
      break;
  }  
}