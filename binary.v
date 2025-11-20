

module binary(
    input w,
    input clk, reset,
    output z,
    output [2:0] sLED
);

    wire [2:0] S;
    wire [2:0] Next;

    dff zero(
        .Default(1'b0),
        .D(Next[0]),
        .clk(clk),
        .Q(S[0]),
        .reset(reset)
    );

    dff one(
        .Default(1'b0),
        .D(Next[1]),
        .clk(clk),
        .Q(S[1]),
        .reset(reset)
    );
    
    dff two(
        .Default(1'b0),
        .D(Next[2]),
        .clk(clk),
        .Q(S[2]),
        .reset(reset)
    );

    assign z = ~S[2]&S[1]&~S[0] | S[2]&~S[1]&~S[0];
    assign Next[0] = ~S[2]&~S[1]&~S[0] | w&~S[2]&~S[1] | 
                    ~w&~S[2]&S[1]&S[0] | w&S[1]&~S[0] |
                    ~w&S[2]&~S[1];
    assign Next[1] = w&~S[2]&~S[1] | ~S[2]&~S[1]&S[0] | S[1]&~S[0];
    assign Next[2] = w&~S[2]&S[1]&S[0] | w&S[2]&~S[1];

assign sLED = {S[2], S[1], S[0]};
endmodule

