event_inherited();
state = "CLOSE";
open = function(by) {
  switch (state) {
    case "CLOSE":
      obj_twentyfour.numbers[0] = 2;
      obj_twentyfour.numbers[1] = 13;
      obj_twentyfour.numbers[2] = 4;
      obj_twentyfour.numbers[3] = 8;
      obj_twentyfour.shuffle_numbers();
      obj_camera_manager.show_window(obj_da_twentyfour_window);
      obj_camera_manager.show_window(obj_da_tutorial_2_window);
      obj_camera_manager.show_dialog(obj_da_my_mind_is_going_dialog);
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