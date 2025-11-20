module top(
    input [0:0]sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

  one_hot Hot(
        .w(sw[0]),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .aLED(led[2]),
        .bLED(led[3]),
        .cLED(led[4]),
        .dLED(led[5]),
        .eLED(led[6])
  );
  
  binary Bin(
        .w(sw[0]),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .sLED(led[9:7])
  );

endmodule