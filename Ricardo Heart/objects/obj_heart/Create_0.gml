/// @description Init
self.heart_rythm = timeline_add()

var beat_on = function() {
	self.image_index = 1
}
var beat_off = function() {
	self.image_index = 0
}
var terminator = function() {
}
var beat_duration = 16
timeline_moment_add_script(self.heart_rythm, 0, beat_on)
timeline_moment_add_script(self.heart_rythm, 3*beat_duration, beat_off)
timeline_moment_add_script(self.heart_rythm, timeline_max_moment(self.heart_rythm) + 2, beat_on)
timeline_moment_add_script(self.heart_rythm, timeline_max_moment(self.heart_rythm) + 8, beat_off)
timeline_moment_add_script(self.heart_rythm, 42, beat_on)
timeline_moment_add_script(self.heart_rythm, 50, beat_off)
timeline_moment_add_script(self.heart_rythm, 58, beat_on)
timeline_moment_add_script(self.heart_rythm, 64, beat_off)
timeline_moment_add_script(self.heart_rythm, 66, beat_on)
timeline_moment_add_script(self.heart_rythm, 74, beat_off)
timeline_moment_add_script(self.heart_rythm, 82, beat_on)
timeline_moment_add_script(self.heart_rythm, 90, beat_off)
timeline_moment_add_script(self.heart_rythm, 98, beat_on)
timeline_moment_add_script(self.heart_rythm, 160, beat_off)
timeline_moment_add_script(self.heart_rythm, 220, terminator)
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
self.timeline_index = self.heart_rythm
self.timeline_position = 0
self.timeline_running = true
self.timeline_loop = true
