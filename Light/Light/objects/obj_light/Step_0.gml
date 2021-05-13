switch (state) {
  case "FLICKERING":
    if (!self.timeline_index) {
      self.timeline_index = rythm_to_timeline(self.flickering_rythm, flick_off, flick_on, noone);
      self.timeline_speed = 0.25;
    }
    if (!self.timeline_running) {
      self.timeline_running = true;
    }
    if (self.timeline_position >= timeline_max_moment(self.timeline_index) and alarm[0] == -1) {
	    alarm[0]  = fps * 4
    }
    break;
  case "SOLID":
    if (self.timeline_running) {
      self.timeline_running = false;
    }
    if (self.timeline_index) {
      self.timeline_index = noone;
    }
    break;
  case "OFF":
    if (self.timeline_running) {
      self.timeline_running = false;
    }
    if (self.timeline_index) {
      self.timeline_index = noone;
    }
    break;
}