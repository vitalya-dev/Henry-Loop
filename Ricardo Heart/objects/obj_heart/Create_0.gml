/// @description Init
var tick = function() {
	self.image_index = 1
}
var tack = function() {
	self.image_index = 0
}
self.heart_beat_tl = timeline_add()
add_3x_tick()
add_1x_tick()
add_1x_tack()
add_1x_tick()
add_1x_tack()
add_1x_tick()
add_1x_tick()
add_1x_tack()
add_1x_tick()
add_1x_tack()
add_9x_tack()

timeline_max_moment()
timeline_moment_add_script(self.heart_beat_tl, 0, tick)
timeline_moment_add_script(self.heart_beat_tl, 24, tack)
timeline_moment_add_script(self.heart_beat_tl, 26, tick)
timeline_moment_add_script(self.heart_beat_tl, 34, tack)
timeline_moment_add_script(self.heart_beat_tl, 42, tick)
timeline_moment_add_script(self.heart_beat_tl, 50, tack)
timeline_moment_add_script(self.heart_beat_tl, 58, tick)
timeline_moment_add_script(self.heart_beat_tl, 64, tack)
timeline_moment_add_script(self.heart_beat_tl, 66, tick)
timeline_moment_add_script(self.heart_beat_tl, 74, tack)
timeline_moment_add_script(self.heart_beat_tl, 82, tick)
timeline_moment_add_script(self.heart_beat_tl, 90, tack)
timeline_moment_add_script(self.heart_beat_tl, 98, tick)
timeline_moment_add_script(self.heart_beat_tl, 154, tack)
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
self.timeline_index = self.heart_beat_tl
self.timeline_position = 0
self.timeline_running = false
