if (obj_camera_manager.current_camera.state != "FOLLOW_PLAYER") {
  return;
}

if (not playable) {
  return;
}

if (place_meeting(x, y, obj_door)) {
  var door = instance_place(x, y, obj_door);
  door.open(self);
  audio_play_sound(Door_open, 10, false);
}

if (place_meeting(x, y, obj_car)) {
  obj_car.interact();
  audio_play_sound(Short_Whoosh, 10, false);
}