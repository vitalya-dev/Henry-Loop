// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rythm_to_timeline(rythm, dot, dash, sep) {
  var tl = timeline_add();
  var state = "INIT";
  var counter = 0;
  var element_duration = 8;
  for (var i = 1; i <= string_length(rythm); i++) {
    var ch = string_char_at(rythm, i);
    switch (state) {
      case "INIT":
        if (ch == ".") {
          timeline_moment_add_script(tl, timeline_max_moment(tl), dot);
          counter = 1;
          state = "DOT";
        } else if (ch == "-") {
          timeline_moment_add_script(tl, timeline_max_moment(tl), dash);
          counter = 1;
          state = "DASH";
        } else {
          show_error("BAD RYTHM", true);
        }
        break;
      case "DOT":
        if (ch == ".") {
          counter += 1;
        } else if (ch == "-") {
          timeline_moment_add_script(tl, timeline_max_moment(tl) + element_duration * counter, dash);
          counter = 1;
          state = "DASH";
        }  else if (ch == "|") {
          timeline_moment_add_script(tl, timeline_max_moment(tl) + element_duration * counter, sep);
          counter = 1;
          state = "SEP";
        } else {
          show_error("BAD RYTHM", true);
        }
        break;
      case "DASH":
        if (ch == "-") {
          counter += 1;
        } else if (ch == ".") {
          timeline_moment_add_script(tl, timeline_max_moment(tl) + element_duration * counter, dot);
          counter = 1;
          state = "DOT";
        } else {
          show_error("BAD RYTHM", true);
        }
        break;
      case "SEP":
        if (ch == ".") {
          timeline_moment_add_script(tl, timeline_max_moment(tl) + 1, dot);
          counter = 1;
          state = "DOT";
        } else {
          show_error("BAD RYTHM", true);
        }
        break;
    }
  }
  timeline_moment_add_script(tl, timeline_max_moment(tl) + element_duration * counter, sep);
  return tl;
}