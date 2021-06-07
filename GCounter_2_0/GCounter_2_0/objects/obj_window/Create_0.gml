top_window = find_top_window();
if (top_window) {
	depth = top_window.depth - 100;
} else {
  depth = -100;
}

active = false;

state = "NORMAL";

mouse_last_pos_x = -1;
mouse_last_pos_y = -1;
