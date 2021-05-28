if (string_char_at(obj_gobject.note, 0) == notes_names[current_note_index]) {
	if (obj_speaker.state == "IDLE") {
		show_debug_message(string_copy(obj_gobject.note, 2, string_length(obj_gobject.note) - 1));
	}
}