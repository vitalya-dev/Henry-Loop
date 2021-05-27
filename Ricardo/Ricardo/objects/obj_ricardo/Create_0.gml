head = child_instance_create_depth(20, 0, depth + 1, obj_ricardo_head);
light = child_instance_create_depth(24, 16, depth, obj_ricardo_light);
body = child_instance_create_depth(17, 29, depth + 3, obj_ricardo_body);
heart = child_instance_create_depth(21, 33, depth + 2, obj_ricardo_heart);
body_door = child_instance_create_depth(17, 30, depth, obj_ricardo_body_door);
legs = child_instance_create_depth(17, 56, depth, obj_ricardo_legs);
left_hand = child_instance_create_depth(19, 28, depth + 1, obj_ricardo_left_hand);
right_hand = child_instance_create_depth(36, 27, depth + 1, obj_ricardo_right_hand);
leverage = child_instance_create_depth(31, 38, depth + 1, obj_leverage);
acceptor = child_instance_create_depth(25, 10, depth + 1, obj_acceptor);
state = "INIT";
error_code = 0;

punchcard = [];
punchcard_correct_hash = 540569633100;
for (var i = 0; i < 5; i++) {
  for (var j = 0; j < 21; j++) {
      punchcard[i, j] = "_";
  }
}
