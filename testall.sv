module test_bench
localparam cnt_width = 4;
reg clk;
reg [cnt_width:0] cnt_taktov,

reg clk_div2;
reg [7:0] byte_1;

initial begin
    clk = 0;
    cnt_taktov = 0;
end

always begin
    #10 clk = ~clk;
    always @(posedge clk) begin
        cnt_taktov <= cnt_taktov + 1;
    end

    wire reset = (cnt_taktov==3);
    wire start = (cnt_taktov==5);
    wire active;

    trigger1 trg1(.clk(clk), .reset(reset), byte_1[0], );
    trigger1 trg2(.clk(clk), .reset(reset),);
end
endmodule