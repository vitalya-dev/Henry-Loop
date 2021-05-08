is_hearing = false
var dot = function() {
	self.image_index = 1
	if (is_hearing)
		audio_play_sound(snd_beat, 10, false)
}

var dash = function() {
	self.image_index = 0
}

var sep = function() {
	self.image_index = 0	
}
self.timeline_index = rythm_to_timeline("...|.-.-.|.-.-.........", dot, dash, sep)
self.timeline_speed = 0.2