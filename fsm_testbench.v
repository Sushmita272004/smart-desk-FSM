`timescale 1ns / 1ps

module fsm_testbench;

  reg clk, reset;
  reg [2:0] emotion_code;
  wire [1:0] led_color;
  wire audio;

  // DUT instance
  smart_desk_fsm uut (
    .clk(clk),
    .reset(reset),
    .emotion_code(emotion_code),
    .led_color(led_color),
    .audio(audio)
  );

  initial begin
    $dumpfile("fsm.vcd");
    $dumpvars(0, fsm_testbench);

    clk = 0;
    reset = 1;
    emotion_code = 3'b000;

    #5 reset = 0;

    // Simulated emotion changes
    #10 emotion_code = 3'b001; // Focus
    #10 emotion_code = 3'b010; // Stress
    #10 emotion_code = 3'b011; // Sleepy
    #10 emotion_code = 3'b000; // Idle
    #10 emotion_code = 3'b001;
    #10 $finish;
  end

  always #5 clk = ~clk;

endmodule
