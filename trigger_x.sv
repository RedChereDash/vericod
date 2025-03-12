module trigger_x
    (input clk,
    input reset,
    input set,
    output reg out
    );
    always @(posedge clk) begin // по положительному фронту генератора clk
    if (reset) begin // если reset=1
        out <= 0; // на выходе триггера 0
        end else begin // иначе
        if (set) begin // если set=1
            out <= 1; // на выходе триггера 1
            end
        end
    end
endmodule