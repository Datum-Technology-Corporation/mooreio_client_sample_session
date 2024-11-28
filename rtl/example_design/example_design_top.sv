module example_design_top #(
   parameter DATA_WIDTH=8
) (
   input    clk,
   input  rst_n,
   output [(DATA_WIDTH-1):0] o_data_0,
   output [(DATA_WIDTH-1):0] o_data_1
);

   always@(posedge clk) begin
      if (rst_n === 1) begin
         o_data_0 <= $urandom();
         o_data_1 <= $urandom();
      end
      else begin
         o_data_0 <= 'x;
         o_data_1 <= 'x;
      end

   end

endmodule
