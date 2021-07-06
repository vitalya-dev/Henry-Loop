code = "591";

get_two_wrong_numbers_1 = function() {
    var first_number = "";
    var second_number = "";
   
    for (var i = 0; i < 10; i++) {
      var check = string(i);
      if (check != string_char_at(code, 1) and check != string_char_at(code, 2) and check != string_char_at(code, 3)) {
        if (first_number == "") {
          first_number = check; 
        } else if (second_number == "") {
          second_number = check;
          break;
        }
      }
    }
    return first_number + second_number;
}


get_two_wrong_numbers_2 = function() {
    var first_number = "";
    var second_number = "";
   
    for (var i = 9; i >= 0; i--) {
      var check = string(i);
      if (check != string_char_at(code, 1) and check != string_char_at(code, 2) and check != string_char_at(code, 3)) {
        if (first_number == "") {
          first_number = check; 
        } else if (second_number == "") {
          second_number = check;
          break;
        }
      }
    }
    return first_number + second_number;
}