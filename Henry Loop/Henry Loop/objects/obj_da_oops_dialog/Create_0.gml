event_inherited();

ds_queue_enqueue(messages, "@...");
ds_queue_enqueue(messages, "@Заречная?");

finish = function() { 
  obj_twardowski.playable = true;
  obj_gertrude.state = "READY TO KILL";
}