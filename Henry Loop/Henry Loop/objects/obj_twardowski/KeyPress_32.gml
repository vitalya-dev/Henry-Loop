if (obj_camera_manager.current_camera.state != "FOLLOW_PLAYER") {
  return;
}

if (not playable) {
  return;
}


if (place_meeting(x, y, obj_interactable)) {
  var interactable = instance_place(x, y, obj_interactable);
  interactable.interact(self);
}