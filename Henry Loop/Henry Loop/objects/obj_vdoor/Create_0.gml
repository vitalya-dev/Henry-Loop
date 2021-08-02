event_inherited();
open = function(by) {
  _open_helper(by)
}

_open_helper = function(by) {
  if (image_angle == 0) {
    image_angle = 90 * sign(x - by.x);
  } else {
    image_angle = 0;
  }
}