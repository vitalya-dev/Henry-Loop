self.value = 0;
var dot = function() {
	self.value = 1;
}

var dash = function() {
	self.value = 0;
}

var sep = function() {
	self.value = 0;
}

self.timeline_index = rythm_to_timeline("...|.-.-.|.-.-.........", dot, dash, sep)