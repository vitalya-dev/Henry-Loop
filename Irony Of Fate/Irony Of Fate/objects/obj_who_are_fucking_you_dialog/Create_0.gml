event_inherited();

ds_queue_enqueue(messages, "#Вы кто такой?");
ds_queue_enqueue(messages, "@Я здесь живу");
ds_queue_enqueue(messages, "#Где здесь?!!");
ds_queue_enqueue(messages, "@Третий дом третья квартира");
ds_queue_enqueue(messages, "#Заречная 3?");

finish = function() { 
  obj_camera_manager.show_dialog(obj_oops_dialog);
  obj_camera_manager.show_window(obj_document_window);
}