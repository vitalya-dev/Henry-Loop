function scr_camera_follow(obj) {
  var half_camera_height = camera_get_view_height(view_camera[0]) / 2;
  var half_camera_width = camera_get_view_width(view_camera[0]) / 2;
  camera_set_view_pos(view_camera[0], obj.x - half_camera_width, obj.y - half_camera_height);
}