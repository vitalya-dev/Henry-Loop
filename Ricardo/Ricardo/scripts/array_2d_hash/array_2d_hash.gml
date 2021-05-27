function array_2d_hash(arr, rows, cols) {
    var p = 31;
    var p_pow = 1;
    var m = 10000000000;
    var hash_value = 0;
    var array_str = array_2d_to_string(arr, rows, cols);
    for (var i = 0; i < string_length(array_str); i++) {
      hash_value += (string_ord_at(array_str, i) * p_pow) mod m;
      p_pow = (p_pow * p) mod m;
    }
    return hash_value;
}