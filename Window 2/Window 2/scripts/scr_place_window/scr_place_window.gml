// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_place_window() {
  camera_x = camera_get_view_x(view_camera[0]);
  camera_y = camera_get_view_y(view_camera[0]);
  camera_width  = camera_get_view_width(view_camera[0]);
  camera_height = camera_get_view_height(view_camera[0]);
  instance_create_layer(camera_x, camera_y, layer, obj_simple_window);
}