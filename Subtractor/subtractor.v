module sub(diff, borr, x, y, z);

input x, y, z;
output diff, borr;

assign diff = ((~x) & (~y) & z) | (x & (~y) & (~z)) | (x & (~y) & (~z)) | (x & y & z);
assign borr = ((~x) & y) | ((~x) & z) | (y & z);

endmodule
