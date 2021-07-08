event_inherited();

ds_queue_enqueue(messages, "Вы ведь какую то гадость про меня подумали?");
ds_queue_enqueue(messages, "Что я и робот да?");
ds_queue_enqueue(messages, "Придете на работу и будете ржать со своими?");
ds_queue_enqueue(messages, "EБушки-воробушки...");


finish = function() {
  obj_car.alarm[3] = fps;
}