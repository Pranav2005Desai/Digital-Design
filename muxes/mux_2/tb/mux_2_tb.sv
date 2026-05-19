`timescale 1ns/1ps

module mux_2_tb;

  reg a;
  reg b;
  reg sel;
  wire y;

  mux_2 dut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );

  initial begin

    $dumpfile("sim/mux_2.vcd");
    $dumpvars(0, mux_2_tb);

    sel = 0;
    a = 0;
    b = 0;

    #10 a = 1; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;

    #10 sel = 1; a = 0; b = 0;
    #10 a = 1; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;

    #10 $finish;

  end

endmodule