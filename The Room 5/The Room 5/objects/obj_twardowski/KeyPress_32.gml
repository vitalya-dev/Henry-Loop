if (place_meeting(x, y, obj_hdoor)) {
  var door = instance_place(x, y, obj_hdoor);
  if (door.image_angle == 0) {
    door.image_angle = 90 * sign(self.y - door.y);
  } else {
    door.image_angle = 0;
  }
}

if (place_meeting(x, y, obj_vdoor)) {
  var door = instance_place(x, y, obj_vdoor);
  if (door.image_angle == 0) {
    door.image_angle = 90 * sign(door.x - self.x);
  } else {
    door.image_angle = 0;
  }
}

if (place_meeting(x, y, obj_ricardo_top)) {
  var ricardo = instance_place(x, y, obj_ricardo_top);
  obj_camera_manager.show_window(ricardo.window);
}