///bin_to_number(binary string) - returns a single number from a binary sequence
// 2024-06-08, @azsimuth
var bstr, l, bucket, j;

bstr = string(argument0);
l = string_length(bstr);

bucket = 0;
j = 0;

for (i = l; i > 0; i -= 1) {
    bit = real(string_char_at(bstr, i));
    if (bit == 1 || bit == 0) {
        bucket += bit * power(2, j);
        j += 1;
    }
}
return bucket;