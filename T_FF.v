// Module Declaration
module t_ff(
    input clk, t, rst_n,
    output reg q,
    output q_bar
);

    always @ (posedge clk) //synchronous reset
        begin
          if(!rst_n)
            q <= 0;
          else
            begin
                q <= (t?~q:q); // ternary operator
            end
        end
    assign q_bar = ~q;
endmodule
