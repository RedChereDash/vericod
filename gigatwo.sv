`include registrparal
module  paralprikol # (
    parameter M = 8
) (
 input clk,
 input reset,
 input reg [M-1:0] bus_in,
 input shift,
 input set,
 output bit_out

);
reg [M-1:0] shiftreg;

    always @(posedge clk)begin
        if (reset == 1)begin
            shiftreg <= '0;
            bit_out <= 0;
        end
        else if(enable) begin
            shiftreg <= byte_in ; 
          end  
        if (shift) begin
            shiftreg <= {1'b1, shiftreg[M-1:1]};
            bit_out <= shiftreg[0]
        end
    end

endmodule