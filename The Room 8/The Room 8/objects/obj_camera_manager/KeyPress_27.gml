switch (current_camera.state) {
  case "SHOW_WINDOW":
    camera_pop();
    break;
  case "SHOW_CREDITS":
    game_end();
    break;
}


