module VGA_controller(
input clk, reset_n,
input [2:0] rgb_sw,
output [2:0] rgb,
output reg hsync, vsync
);
wire video_on;
wire [9:0] pixel_x, pixel_y, done_y, done_x;

horizontal_counter U1(
  .clk(clk),
  .reset_n(reset_n),
  .done_x(done_x),
  .pixel_x(pixel_x)
);
vertical_counter U2(
  .clk(clk),
  .reset_n(reset_n),
  .enable(done_x),
  .done_y(done_y),
  .pixel_y(pixel_y)    
);

always@(*)
begin
  if(pixel_x < 656 || pixel_x > 751)
  hsync = 1'b1;
else
  hsync = 1'b0;
end

always@(*)
begin
  if(pixel_y < 513 || pixel_y > 514)
  vsync = 1'b1;
else
  vsync = 1'b0;
end  

assign video_on = (pixel_x < 640 && pixel_y < 480 )? 1'b1 : 1'b0;
assign rgb = (video_on)? rgb_sw : 3'b000;

endmodule   
