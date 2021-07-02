if (obj_camera_manager.current_camera.state != "FOLLOW_PLAYER") {
  return;
}

if (place_meeting(x, y, obj_door)) {
  var door = instance_place(x, y, obj_door);
  door.open(self);
}

if (place_meeting(x, y, obj_ricardo_top)) {
  obj_camera_manager.show_window("ricardo");
}

if (place_meeting(x, y, obj_gertrude)) {
  var gertrude = instance_place(x, y, obj_gertrude);
  gertrude.talk();
}

if (place_meeting(x, y, obj_car)) {
  var car = instance_place(x, y, obj_car);
  car.interact();
}