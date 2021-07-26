event_inherited();
state = "OPEN_1";
open = function(by) {
  switch (state) {
    case "CLOSE":
      obj_twentyfour.numbers[0] = 4;
      obj_twentyfour.numbers[1] = 7;
      obj_twentyfour.numbers[2] = 2;
      obj_twentyfour.numbers[3] = 8;
      obj_camera_manager.show_window(obj_twentyfour_window);
      obj_camera_manager.show_window(obj_tutorial_2_window);
      obj_camera_manager.show_dialog(obj_my_mind_is_going_dialog);
      state = "OPEN_1";
      break;
    case "OPEN_1":
      _open_helper(by);
      obj_gertrude.state = "TALK";
      obj_twardowski.playable = false;
      alarm[1] = fps / 4;
      alarm[2] = fps;
      state = "OPEN_2";
      break;
    case "OPEN_2":
      _open_helper(by);
      break;
  }  
}