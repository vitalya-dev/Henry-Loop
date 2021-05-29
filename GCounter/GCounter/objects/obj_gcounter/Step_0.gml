var note_full_name = notes_names[current_note_name_index] + notes_duration[current_note_duration_index];

switch (state) {
  case "TUNED":
    if (obj_speaker.state != "PLAY") {
      obj_speaker.beep_count = obj_gobject.note_qty;
      obj_speaker.state = "PLAY";
    }
    if (note_full_name != obj_gobject.note_name) {
      state = "UNTUNED";
    }
    break;
  case "UNTUNED":
    if (obj_speaker.state == "PLAY") {
      obj_speaker.state = "FINISH";
    }
    if (note_full_name == obj_gobject.note_name) {
      state = "TUNED";
    }
    break;	
}