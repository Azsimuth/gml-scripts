///bin_string_to_char_string(binary_argument_string)
// 2024-06-08, @azsimuth
// example input '1011101 1101010 101010'
var txt, result;
txt = argument0;
result = '';

while string_length(txt) > 0 {
    var p, binary_segment, character;
    p = string_pos(' ', txt);

    if (p == 0) {
        binary_segment = txt;
        txt = '';
    } else {
        binary_segment = string_copy(txt, 1, p - 1);
        txt = string_delete(txt, 1, p);
    }

    character = chr(bin_to_number(binary_segment));
    result += character;
}

return result;