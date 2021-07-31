event_inherited();
WAIT = 180;
alpha = 0;
messages = ds_queue_create();
ds_queue_enqueue(messages, "И копошаться по лицу земли");
ds_queue_enqueue(messages, "Букашки прозванные людьми");
ds_queue_enqueue(messages, "Затерянные в пространстве");
ds_queue_enqueue(messages, "Времени");
ds_queue_enqueue(messages, "И смысле");
ds_queue_enqueue(messages, "КОНЕЦ");

current_message = "";
alarm[1] = 1;
