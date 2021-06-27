if (place_meeting(x, y, obj_door)) {
  var door = instance_place(x, y, obj_door);
  door.open(self);
}

if (place_meeting(x, y, obj_ricardo_top)) {
  obj_camera_manager.show_window("ricardo");
}