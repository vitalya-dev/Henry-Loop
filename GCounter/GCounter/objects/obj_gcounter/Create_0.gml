notes_names = ["A", "B", "C", "D", "E"];
notes_sprites = [spr_a, spr_b, spr_c, spr_d, spr_e];
current_note_index = 0;

wheel = child_instance_create_depth(15, 33, depth - 1, obj_wheel);
wheel.on_wheel_up = function() {
  current_note_index = (current_note_index + 1) mod array_length(notes_names);
};

wheel.on_wheel_down = function() {
  current_note_index = current_note_index > 0 ? (current_note_index - 1) : array_length(notes_names) - 1
}

state = "UNTUNED";
