var x_move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var y_move = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (x_move != 0 || y_move != 0) {
  sprite_index = spr_twardowski_walk_strip2;
  image_angle = point_direction(0, 0, x_move, y_move);
  if (place_empty(x, y, obj_solid)) {
    x += x_move * spd;
    y += y_move * spd;
  }
} else {
  sprite_index = spr_twardowski_idle;
}

suitcase.image_angle = image_angle;
suitcase.x = x + image_angle_left().x * 8; 
suitcase.y = y + image_angle_left().y * 8; 

var half_camera_height = camera_get_view_height(view_camera[0]) / 2;
var half_camera_width = camera_get_view_width(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x - half_camera_width, y - half_camera_height);