switch (state) {
  case "IDLE":
  case "FINISH":
    if (timeline_running) {
      timeline_running = false;
      timeline_position = 0;
    }
    break;
  case "PLAY":
    if (!timeline_running) {
      timeline_running = true;
      timeline_position = 0;
    }
    if (timeline_position > timeline_max_moment(timeline_index)) {
      state = "FINISH";
    }
    break;
}