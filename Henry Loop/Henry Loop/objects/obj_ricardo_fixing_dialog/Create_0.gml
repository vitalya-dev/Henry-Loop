event_inherited();

ds_queue_enqueue(messages, "$Жду указаний...");
ds_queue_enqueue(messages, "@Порядок");
ds_queue_enqueue(messages, "@Дело сделано");
ds_queue_enqueue(messages, "@Пора валить");

finish = function() {
  obj_gertrude.x = 0;
  obj_gertrude.y = 0;
  obj_twardowski.alarm[1] = 4 * fps;
}