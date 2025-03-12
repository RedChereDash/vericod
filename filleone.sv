module registrparal # (parameter  M = 8) (
  input clk,
  input reset,
  input bit_in, // 1
  input shift,
  output reg [M-1:0] byte_out // 8
);
    
always @(posedge clk)begin
    if(reset == 1) // по базе сравнивается итак с 1
    begin
    byte_out <= '0; // легкое задурение, но можно ещё 8'd0 
    end
    else (shift == 1)
    begin
        byte_out <= {bit_in, byte_out[M-1:1]}; // производим сдвиг и записываем вход в старший разряд
    end
end 
    
endmodule



