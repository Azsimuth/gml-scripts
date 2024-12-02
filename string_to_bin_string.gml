///string_to_bin_string(string_argument) - takes a string argument, and returns binary sequence as a string.
// 2024-06-07, @azsimuth.
arg = string(argument0);
arg_len = string_length(arg);
result = "";
for (i = 1; i<arg_len+1; i+=1) {
    var bin; bin = '';
    ascii_val = string_byte_at(arg,i);
    while ascii_val > 0 {
          if (ascii_val mod 2 == 1)
             {
             bin += '1';
             }
          else
             bin += '0';
          ascii_val = floor(ascii_val/2);
    }
    invbin = "" // it needs to be inverted.
    for (j = string_length(bin); j>0; j-=1) {
        invbin+=string_char_at(bin,j)
    }
    if string_length(invbin) < 8 {
       invbin = (8-string_length(invbin)) * '0' + invbin
    }
    
    result+=(invbin+' ')
}
return result
