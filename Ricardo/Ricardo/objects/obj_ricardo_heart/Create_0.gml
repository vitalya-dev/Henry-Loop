audio_emmiter = audio_emitter_create();
audio_emitter_gain(audio_emmiter, 0.1);

var dot = function() {
	self.image_index = 1;
	audio_play_sound_on(audio_emmiter, snd_beat, 0, 1);
}

var dash = function() {
	self.image_index = 0
}

var sep = function() {
	self.image_index = 0	
}
self.timeline_index = rythm_to_timeline("...|.-.-.|.-.-.........", dot, dash, sep)
self.timeline_speed = 0.2