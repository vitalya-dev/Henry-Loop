switch (current_camera.state) {
  case "FOLLOW_PLAYER":
    var half_camera_height = camera_get_view_height(view_camera[0]) / 2;
    var half_camera_width = camera_get_view_width(view_camera[0]) / 2;
    current_camera.x = twardowski.x - half_camera_width;
    current_camera.y = twardowski.y - half_camera_height;
 };
 
camera_set_view_size(view_camera[0], current_camera.w, current_camera.h);
camera_set_view_pos(view_camera[0], current_camera.x, current_camera.y);