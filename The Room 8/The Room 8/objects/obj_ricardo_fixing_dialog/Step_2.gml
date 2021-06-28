if (ds_queue_empty(messages)) {
  instance_deactivate_object(obj_gertrude);
  obj_hall_door.state = "OPEN_1";
  obj_hall_door.image_angle = 0;
}
  