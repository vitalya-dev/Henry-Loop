notes_names = ["A", "B", "C", "D", "E"];
notes_sprites = [spr_a, spr_b, spr_c, spr_d, spr_e];
notes_duration = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11",
                  "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"];
notes_duration_sprites = [spr_1, spr_2, spr_3, spr_4, spr_5, spr_6,
                          spr_7, spr_8, spr_9, spr_10, spr_11,
                          spr_12, spr_13, spr_14, spr_15, spr_16, spr_17,
                          spr_18, spr_19, spr_20, spr_21];
current_note_name_index = 0;
current_note_duration_index = 0;

wheel = instance_create_depth(x + 15, y + 33, depth - 1, obj_wheel);
wheel.on_wheel_up = function() {
  current_note_duration_index += 1;
  if (current_note_duration_index >= array_length(notes_duration)) {
    current_note_name_index += 1;
    current_note_duration_index = 0;
  }
  current_note_name_index = current_note_name_index mod array_length(notes_names);
};

wheel.on_wheel_down = function() {
  current_note_duration_index -= 1;
  if (current_note_duration_index < 0) {
    current_note_name_index -= 1;
    current_note_duration_index = array_length(notes_duration) - 1;
  }
  if (current_note_name_index < 0) {
    current_note_name_index = array_length(notes_names) - 1;
  }
};

state = "UNTUNED";
