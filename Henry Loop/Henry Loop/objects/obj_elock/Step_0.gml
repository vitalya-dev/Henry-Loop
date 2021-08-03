switch (state) {
  case "LOCKED":
    image_index = 0;
    break;
  case "UNLOCKED":
    image_index = 1;
    break;
}

show_debug_message(code);