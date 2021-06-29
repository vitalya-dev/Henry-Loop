event_inherited();

ds_queue_enqueue(messages, "Жду указаний...");
ds_queue_enqueue(messages, "Порядок. Дело сделано.");
ds_queue_enqueue(messages, "Пора валить");
finish = function() {
  obj_hall_door.image_angle = 0;
  obj_hall_door.state = "OPEN_1";
  instance_deactivate_object(obj_gertrude);
}