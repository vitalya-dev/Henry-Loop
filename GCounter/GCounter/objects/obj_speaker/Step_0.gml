switch (state) {
  case "IDLE":
  case "FINISH":
    if (timeline_running) {
      timeline_running = false;
      timeline_position = 0;
      timeline_index = noone;
    }
    break;
  case "PLAY":
    if (!timeline_running) {
      var tl = timeline_add();
      for (var i = 0; i < beep_count; i++) {
        timeline_moment_add_script(tl, i * 90, function() {audio_play_sound(snd_beep, 0, false)});
      }
      timeline_index = tl;
      timeline_position = 0;
      timeline_running = true;
    }
    if (timeline_position > timeline_max_moment(timeline_index)) {
      state = "FINISH";
    }
    break;
 }