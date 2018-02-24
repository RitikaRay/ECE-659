module multiplier(x,y,product);

input signed [7:0]x,y;
output signed [15:0]product;
output signed [7:0]PP1,PP2,PP3,PP4,sum1,sum2,sum3,s1,s2,s3;
wire [2:0]sdn1,sdn2,sdn3,sdn4;
wire cin,c1,c2,c3;

encoder e (x,sdn1,sdn2,sdn3,sdn4);
decoder d1 (sdn1,y,PP1);
decoder d2 (sdn2,y,PP2);
decoder d3 (sdn3,y,PP3);
decoder d4 (sdn4,y,PP4);

assign cin = 1'b0;

function [7:0]extend;
input [7:0]PP;
begin
extend[7] = PP[7];
extend[6] = PP[7];
extend[5:0]= PP[7:2];
end
endfunction

assign cin = 1'b0;
assign product[1:0] = PP1[1:0];
assign s1 = extend(PP1);
cla cl1 (s1, PP2, cin, sum1, c1 );
assign product [3:2] = sum1[1:0];
assign s2 = extend(sum1);
cla cl2 (s2, PP3, cin, sum2, c2 );
assign product [5:4] = sum2 [1:0];
assign s3 = extend(sum2);
cla cl3 (s3, PP4, cin, sum3, c3 );
assign product [7:6] = sum3[1:0];
assign product[8] = product[7];
assign product[9] = product[7];
assign product[10] = product[7];
assign product[11] = product[7];
assign product[12] = product[7];
assign product[13] = product[7];
assign product[14] = product[7];
assign product[15] = product[7];

endmodule

// module multiplier(x,y,product);

// input signed [7:0]x,y;
// output signed [15:0]product;
// output signed [7:0]PP1,PP2,PP3,PP4,sum1,sum2,sum3;
// wire [2:0]sdn1,sdn2,sdn3,sdn4;
// wire cin,c1,c2,c3;

// encoder e (x,sdn1,sdn2,sdn3,sdn4);
// decoder d1 (sdn1,y,PP1);
// decoder d2 (sdn2,y,PP2);
// decoder d3 (sdn3,y,PP3);
// decoder d4 (sdn4,y,PP4);

// assign cin = 1'b0;

// function [7:0]extend;
// input [7:0]PP;
// begin
// extend[7] = PP[7];
// extend[6] = PP[7];
// extend[5:0]= PP[7:2];
// end
// endfunction

// assign cin = 0;
// assign product[1:0] = PP1[1:0];
// cla cla1 (extend(PP1), PP2, cin, sum1, c1 );
// assign product [3:2] = sum1[1:0];
// cla cla2 (extend(sum1), PP3, c1, sum2, c2 );
// assign product [5:4] = sum2 [1:0];
// cla cla3 (extend(sum2), PP4, c2, sum3, c3 );
// assign product [7:6] = sum3[1:0];
// assign product[8] = product[7];
// assign product[9] = product[7];
// assign product[10] = product[7];
// assign product[11] = product[7];
// assign product[12] = product[7];
// assign product[13] = product[7];
// assign product[14] = product[7];
// assign product[15] = product[7];

// endmodule
