module VGA_controller_tb();
reg clk, reset_n;
reg [2:0] rgb_sw;
wire [2:0] rgb;
wire  hsync, vsync;
integer i;

VGA_controller uut (
  .clk(clk),
  .reset_n(reset_n),
  .rgb_sw(rgb_sw),
  .rgb(rgb),
  .hsync(hsync),
  .vsync(vsync)
);

always
begin
  clk = 1'b1;
  #2
  clk = 1'b0;
  #2;
end

initial
begin
  reset_n = 1'b0;
  #40
  reset_n = 1'b1;
  #40
  for(i = 0; i < 20; i = i + 1)
  begin
  rgb_sw = $random;
  #100;
  end
  
  #50000;
end
endmodule
