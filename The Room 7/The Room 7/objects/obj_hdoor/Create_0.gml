event_inherited();
open = function(by) {
  if (image_angle == 0) {
    image_angle = 90 * sign(by.y - y);
  } else {
    image_angle = 0;
  }
}