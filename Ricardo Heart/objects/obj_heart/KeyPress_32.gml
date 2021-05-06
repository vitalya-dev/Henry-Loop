if !self.timeline_running {
	self.timeline_position = 0
	self.timeline_running = true
} else {
	self.timeline_position = 0
	self.timeline_running = false
	self.image_index = 0
}