`timescale 1ns / 1ps

module my_iobuf(
 inout IO,
 input I,
 output O,
 input T
    );
IOBUF
  IOBUF_inst (
      .O(O),     // Buffer output
      .IO(IO),   // Buffer inout port (connect directly to top-level port)
      .I(I),     // Buffer input
      .T(T)      // 3-state enable input, high=input, low=output
   );
endmodule
