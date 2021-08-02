current_camera = next_camera_copy();
switch (current_camera.state) {
  case "SHOW_WINDOW":
    current_camera.window.on_show();
    break;
}