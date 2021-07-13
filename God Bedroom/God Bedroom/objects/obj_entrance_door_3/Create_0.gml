event_inherited();
state = "LOCKED_1";
open = function(by) {
  switch (state) {
    case "LOCKED_1":
      obj_camera_manager.show_window("entrance_door_3");
      obj_camera_manager.show_window("book_2");
      state = "LOCKED_2";
      break;
    case "LOCKED_2":
      obj_camera_manager.show_window("entrance_door_3");
      break;
    case "UNLOCKED_1":
      alarm[1] = fps;
      _open_helper(by);
      state = "UNLOCKED_2";
      break;
     case "UNLOCKED_2":
      _open_helper(by);
      break;
  }  
}