event_inherited();

state = "WAIT_1";

open = function(by) {
  switch (state) {
    case "WAIT_1":
      obj_camera_manager.show_window("book_4");
      _open_helper(by);
      state = "WAIT_2";
      break;
    case "NORMAL":
      _open_helper(by);
      break;
  }
}

