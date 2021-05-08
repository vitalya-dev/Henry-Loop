if (!self.timeline_running)
	self.timeline_running = true
if (self.timeline_position >= timeline_max_moment(self.timeline_index) and alarm[0] == -1) {
	alarm[0] = fps * 2
}

if position_meeting(mouse_x, mouse_y, self)
	is_hearing = true
else
	is_hearing = false