event_inherited();

ds_queue_enqueue(messages, "#Вы кто такой?");
ds_queue_enqueue(messages, "@Я здесь живу");
ds_queue_enqueue(messages, "#Где здесь?!!");
ds_queue_enqueue(messages, "@Третий дом квартира 3.");
ds_queue_enqueue(messages, "#Улица Заречная дом 3 квартира 3?");
ds_queue_enqueue(messages, "@...");
ds_queue_enqueue(messages, "@Заречная?");

finish = function() { 
  obj_twardowski.playable = true;
  obj_gertrude.state = "READY TO KILL";
}