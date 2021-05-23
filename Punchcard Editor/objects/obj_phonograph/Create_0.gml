punchcard = noone;

middle_c_freq = 523.25;
freq = [880.00, 987.77, middle_c_freq, 587.33, 659.25];


var play = function() {
  var column = floor(timeline_position / 10);
  for (var row = 0; row < 5; row++) {
    if (is_numeric(self.punchcard[row, column])) {
      var sound_index = asset_get_index("middle_c_" + string(self.punchcard[row, column]));
      var audio = audio_play_sound(sound_index, 0, false);
      audio_sound_pitch(audio, freq[row] / middle_c_freq);
    }
  }
  
}

var tl = timeline_add()
timeline_moment_add_script(tl, 0, play);
timeline_moment_add_script(tl, 10, play);
timeline_moment_add_script(tl, 20, play);
timeline_moment_add_script(tl, 30, play);
timeline_moment_add_script(tl, 40, play);
timeline_moment_add_script(tl, 50, play);
timeline_moment_add_script(tl, 60, play);
timeline_moment_add_script(tl, 70, play);
timeline_moment_add_script(tl, 80, play);
timeline_moment_add_script(tl, 90, play);
timeline_moment_add_script(tl, 100, play);
timeline_moment_add_script(tl, 110, play);
timeline_moment_add_script(tl, 120, play);
timeline_moment_add_script(tl, 130, play);
timeline_moment_add_script(tl, 140, play);
timeline_moment_add_script(tl, 150, play);
timeline_moment_add_script(tl, 160, play);
timeline_moment_add_script(tl, 170, play);
timeline_moment_add_script(tl, 180, play);
timeline_moment_add_script(tl, 190, play);
timeline_moment_add_script(tl, 200, play);

timeline_index = tl;
timeline_running = false;
timeline_loop = false;
timeline_position = 0;

state = "IDLE";

