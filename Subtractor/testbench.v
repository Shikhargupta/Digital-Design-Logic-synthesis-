module simulation;

wire DIFF, BORR;
reg X, Y, Z;
sub s1(DIFF, BORR, X, Y, Z);

initial
begin
X = 1'b0; Y = 1'b0; Z = 1'b0;
forever #5 Z = ~Z;
end

initial
forever #10 Y = ~Y;

initial 
#20 X = ~X;

initial 
#35 $finish;

initial
$monitor($time, " x = %d, y = %d, z = %d, diff = %d, borr = %d", X, Y, Z, DIFF, BORR);

endmodule

