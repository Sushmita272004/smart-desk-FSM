module smart_desk_fsm (
  input clk,
  input reset,
  input [2:0] emotion_code,
  output reg [1:0] led_color,
  output reg audio
);

  // FSM state encoding
  parameter IDLE        = 2'b00;
  parameter FOCUS       = 2'b01;
  parameter STRESS      = 2'b10;
  parameter SLEEPY      = 2'b11;

  reg [1:0] current_state, next_state;

  // Next state logic
  always @(*) begin
    case (emotion_code)
      3'b001: next_state = FOCUS;
      3'b010: next_state = STRESS;
      3'b011: next_state = SLEEPY;
      default: next_state = IDLE;
    endcase
  end

  // State transition
  always @(posedge clk or posedge reset) begin
    if (reset)
      current_state <= IDLE;
    else
      current_state <= next_state;
  end

  // Output logic (registered for glitch-free output)
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      led_color <= 2'b00;
      audio     <= 1'b0;
    end else begin
      case (next_state)
        IDLE: begin
          led_color <= 2'b00;
          audio     <= 1'b0;
        end
        FOCUS: begin
          led_color <= 2'b01;
          audio     <= 1'b0;
        end
        STRESS: begin
          led_color <= 2'b10;
          audio     <= 1'b1;
        end
        SLEEPY: begin
          led_color <= 2'b11;
          audio     <= 1'b1;
        end
      endcase
    end
  end

endmodule
