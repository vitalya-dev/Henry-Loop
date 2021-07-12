if (obj_camera_manager.current_camera.state != "FOLLOW_PLAYER") {
  sprite_index = spr_twardowski_idle;
  return;
}

if (not playable) {
  sprite_index = spr_twardowski_idle;
  return;
}

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