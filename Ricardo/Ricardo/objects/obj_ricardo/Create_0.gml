head = child_instance_create_depth(20, 0, depth, obj_ricardo_head);
light = child_instance_create(24, 16, obj_ricardo_light);
body = child_instance_create_depth(17, 29, depth + 2, obj_ricardo_body);
heart = child_instance_create_depth(21, 33, depth + 1, obj_ricardo_heart);
body_door = child_instance_create_depth(17, 30, depth, obj_ricardo_body_door);
legs = child_instance_create_depth(17, 56, depth, obj_ricardo_legs);

state = "INIT";
error_code = 0;