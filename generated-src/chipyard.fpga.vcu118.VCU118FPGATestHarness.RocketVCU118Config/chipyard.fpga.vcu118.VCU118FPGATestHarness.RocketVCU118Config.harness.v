module AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_inVCU118FPGATestHarness(
  input   clock,
  input   reset,
  input   io_d,
  output  io_q
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  sync_0; // @[SynchronizerReg.scala 51:87]
  reg  sync_1; // @[SynchronizerReg.scala 51:87]
  reg  sync_2; // @[SynchronizerReg.scala 51:87]
  assign io_q = sync_0; // @[SynchronizerReg.scala 59:8]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SynchronizerReg.scala 51:87]
      sync_0 <= 1'h0; // @[SynchronizerReg.scala 51:87]
    end else begin
      sync_0 <= sync_1; // @[SynchronizerReg.scala 57:10]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SynchronizerReg.scala 51:87]
      sync_1 <= 1'h0; // @[SynchronizerReg.scala 51:87]
    end else begin
      sync_1 <= sync_2; // @[SynchronizerReg.scala 57:10]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SynchronizerReg.scala 54:22]
      sync_2 <= 1'h0;
    end else begin
      sync_2 <= io_d;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  sync_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sync_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  sync_2 = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    sync_0 = 1'h0;
  end
  if (reset) begin
    sync_1 = 1'h0;
  end
  if (reset) begin
    sync_2 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncResetSynchronizerShiftReg_w1_d3_i0_inVCU118FPGATestHarness(
  input   clock,
  input   reset,
  output  io_q
);
  wire  output_chain_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_reset; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_q; // @[ShiftReg.scala 45:23]
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_inVCU118FPGATestHarness output_chain ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_clock),
    .reset(output_chain_reset),
    .io_d(output_chain_io_d),
    .io_q(output_chain_io_q)
  );
  assign io_q = output_chain_io_q; // @[ShiftReg.scala 48:{24,24}]
  assign output_chain_clock = clock;
  assign output_chain_reset = reset; // @[SynchronizerReg.scala 86:21]
  assign output_chain_io_d = 1'h1; // @[SynchronizerReg.scala 87:41]
endmodule
module ResetCatchAndSync_d3_inVCU118FPGATestHarness(
  input   clock,
  input   reset,
  output  io_sync_reset
);
  wire  io_sync_reset_chain_clock; // @[ShiftReg.scala 45:23]
  wire  io_sync_reset_chain_reset; // @[ShiftReg.scala 45:23]
  wire  io_sync_reset_chain_io_q; // @[ShiftReg.scala 45:23]
  wire  _io_sync_reset_WIRE = io_sync_reset_chain_io_q; // @[ShiftReg.scala 48:{24,24}]
  AsyncResetSynchronizerShiftReg_w1_d3_i0_inVCU118FPGATestHarness io_sync_reset_chain ( // @[ShiftReg.scala 45:23]
    .clock(io_sync_reset_chain_clock),
    .reset(io_sync_reset_chain_reset),
    .io_q(io_sync_reset_chain_io_q)
  );
  assign io_sync_reset = ~_io_sync_reset_WIRE; // @[ResetCatchAndSync.scala 29:7]
  assign io_sync_reset_chain_clock = clock;
  assign io_sync_reset_chain_reset = reset; // @[ResetCatchAndSync.scala 26:27]
endmodule
module AsyncResetRegVec_w14_i0_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  input  [13:0] io_d,
  output [13:0] io_q,
  input         io_en
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [13:0] reg_; // @[AsyncResetReg.scala 64:50]
  assign io_q = reg_; // @[AsyncResetReg.scala 68:8]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncResetReg.scala 65:16]
      reg_ <= 14'h0; // @[AsyncResetReg.scala 66:9]
    end else if (io_en) begin // @[AsyncResetReg.scala 64:50]
      reg_ <= io_d;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_ = _RAND_0[13:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    reg_ = 14'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncResetReg_inVCU118FPGATestHarness(
  input   io_d,
  output  io_q,
  input   io_clk,
  input   io_rst
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  reg_; // @[AsyncResetReg.scala 46:67]
  assign io_q = reg_; // @[AsyncResetReg.scala 50:8]
  always @(posedge io_clk or posedge io_rst) begin
    if (io_rst) begin // @[AsyncResetReg.scala 47:16]
      reg_ <= 1'h1; // @[AsyncResetReg.scala 48:9]
    end else begin
      reg_ <= io_d; // @[AsyncResetReg.scala 46:67]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_ = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (io_rst) begin
    reg_ = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ResetWrangler_inVCU118FPGATestHarness(
  input   auto_in_1_clock,
  input   auto_in_1_reset,
  input   auto_in_0_clock,
  input   auto_in_0_reset,
  output  auto_out_1_reset,
  output  auto_out_0_clock,
  output  auto_out_0_reset
);
  wire  debounced_debounce_clock; // @[AsyncResetReg.scala 89:21]
  wire  debounced_debounce_reset; // @[AsyncResetReg.scala 89:21]
  wire [13:0] debounced_debounce_io_d; // @[AsyncResetReg.scala 89:21]
  wire [13:0] debounced_debounce_io_q; // @[AsyncResetReg.scala 89:21]
  wire  debounced_debounce_io_en; // @[AsyncResetReg.scala 89:21]
  wire  deglitched_deglitch_io_d; // @[AsyncResetReg.scala 74:21]
  wire  deglitched_deglitch_io_q; // @[AsyncResetReg.scala 74:21]
  wire  deglitched_deglitch_io_clk; // @[AsyncResetReg.scala 74:21]
  wire  deglitched_deglitch_io_rst; // @[AsyncResetReg.scala 74:21]
  wire  bundleOut_0_reset_catcher_clock; // @[ResetCatchAndSync.scala 39:28]
  wire  bundleOut_0_reset_catcher_reset; // @[ResetCatchAndSync.scala 39:28]
  wire  bundleOut_0_reset_catcher_io_sync_reset; // @[ResetCatchAndSync.scala 39:28]
  wire  bundleOut_1_reset_catcher_clock; // @[ResetCatchAndSync.scala 39:28]
  wire  bundleOut_1_reset_catcher_reset; // @[ResetCatchAndSync.scala 39:28]
  wire  bundleOut_1_reset_catcher_io_sync_reset; // @[ResetCatchAndSync.scala 39:28]
  AsyncResetRegVec_w14_i0_inVCU118FPGATestHarness debounced_debounce ( // @[AsyncResetReg.scala 89:21]
    .clock(debounced_debounce_clock),
    .reset(debounced_debounce_reset),
    .io_d(debounced_debounce_io_d),
    .io_q(debounced_debounce_io_q),
    .io_en(debounced_debounce_io_en)
  );
  AsyncResetReg_inVCU118FPGATestHarness deglitched_deglitch ( // @[AsyncResetReg.scala 74:21]
    .io_d(deglitched_deglitch_io_d),
    .io_q(deglitched_deglitch_io_q),
    .io_clk(deglitched_deglitch_io_clk),
    .io_rst(deglitched_deglitch_io_rst)
  );
  ResetCatchAndSync_d3_inVCU118FPGATestHarness bundleOut_0_reset_catcher ( // @[ResetCatchAndSync.scala 39:28]
    .clock(bundleOut_0_reset_catcher_clock),
    .reset(bundleOut_0_reset_catcher_reset),
    .io_sync_reset(bundleOut_0_reset_catcher_io_sync_reset)
  );
  ResetCatchAndSync_d3_inVCU118FPGATestHarness bundleOut_1_reset_catcher ( // @[ResetCatchAndSync.scala 39:28]
    .clock(bundleOut_1_reset_catcher_clock),
    .reset(bundleOut_1_reset_catcher_reset),
    .io_sync_reset(bundleOut_1_reset_catcher_io_sync_reset)
  );
  assign auto_out_1_reset = bundleOut_1_reset_catcher_io_sync_reset; // @[Nodes.scala 1207:84 ResetWrangler.scala 40:15]
  assign auto_out_0_clock = auto_in_0_clock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_0_reset = bundleOut_0_reset_catcher_io_sync_reset; // @[Nodes.scala 1207:84 ResetWrangler.scala 40:15]
  assign debounced_debounce_clock = auto_in_0_clock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign debounced_debounce_reset = auto_in_0_reset | auto_in_1_reset; // @[ResetWrangler.scala 21:54]
  assign debounced_debounce_io_d = debounced_debounce_io_q + 14'h1; // @[ResetWrangler.scala 34:30]
  assign debounced_debounce_io_en = debounced_debounce_io_q != 14'h2710; // @[ResetWrangler.scala 33:28]
  assign deglitched_deglitch_io_d = debounced_debounce_io_q != 14'h2710; // @[ResetWrangler.scala 33:28]
  assign deglitched_deglitch_io_clk = auto_in_0_clock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deglitched_deglitch_io_rst = auto_in_0_reset | auto_in_1_reset; // @[ResetWrangler.scala 21:54]
  assign bundleOut_0_reset_catcher_clock = auto_in_0_clock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_reset_catcher_reset = deglitched_deglitch_io_q;
  assign bundleOut_1_reset_catcher_clock = auto_in_1_clock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_1_reset_catcher_reset = deglitched_deglitch_io_q;
endmodule
module ClockGroup_7_inVCU118FPGATestHarness(
  input   auto_in_member_0_clock,
  input   auto_in_member_0_reset,
  output  auto_out_clock,
  output  auto_out_reset
);
  assign auto_out_clock = auto_in_member_0_clock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_reset = auto_in_member_0_reset; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule
module Queue_36_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [2:0]  io_enq_bits_opcode,
  input  [3:0]  io_enq_bits_size,
  input  [3:0]  io_enq_bits_source,
  input  [31:0] io_enq_bits_address,
  input  [7:0]  io_enq_bits_mask,
  input  [63:0] io_enq_bits_data,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_opcode,
  output [3:0]  io_deq_bits_size,
  output [3:0]  io_deq_bits_source,
  output [31:0] io_deq_bits_address,
  output [7:0]  io_deq_bits_mask,
  output [63:0] io_deq_bits_data
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_opcode [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_size [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_source [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg [31:0] ram_address [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_address_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_address_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [31:0] ram_address_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [31:0] ram_address_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_address_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_address_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_address_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_mask [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_mask_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_mask_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_mask_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 259:95]
  reg  value; // @[Counter.scala 62:40]
  reg  value_1; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_opcode_io_deq_bits_MPORT_addr = value_1;
  assign ram_opcode_io_deq_bits_MPORT_data = ram_opcode[ram_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_opcode_MPORT_data = io_enq_bits_opcode;
  assign ram_opcode_MPORT_addr = value;
  assign ram_opcode_MPORT_mask = 1'h1;
  assign ram_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_size_io_deq_bits_MPORT_addr = value_1;
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_size_MPORT_data = io_enq_bits_size;
  assign ram_size_MPORT_addr = value;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_source_io_deq_bits_MPORT_addr = value_1;
  assign ram_source_io_deq_bits_MPORT_data = ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_source_MPORT_data = io_enq_bits_source;
  assign ram_source_MPORT_addr = value;
  assign ram_source_MPORT_mask = 1'h1;
  assign ram_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_address_io_deq_bits_MPORT_en = 1'h1;
  assign ram_address_io_deq_bits_MPORT_addr = value_1;
  assign ram_address_io_deq_bits_MPORT_data = ram_address[ram_address_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_address_MPORT_data = io_enq_bits_address;
  assign ram_address_MPORT_addr = value;
  assign ram_address_MPORT_mask = 1'h1;
  assign ram_address_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_mask_io_deq_bits_MPORT_en = 1'h1;
  assign ram_mask_io_deq_bits_MPORT_addr = value_1;
  assign ram_mask_io_deq_bits_MPORT_data = ram_mask[ram_mask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_mask_MPORT_data = io_enq_bits_mask;
  assign ram_mask_MPORT_addr = value;
  assign ram_mask_MPORT_mask = 1'h1;
  assign ram_mask_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_io_deq_bits_MPORT_addr = value_1;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = value;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_opcode = ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_size = ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_source = ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_address = ram_address_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_mask = ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_opcode_MPORT_en & ram_opcode_MPORT_mask) begin
      ram_opcode[ram_opcode_MPORT_addr] <= ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_size_MPORT_en & ram_size_MPORT_mask) begin
      ram_size[ram_size_MPORT_addr] <= ram_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_source_MPORT_en & ram_source_MPORT_mask) begin
      ram_source[ram_source_MPORT_addr] <= ram_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_address_MPORT_en & ram_address_MPORT_mask) begin
      ram_address[ram_address_MPORT_addr] <= ram_address_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_mask_MPORT_en & ram_mask_MPORT_mask) begin
      ram_mask[ram_mask_MPORT_addr] <= ram_mask_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value <= 1'h0; // @[Counter.scala 62:40]
    end else if (do_enq) begin // @[Decoupled.scala 272:16]
      value <= value + 1'h1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 1'h0; // @[Counter.scala 62:40]
    end else if (do_deq) begin // @[Decoupled.scala 276:16]
      value_1 <= value_1 + 1'h1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_source[initvar] = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_address[initvar] = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_mask[initvar] = _RAND_4[7:0];
  _RAND_5 = {2{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_5[63:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  value = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  value_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  maybe_full = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue_37_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [2:0]  io_enq_bits_opcode,
  input  [3:0]  io_enq_bits_size,
  input  [3:0]  io_enq_bits_source,
  input         io_enq_bits_denied,
  input  [63:0] io_enq_bits_data,
  input         io_enq_bits_corrupt,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_opcode,
  output [1:0]  io_deq_bits_param,
  output [3:0]  io_deq_bits_size,
  output [3:0]  io_deq_bits_source,
  output        io_deq_bits_sink,
  output        io_deq_bits_denied,
  output [63:0] io_deq_bits_data,
  output        io_deq_bits_corrupt
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] ram_opcode [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_param [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_size [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_source [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_sink [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_sink_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_sink_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_sink_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_sink_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_sink_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_sink_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_sink_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_denied [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_denied_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_denied_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_denied_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_denied_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_denied_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_denied_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_denied_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_corrupt [0:1]; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_corrupt_MPORT_en; // @[Decoupled.scala 259:95]
  reg  value; // @[Counter.scala 62:40]
  reg  value_1; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_opcode_io_deq_bits_MPORT_addr = value_1;
  assign ram_opcode_io_deq_bits_MPORT_data = ram_opcode[ram_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_opcode_MPORT_data = io_enq_bits_opcode;
  assign ram_opcode_MPORT_addr = value;
  assign ram_opcode_MPORT_mask = 1'h1;
  assign ram_opcode_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_param_io_deq_bits_MPORT_addr = value_1;
  assign ram_param_io_deq_bits_MPORT_data = ram_param[ram_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_param_MPORT_data = 2'h0;
  assign ram_param_MPORT_addr = value;
  assign ram_param_MPORT_mask = 1'h1;
  assign ram_param_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_size_io_deq_bits_MPORT_addr = value_1;
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_size_MPORT_data = io_enq_bits_size;
  assign ram_size_MPORT_addr = value;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_source_io_deq_bits_MPORT_addr = value_1;
  assign ram_source_io_deq_bits_MPORT_data = ram_source[ram_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_source_MPORT_data = io_enq_bits_source;
  assign ram_source_MPORT_addr = value;
  assign ram_source_MPORT_mask = 1'h1;
  assign ram_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_sink_io_deq_bits_MPORT_en = 1'h1;
  assign ram_sink_io_deq_bits_MPORT_addr = value_1;
  assign ram_sink_io_deq_bits_MPORT_data = ram_sink[ram_sink_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_sink_MPORT_data = 1'h0;
  assign ram_sink_MPORT_addr = value;
  assign ram_sink_MPORT_mask = 1'h1;
  assign ram_sink_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_denied_io_deq_bits_MPORT_en = 1'h1;
  assign ram_denied_io_deq_bits_MPORT_addr = value_1;
  assign ram_denied_io_deq_bits_MPORT_data = ram_denied[ram_denied_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_denied_MPORT_data = io_enq_bits_denied;
  assign ram_denied_MPORT_addr = value;
  assign ram_denied_MPORT_mask = 1'h1;
  assign ram_denied_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_io_deq_bits_MPORT_addr = value_1;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = value;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_corrupt_io_deq_bits_MPORT_en = 1'h1;
  assign ram_corrupt_io_deq_bits_MPORT_addr = value_1;
  assign ram_corrupt_io_deq_bits_MPORT_data = ram_corrupt[ram_corrupt_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_corrupt_MPORT_data = io_enq_bits_corrupt;
  assign ram_corrupt_MPORT_addr = value;
  assign ram_corrupt_MPORT_mask = 1'h1;
  assign ram_corrupt_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_opcode = ram_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_param = ram_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_size = ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_source = ram_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_sink = ram_sink_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_denied = ram_denied_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_corrupt = ram_corrupt_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_opcode_MPORT_en & ram_opcode_MPORT_mask) begin
      ram_opcode[ram_opcode_MPORT_addr] <= ram_opcode_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_param_MPORT_en & ram_param_MPORT_mask) begin
      ram_param[ram_param_MPORT_addr] <= ram_param_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_size_MPORT_en & ram_size_MPORT_mask) begin
      ram_size[ram_size_MPORT_addr] <= ram_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_source_MPORT_en & ram_source_MPORT_mask) begin
      ram_source[ram_source_MPORT_addr] <= ram_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_sink_MPORT_en & ram_sink_MPORT_mask) begin
      ram_sink[ram_sink_MPORT_addr] <= ram_sink_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_denied_MPORT_en & ram_denied_MPORT_mask) begin
      ram_denied[ram_denied_MPORT_addr] <= ram_denied_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_corrupt_MPORT_en & ram_corrupt_MPORT_mask) begin
      ram_corrupt[ram_corrupt_MPORT_addr] <= ram_corrupt_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value <= 1'h0; // @[Counter.scala 62:40]
    end else if (do_enq) begin // @[Decoupled.scala 272:16]
      value <= value + 1'h1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      value_1 <= 1'h0; // @[Counter.scala 62:40]
    end else if (do_deq) begin // @[Decoupled.scala 276:16]
      value_1 <= value_1 + 1'h1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_param[initvar] = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_source[initvar] = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_sink[initvar] = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_denied[initvar] = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_corrupt[initvar] = _RAND_7[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  value = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  value_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  maybe_full = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TLBuffer_22_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [3:0]  auto_in_a_bits_size,
  input  [3:0]  auto_in_a_bits_source,
  input  [31:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_param,
  output [3:0]  auto_in_d_bits_size,
  output [3:0]  auto_in_d_bits_source,
  output        auto_in_d_bits_sink,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [3:0]  auto_out_a_bits_size,
  output [3:0]  auto_out_a_bits_source,
  output [31:0] auto_out_a_bits_address,
  output [7:0]  auto_out_a_bits_mask,
  output [63:0] auto_out_a_bits_data,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [3:0]  auto_out_d_bits_size,
  input  [3:0]  auto_out_d_bits_source,
  input         auto_out_d_bits_denied,
  input  [63:0] auto_out_d_bits_data,
  input         auto_out_d_bits_corrupt
);
  wire  bundleOut_0_a_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_0_a_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_0_a_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_a_q_io_enq_bits_address; // @[Decoupled.scala 361:21]
  wire [7:0] bundleOut_0_a_q_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [63:0] bundleOut_0_a_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleOut_0_a_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleOut_0_a_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_0_a_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] bundleOut_0_a_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [31:0] bundleOut_0_a_q_io_deq_bits_address; // @[Decoupled.scala 361:21]
  wire [7:0] bundleOut_0_a_q_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [63:0] bundleOut_0_a_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_clock; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_reset; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_0_d_q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_0_d_q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [63:0] bundleIn_0_d_q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] bundleIn_0_d_q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] bundleIn_0_d_q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_0_d_q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] bundleIn_0_d_q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [63:0] bundleIn_0_d_q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  bundleIn_0_d_q_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  Queue_36_inVCU118FPGATestHarness bundleOut_0_a_q ( // @[Decoupled.scala 361:21]
    .clock(bundleOut_0_a_q_clock),
    .reset(bundleOut_0_a_q_reset),
    .io_enq_ready(bundleOut_0_a_q_io_enq_ready),
    .io_enq_valid(bundleOut_0_a_q_io_enq_valid),
    .io_enq_bits_opcode(bundleOut_0_a_q_io_enq_bits_opcode),
    .io_enq_bits_size(bundleOut_0_a_q_io_enq_bits_size),
    .io_enq_bits_source(bundleOut_0_a_q_io_enq_bits_source),
    .io_enq_bits_address(bundleOut_0_a_q_io_enq_bits_address),
    .io_enq_bits_mask(bundleOut_0_a_q_io_enq_bits_mask),
    .io_enq_bits_data(bundleOut_0_a_q_io_enq_bits_data),
    .io_deq_ready(bundleOut_0_a_q_io_deq_ready),
    .io_deq_valid(bundleOut_0_a_q_io_deq_valid),
    .io_deq_bits_opcode(bundleOut_0_a_q_io_deq_bits_opcode),
    .io_deq_bits_size(bundleOut_0_a_q_io_deq_bits_size),
    .io_deq_bits_source(bundleOut_0_a_q_io_deq_bits_source),
    .io_deq_bits_address(bundleOut_0_a_q_io_deq_bits_address),
    .io_deq_bits_mask(bundleOut_0_a_q_io_deq_bits_mask),
    .io_deq_bits_data(bundleOut_0_a_q_io_deq_bits_data)
  );
  Queue_37_inVCU118FPGATestHarness bundleIn_0_d_q ( // @[Decoupled.scala 361:21]
    .clock(bundleIn_0_d_q_clock),
    .reset(bundleIn_0_d_q_reset),
    .io_enq_ready(bundleIn_0_d_q_io_enq_ready),
    .io_enq_valid(bundleIn_0_d_q_io_enq_valid),
    .io_enq_bits_opcode(bundleIn_0_d_q_io_enq_bits_opcode),
    .io_enq_bits_size(bundleIn_0_d_q_io_enq_bits_size),
    .io_enq_bits_source(bundleIn_0_d_q_io_enq_bits_source),
    .io_enq_bits_denied(bundleIn_0_d_q_io_enq_bits_denied),
    .io_enq_bits_data(bundleIn_0_d_q_io_enq_bits_data),
    .io_enq_bits_corrupt(bundleIn_0_d_q_io_enq_bits_corrupt),
    .io_deq_ready(bundleIn_0_d_q_io_deq_ready),
    .io_deq_valid(bundleIn_0_d_q_io_deq_valid),
    .io_deq_bits_opcode(bundleIn_0_d_q_io_deq_bits_opcode),
    .io_deq_bits_param(bundleIn_0_d_q_io_deq_bits_param),
    .io_deq_bits_size(bundleIn_0_d_q_io_deq_bits_size),
    .io_deq_bits_source(bundleIn_0_d_q_io_deq_bits_source),
    .io_deq_bits_sink(bundleIn_0_d_q_io_deq_bits_sink),
    .io_deq_bits_denied(bundleIn_0_d_q_io_deq_bits_denied),
    .io_deq_bits_data(bundleIn_0_d_q_io_deq_bits_data),
    .io_deq_bits_corrupt(bundleIn_0_d_q_io_deq_bits_corrupt)
  );
  assign auto_in_a_ready = bundleOut_0_a_q_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_d_valid = bundleIn_0_d_q_io_deq_valid; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_opcode = bundleIn_0_d_q_io_deq_bits_opcode; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_param = bundleIn_0_d_q_io_deq_bits_param; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_size = bundleIn_0_d_q_io_deq_bits_size; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_source = bundleIn_0_d_q_io_deq_bits_source; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_sink = bundleIn_0_d_q_io_deq_bits_sink; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_denied = bundleIn_0_d_q_io_deq_bits_denied; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_data = bundleIn_0_d_q_io_deq_bits_data; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_in_d_bits_corrupt = bundleIn_0_d_q_io_deq_bits_corrupt; // @[Nodes.scala 1210:84 Buffer.scala 38:13]
  assign auto_out_a_valid = bundleOut_0_a_q_io_deq_valid; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_opcode = bundleOut_0_a_q_io_deq_bits_opcode; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_size = bundleOut_0_a_q_io_deq_bits_size; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_source = bundleOut_0_a_q_io_deq_bits_source; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_address = bundleOut_0_a_q_io_deq_bits_address; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_mask = bundleOut_0_a_q_io_deq_bits_mask; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_a_bits_data = bundleOut_0_a_q_io_deq_bits_data; // @[Nodes.scala 1207:84 Buffer.scala 37:13]
  assign auto_out_d_ready = bundleIn_0_d_q_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign bundleOut_0_a_q_clock = clock;
  assign bundleOut_0_a_q_reset = reset;
  assign bundleOut_0_a_q_io_enq_valid = auto_in_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_a_q_io_deq_ready = auto_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_clock = clock;
  assign bundleIn_0_d_q_reset = reset;
  assign bundleIn_0_d_q_io_enq_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_d_q_io_deq_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule
module Queue_38_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [63:0] io_enq_bits_data,
  input  [7:0]  io_enq_bits_strb,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [63:0] io_deq_bits_data,
  output [7:0]  io_deq_bits_strb,
  output        io_deq_bits_last
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] ram_data [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_strb [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_strb_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_strb_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_strb_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_strb_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_strb_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_strb_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_strb_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_last [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  _do_enq_T = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  _do_deq_T = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_11 = io_deq_ready ? 1'h0 : _do_enq_T; // @[Decoupled.scala 304:{26,35}]
  wire  do_enq = empty ? _GEN_11 : _do_enq_T; // @[Decoupled.scala 301:17]
  wire  do_deq = empty ? 1'h0 : _do_deq_T; // @[Decoupled.scala 301:17 303:14]
  assign ram_data_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = 1'h0;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = empty ? _GEN_11 : _do_enq_T;
  assign ram_strb_io_deq_bits_MPORT_en = 1'h1;
  assign ram_strb_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_strb_io_deq_bits_MPORT_data = ram_strb[ram_strb_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_strb_MPORT_data = io_enq_bits_strb;
  assign ram_strb_MPORT_addr = 1'h0;
  assign ram_strb_MPORT_mask = 1'h1;
  assign ram_strb_MPORT_en = empty ? _GEN_11 : _do_enq_T;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = 1'h0;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = empty ? _GEN_11 : _do_enq_T;
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = io_enq_valid | ~empty; // @[Decoupled.scala 288:16 300:{24,39}]
  assign io_deq_bits_data = empty ? io_enq_bits_data : ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_strb = empty ? io_enq_bits_strb : ram_strb_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_last = empty ? io_enq_bits_last : ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  always @(posedge clock) begin
    if (ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_strb_MPORT_en & ram_strb_MPORT_mask) begin
      ram_strb[ram_strb_MPORT_addr] <= ram_strb_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      if (empty) begin // @[Decoupled.scala 301:17]
        if (io_deq_ready) begin // @[Decoupled.scala 304:26]
          maybe_full <= 1'h0; // @[Decoupled.scala 304:35]
        end else begin
          maybe_full <= _do_enq_T;
        end
      end else begin
        maybe_full <= _do_enq_T;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data[initvar] = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_strb[initvar] = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_last[initvar] = _RAND_2[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue_39_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [3:0]  io_enq_bits_id,
  input  [31:0] io_enq_bits_addr,
  input  [7:0]  io_enq_bits_len,
  input  [2:0]  io_enq_bits_size,
  input  [3:0]  io_enq_bits_echo_tl_state_size,
  input  [3:0]  io_enq_bits_echo_tl_state_source,
  input         io_enq_bits_wen,
  input         io_deq_ready,
  output        io_deq_valid,
  output [3:0]  io_deq_bits_id,
  output [31:0] io_deq_bits_addr,
  output [7:0]  io_deq_bits_len,
  output [2:0]  io_deq_bits_size,
  output [1:0]  io_deq_bits_burst,
  output        io_deq_bits_lock,
  output [3:0]  io_deq_bits_cache,
  output [2:0]  io_deq_bits_prot,
  output [3:0]  io_deq_bits_qos,
  output [3:0]  io_deq_bits_echo_tl_state_size,
  output [3:0]  io_deq_bits_echo_tl_state_source,
  output        io_deq_bits_wen
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_id [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_id_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_id_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_id_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_en; // @[Decoupled.scala 259:95]
  reg [31:0] ram_addr [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_addr_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_addr_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [31:0] ram_addr_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [31:0] ram_addr_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_addr_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_addr_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_addr_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_len [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_len_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_len_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_len_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_len_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_len_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_len_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_len_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_size [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_burst [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_burst_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_burst_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_burst_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_burst_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_burst_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_burst_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_burst_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_lock [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_lock_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_lock_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_lock_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_lock_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_lock_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_lock_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_lock_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_cache [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_cache_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_cache_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_cache_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_cache_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_cache_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_cache_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_cache_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_prot [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_prot_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_prot_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_prot_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_prot_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_prot_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_prot_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_prot_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_qos [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_qos_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_qos_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_qos_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_qos_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_qos_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_qos_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_qos_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_echo_tl_state_size [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_echo_tl_state_source [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_wen [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_wen_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_wen_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_wen_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_wen_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_wen_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_wen_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_wen_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  _do_enq_T = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  _do_deq_T = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_20 = io_deq_ready ? 1'h0 : _do_enq_T; // @[Decoupled.scala 304:{26,35}]
  wire  do_enq = empty ? _GEN_20 : _do_enq_T; // @[Decoupled.scala 301:17]
  wire  do_deq = empty ? 1'h0 : _do_deq_T; // @[Decoupled.scala 301:17 303:14]
  assign ram_id_io_deq_bits_MPORT_en = 1'h1;
  assign ram_id_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_id_io_deq_bits_MPORT_data = ram_id[ram_id_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_id_MPORT_data = io_enq_bits_id;
  assign ram_id_MPORT_addr = 1'h0;
  assign ram_id_MPORT_mask = 1'h1;
  assign ram_id_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_addr_io_deq_bits_MPORT_en = 1'h1;
  assign ram_addr_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_addr_io_deq_bits_MPORT_data = ram_addr[ram_addr_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_addr_MPORT_data = io_enq_bits_addr;
  assign ram_addr_MPORT_addr = 1'h0;
  assign ram_addr_MPORT_mask = 1'h1;
  assign ram_addr_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_len_io_deq_bits_MPORT_en = 1'h1;
  assign ram_len_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_len_io_deq_bits_MPORT_data = ram_len[ram_len_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_len_MPORT_data = io_enq_bits_len;
  assign ram_len_MPORT_addr = 1'h0;
  assign ram_len_MPORT_mask = 1'h1;
  assign ram_len_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_size_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_size_io_deq_bits_MPORT_data = ram_size[ram_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_size_MPORT_data = io_enq_bits_size;
  assign ram_size_MPORT_addr = 1'h0;
  assign ram_size_MPORT_mask = 1'h1;
  assign ram_size_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_burst_io_deq_bits_MPORT_en = 1'h1;
  assign ram_burst_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_burst_io_deq_bits_MPORT_data = ram_burst[ram_burst_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_burst_MPORT_data = 2'h1;
  assign ram_burst_MPORT_addr = 1'h0;
  assign ram_burst_MPORT_mask = 1'h1;
  assign ram_burst_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_lock_io_deq_bits_MPORT_en = 1'h1;
  assign ram_lock_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_lock_io_deq_bits_MPORT_data = ram_lock[ram_lock_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_lock_MPORT_data = 1'h0;
  assign ram_lock_MPORT_addr = 1'h0;
  assign ram_lock_MPORT_mask = 1'h1;
  assign ram_lock_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_cache_io_deq_bits_MPORT_en = 1'h1;
  assign ram_cache_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_cache_io_deq_bits_MPORT_data = ram_cache[ram_cache_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_cache_MPORT_data = 4'h0;
  assign ram_cache_MPORT_addr = 1'h0;
  assign ram_cache_MPORT_mask = 1'h1;
  assign ram_cache_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_prot_io_deq_bits_MPORT_en = 1'h1;
  assign ram_prot_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_prot_io_deq_bits_MPORT_data = ram_prot[ram_prot_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_prot_MPORT_data = 3'h1;
  assign ram_prot_MPORT_addr = 1'h0;
  assign ram_prot_MPORT_mask = 1'h1;
  assign ram_prot_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_qos_io_deq_bits_MPORT_en = 1'h1;
  assign ram_qos_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_qos_io_deq_bits_MPORT_data = ram_qos[ram_qos_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_qos_MPORT_data = 4'h0;
  assign ram_qos_MPORT_addr = 1'h0;
  assign ram_qos_MPORT_mask = 1'h1;
  assign ram_qos_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_data =
    ram_echo_tl_state_size[ram_echo_tl_state_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_echo_tl_state_size_MPORT_data = io_enq_bits_echo_tl_state_size;
  assign ram_echo_tl_state_size_MPORT_addr = 1'h0;
  assign ram_echo_tl_state_size_MPORT_mask = 1'h1;
  assign ram_echo_tl_state_size_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_data =
    ram_echo_tl_state_source[ram_echo_tl_state_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_echo_tl_state_source_MPORT_data = io_enq_bits_echo_tl_state_source;
  assign ram_echo_tl_state_source_MPORT_addr = 1'h0;
  assign ram_echo_tl_state_source_MPORT_mask = 1'h1;
  assign ram_echo_tl_state_source_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign ram_wen_io_deq_bits_MPORT_en = 1'h1;
  assign ram_wen_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_wen_io_deq_bits_MPORT_data = ram_wen[ram_wen_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_wen_MPORT_data = io_enq_bits_wen;
  assign ram_wen_MPORT_addr = 1'h0;
  assign ram_wen_MPORT_mask = 1'h1;
  assign ram_wen_MPORT_en = empty ? _GEN_20 : _do_enq_T;
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = io_enq_valid | ~empty; // @[Decoupled.scala 288:16 300:{24,39}]
  assign io_deq_bits_id = empty ? io_enq_bits_id : ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_addr = empty ? io_enq_bits_addr : ram_addr_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_len = empty ? io_enq_bits_len : ram_len_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_size = empty ? io_enq_bits_size : ram_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_burst = empty ? 2'h1 : ram_burst_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_lock = empty ? 1'h0 : ram_lock_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_cache = empty ? 4'h0 : ram_cache_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_prot = empty ? 3'h1 : ram_prot_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_qos = empty ? 4'h0 : ram_qos_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_echo_tl_state_size = empty ? io_enq_bits_echo_tl_state_size :
    ram_echo_tl_state_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_echo_tl_state_source = empty ? io_enq_bits_echo_tl_state_source :
    ram_echo_tl_state_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_wen = empty ? io_enq_bits_wen : ram_wen_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  always @(posedge clock) begin
    if (ram_id_MPORT_en & ram_id_MPORT_mask) begin
      ram_id[ram_id_MPORT_addr] <= ram_id_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_addr_MPORT_en & ram_addr_MPORT_mask) begin
      ram_addr[ram_addr_MPORT_addr] <= ram_addr_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_len_MPORT_en & ram_len_MPORT_mask) begin
      ram_len[ram_len_MPORT_addr] <= ram_len_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_size_MPORT_en & ram_size_MPORT_mask) begin
      ram_size[ram_size_MPORT_addr] <= ram_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_burst_MPORT_en & ram_burst_MPORT_mask) begin
      ram_burst[ram_burst_MPORT_addr] <= ram_burst_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_lock_MPORT_en & ram_lock_MPORT_mask) begin
      ram_lock[ram_lock_MPORT_addr] <= ram_lock_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_cache_MPORT_en & ram_cache_MPORT_mask) begin
      ram_cache[ram_cache_MPORT_addr] <= ram_cache_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_prot_MPORT_en & ram_prot_MPORT_mask) begin
      ram_prot[ram_prot_MPORT_addr] <= ram_prot_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_qos_MPORT_en & ram_qos_MPORT_mask) begin
      ram_qos[ram_qos_MPORT_addr] <= ram_qos_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_echo_tl_state_size_MPORT_en & ram_echo_tl_state_size_MPORT_mask) begin
      ram_echo_tl_state_size[ram_echo_tl_state_size_MPORT_addr] <= ram_echo_tl_state_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_echo_tl_state_source_MPORT_en & ram_echo_tl_state_source_MPORT_mask) begin
      ram_echo_tl_state_source[ram_echo_tl_state_source_MPORT_addr] <= ram_echo_tl_state_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_wen_MPORT_en & ram_wen_MPORT_mask) begin
      ram_wen[ram_wen_MPORT_addr] <= ram_wen_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      if (empty) begin // @[Decoupled.scala 301:17]
        if (io_deq_ready) begin // @[Decoupled.scala 304:26]
          maybe_full <= 1'h0; // @[Decoupled.scala 304:35]
        end else begin
          maybe_full <= _do_enq_T;
        end
      end else begin
        maybe_full <= _do_enq_T;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_len[initvar] = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_burst[initvar] = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_lock[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_cache[initvar] = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_prot[initvar] = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_qos[initvar] = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_echo_tl_state_size[initvar] = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_echo_tl_state_source[initvar] = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_wen[initvar] = _RAND_11[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  maybe_full = _RAND_12[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TLToAXI4_1_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [3:0]  auto_in_a_bits_size,
  input  [3:0]  auto_in_a_bits_source,
  input  [31:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [3:0]  auto_in_d_bits_size,
  output [3:0]  auto_in_d_bits_source,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  output [3:0]  auto_out_aw_bits_echo_tl_state_size,
  output [3:0]  auto_out_aw_bits_echo_tl_state_source,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input  [3:0]  auto_out_b_bits_echo_tl_state_size,
  input  [3:0]  auto_out_b_bits_echo_tl_state_source,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output [3:0]  auto_out_ar_bits_echo_tl_state_size,
  output [3:0]  auto_out_ar_bits_echo_tl_state_source,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input  [3:0]  auto_out_r_bits_echo_tl_state_size,
  input  [3:0]  auto_out_r_bits_echo_tl_state_source,
  input         auto_out_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire  deq_clock; // @[Decoupled.scala 361:21]
  wire  deq_reset; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [63:0] deq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] deq_io_enq_bits_strb; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_bits_last; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [63:0] deq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [7:0] deq_io_deq_bits_strb; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_bits_last; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_clock; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_reset; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [31:0] queue_arw_deq_io_enq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] queue_arw_deq_io_enq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_enq_bits_echo_tl_state_size; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_enq_bits_echo_tl_state_source; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_enq_bits_wen; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [31:0] queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 361:21]
  wire [2:0] queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 361:21]
  wire [3:0] queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 361:21]
  wire  queue_arw_deq_io_deq_bits_wen; // @[Decoupled.scala 361:21]
  wire  a_isPut = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  reg  count_10; // @[ToAXI4.scala 254:28]
  wire  idle_9 = ~count_10; // @[ToAXI4.scala 256:26]
  reg  count_9; // @[ToAXI4.scala 254:28]
  wire  idle_8 = ~count_9; // @[ToAXI4.scala 256:26]
  reg  count_8; // @[ToAXI4.scala 254:28]
  wire  idle_7 = ~count_8; // @[ToAXI4.scala 256:26]
  reg  count_7; // @[ToAXI4.scala 254:28]
  wire  idle_6 = ~count_7; // @[ToAXI4.scala 256:26]
  reg  count_6; // @[ToAXI4.scala 254:28]
  wire  idle_5 = ~count_6; // @[ToAXI4.scala 256:26]
  reg  count_5; // @[ToAXI4.scala 254:28]
  wire  idle_4 = ~count_5; // @[ToAXI4.scala 256:26]
  reg  count_4; // @[ToAXI4.scala 254:28]
  wire  idle_3 = ~count_4; // @[ToAXI4.scala 256:26]
  reg  count_3; // @[ToAXI4.scala 254:28]
  wire  idle_2 = ~count_3; // @[ToAXI4.scala 256:26]
  reg  count_2; // @[ToAXI4.scala 254:28]
  wire  idle_1 = ~count_2; // @[ToAXI4.scala 256:26]
  reg  count_1; // @[ToAXI4.scala 254:28]
  wire  idle = ~count_1; // @[ToAXI4.scala 256:26]
  wire  _GEN_13 = 4'h1 == auto_in_a_bits_source ? count_2 : count_1; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_14 = 4'h2 == auto_in_a_bits_source ? count_3 : _GEN_13; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_15 = 4'h3 == auto_in_a_bits_source ? count_4 : _GEN_14; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_16 = 4'h4 == auto_in_a_bits_source ? count_5 : _GEN_15; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_17 = 4'h5 == auto_in_a_bits_source ? count_6 : _GEN_16; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_18 = 4'h6 == auto_in_a_bits_source ? count_7 : _GEN_17; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_19 = 4'h7 == auto_in_a_bits_source ? count_8 : _GEN_18; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_20 = 4'h8 == auto_in_a_bits_source ? count_9 : _GEN_19; // @[ToAXI4.scala 195:{49,49}]
  wire  _GEN_21 = 4'h9 == auto_in_a_bits_source ? count_10 : _GEN_20; // @[ToAXI4.scala 195:{49,49}]
  reg [7:0] counter; // @[Edges.scala 228:27]
  wire  a_first = counter == 8'h0; // @[Edges.scala 230:25]
  wire  stall = _GEN_21 & a_first; // @[ToAXI4.scala 195:49]
  wire  _bundleIn_0_a_ready_T = ~stall; // @[ToAXI4.scala 196:21]
  reg  doneAW; // @[ToAXI4.scala 161:30]
  wire  out_arw_ready = queue_arw_deq_io_enq_ready; // @[ToAXI4.scala 147:25 Decoupled.scala 365:17]
  wire  _bundleIn_0_a_ready_T_1 = doneAW | out_arw_ready; // @[ToAXI4.scala 196:52]
  wire  out_w_ready = deq_io_enq_ready; // @[ToAXI4.scala 148:23 Decoupled.scala 365:17]
  wire  _bundleIn_0_a_ready_T_3 = a_isPut ? (doneAW | out_arw_ready) & out_w_ready : out_arw_ready; // @[ToAXI4.scala 196:34]
  wire  bundleIn_0_a_ready = ~stall & _bundleIn_0_a_ready_T_3; // @[ToAXI4.scala 196:28]
  wire  _T = bundleIn_0_a_ready & auto_in_a_valid; // @[Decoupled.scala 50:35]
  wire [25:0] _beats1_decode_T_1 = 26'h7ff << auto_in_a_bits_size; // @[package.scala 234:77]
  wire [10:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[10:0]; // @[package.scala 234:46]
  wire [7:0] beats1_decode = _beats1_decode_T_3[10:3]; // @[Edges.scala 219:59]
  wire [7:0] beats1 = a_isPut ? beats1_decode : 8'h0; // @[Edges.scala 220:14]
  wire [7:0] counter1 = counter - 8'h1; // @[Edges.scala 229:28]
  wire  a_last = counter == 8'h1 | beats1 == 8'h0; // @[Edges.scala 231:37]
  wire  queue_arw_bits_wen = queue_arw_deq_io_deq_bits_wen; // @[Decoupled.scala 401:19 402:14]
  wire  queue_arw_valid = queue_arw_deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  wire [3:0] _GEN_3 = 4'h1 == auto_in_a_bits_source ? 4'h1 : 4'h0; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] _GEN_4 = 4'h2 == auto_in_a_bits_source ? 4'h2 : _GEN_3; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] _GEN_5 = 4'h3 == auto_in_a_bits_source ? 4'h3 : _GEN_4; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] _GEN_6 = 4'h4 == auto_in_a_bits_source ? 4'h4 : _GEN_5; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] _GEN_7 = 4'h5 == auto_in_a_bits_source ? 4'h5 : _GEN_6; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] _GEN_8 = 4'h6 == auto_in_a_bits_source ? 4'h6 : _GEN_7; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] _GEN_9 = 4'h7 == auto_in_a_bits_source ? 4'h7 : _GEN_8; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] _GEN_10 = 4'h8 == auto_in_a_bits_source ? 4'h8 : _GEN_9; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] out_arw_bits_id = 4'h9 == auto_in_a_bits_source ? 4'h9 : _GEN_10; // @[ToAXI4.scala 166:{17,17}]
  wire [3:0] _out_arw_bits_size_T_1 = auto_in_a_bits_size >= 4'h3 ? 4'h3 : auto_in_a_bits_size; // @[ToAXI4.scala 169:23]
  wire  _out_arw_valid_T_1 = _bundleIn_0_a_ready_T & auto_in_a_valid; // @[ToAXI4.scala 197:31]
  wire  _out_arw_valid_T_4 = a_isPut ? ~doneAW & out_w_ready : 1'h1; // @[ToAXI4.scala 197:51]
  wire  out_arw_valid = _bundleIn_0_a_ready_T & auto_in_a_valid & _out_arw_valid_T_4; // @[ToAXI4.scala 197:45]
  reg  r_holds_d; // @[ToAXI4.scala 206:30]
  reg [2:0] b_delay; // @[ToAXI4.scala 209:24]
  wire  r_wins = auto_out_r_valid & b_delay != 3'h7 | r_holds_d; // @[ToAXI4.scala 215:57]
  wire  bundleOut_0_r_ready = auto_in_d_ready & r_wins; // @[ToAXI4.scala 217:33]
  wire  _T_2 = bundleOut_0_r_ready & auto_out_r_valid; // @[Decoupled.scala 50:35]
  wire  bundleOut_0_b_ready = auto_in_d_ready & ~r_wins; // @[ToAXI4.scala 218:33]
  wire [2:0] _b_delay_T_1 = b_delay + 3'h1; // @[ToAXI4.scala 211:28]
  wire  bundleIn_0_d_valid = r_wins ? auto_out_r_valid : auto_out_b_valid; // @[ToAXI4.scala 219:24]
  reg  r_first; // @[ToAXI4.scala 224:28]
  wire  _GEN_24 = _T_2 ? auto_out_r_bits_last : r_first; // @[ToAXI4.scala 225:27 224:28 225:37]
  wire  _r_denied_T = auto_out_r_bits_resp == 2'h3; // @[ToAXI4.scala 226:39]
  reg  r_denied_r; // @[Reg.scala 16:16]
  wire  _GEN_25 = r_first ? _r_denied_T : r_denied_r; // @[Reg.scala 16:16 17:{18,22}]
  wire  r_corrupt = auto_out_r_bits_resp != 2'h0; // @[ToAXI4.scala 227:39]
  wire  b_denied = auto_out_b_bits_resp != 2'h0; // @[ToAXI4.scala 228:39]
  wire  r_d_corrupt = r_corrupt | _GEN_25; // @[ToAXI4.scala 230:100]
  wire [15:0] _a_sel_T = 16'h1 << out_arw_bits_id; // @[OneHot.scala 64:12]
  wire  a_sel_0 = _a_sel_T[0]; // @[ToAXI4.scala 242:58]
  wire  a_sel_1 = _a_sel_T[1]; // @[ToAXI4.scala 242:58]
  wire  a_sel_2 = _a_sel_T[2]; // @[ToAXI4.scala 242:58]
  wire  a_sel_3 = _a_sel_T[3]; // @[ToAXI4.scala 242:58]
  wire  a_sel_4 = _a_sel_T[4]; // @[ToAXI4.scala 242:58]
  wire  a_sel_5 = _a_sel_T[5]; // @[ToAXI4.scala 242:58]
  wire  a_sel_6 = _a_sel_T[6]; // @[ToAXI4.scala 242:58]
  wire  a_sel_7 = _a_sel_T[7]; // @[ToAXI4.scala 242:58]
  wire  a_sel_8 = _a_sel_T[8]; // @[ToAXI4.scala 242:58]
  wire  a_sel_9 = _a_sel_T[9]; // @[ToAXI4.scala 242:58]
  wire [3:0] d_sel_shiftAmount = r_wins ? auto_out_r_bits_id : auto_out_b_bits_id; // @[ToAXI4.scala 243:31]
  wire [15:0] _d_sel_T_1 = 16'h1 << d_sel_shiftAmount; // @[OneHot.scala 64:12]
  wire  d_sel_0 = _d_sel_T_1[0]; // @[ToAXI4.scala 243:93]
  wire  d_sel_1 = _d_sel_T_1[1]; // @[ToAXI4.scala 243:93]
  wire  d_sel_2 = _d_sel_T_1[2]; // @[ToAXI4.scala 243:93]
  wire  d_sel_3 = _d_sel_T_1[3]; // @[ToAXI4.scala 243:93]
  wire  d_sel_4 = _d_sel_T_1[4]; // @[ToAXI4.scala 243:93]
  wire  d_sel_5 = _d_sel_T_1[5]; // @[ToAXI4.scala 243:93]
  wire  d_sel_6 = _d_sel_T_1[6]; // @[ToAXI4.scala 243:93]
  wire  d_sel_7 = _d_sel_T_1[7]; // @[ToAXI4.scala 243:93]
  wire  d_sel_8 = _d_sel_T_1[8]; // @[ToAXI4.scala 243:93]
  wire  d_sel_9 = _d_sel_T_1[9]; // @[ToAXI4.scala 243:93]
  wire  d_last = r_wins ? auto_out_r_bits_last : 1'h1; // @[ToAXI4.scala 244:23]
  wire  _inc_T = out_arw_ready & out_arw_valid; // @[Decoupled.scala 50:35]
  wire  inc = a_sel_0 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  _dec_T_1 = auto_in_d_ready & bundleIn_0_d_valid; // @[Decoupled.scala 50:35]
  wire  dec = d_sel_0 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_2 = count_1 + inc; // @[ToAXI4.scala 260:24]
  wire  _T_10 = ~reset; // @[ToAXI4.scala 262:16]
  wire  inc_1 = a_sel_1 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_1 = d_sel_1 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_6 = count_2 + inc_1; // @[ToAXI4.scala 260:24]
  wire  inc_2 = a_sel_2 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_2 = d_sel_2 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_10 = count_3 + inc_2; // @[ToAXI4.scala 260:24]
  wire  inc_3 = a_sel_3 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_3 = d_sel_3 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_14 = count_4 + inc_3; // @[ToAXI4.scala 260:24]
  wire  inc_4 = a_sel_4 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_4 = d_sel_4 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_18 = count_5 + inc_4; // @[ToAXI4.scala 260:24]
  wire  inc_5 = a_sel_5 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_5 = d_sel_5 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_22 = count_6 + inc_5; // @[ToAXI4.scala 260:24]
  wire  inc_6 = a_sel_6 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_6 = d_sel_6 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_26 = count_7 + inc_6; // @[ToAXI4.scala 260:24]
  wire  inc_7 = a_sel_7 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_7 = d_sel_7 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_30 = count_8 + inc_7; // @[ToAXI4.scala 260:24]
  wire  inc_8 = a_sel_8 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_8 = d_sel_8 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_34 = count_9 + inc_8; // @[ToAXI4.scala 260:24]
  wire  inc_9 = a_sel_9 & _inc_T; // @[ToAXI4.scala 258:22]
  wire  dec_9 = d_sel_9 & d_last & _dec_T_1; // @[ToAXI4.scala 259:32]
  wire  _count_T_38 = count_10 + inc_9; // @[ToAXI4.scala 260:24]
  Queue_38_inVCU118FPGATestHarness deq ( // @[Decoupled.scala 361:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_data(deq_io_enq_bits_data),
    .io_enq_bits_strb(deq_io_enq_bits_strb),
    .io_enq_bits_last(deq_io_enq_bits_last),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_data(deq_io_deq_bits_data),
    .io_deq_bits_strb(deq_io_deq_bits_strb),
    .io_deq_bits_last(deq_io_deq_bits_last)
  );
  Queue_39_inVCU118FPGATestHarness queue_arw_deq ( // @[Decoupled.scala 361:21]
    .clock(queue_arw_deq_clock),
    .reset(queue_arw_deq_reset),
    .io_enq_ready(queue_arw_deq_io_enq_ready),
    .io_enq_valid(queue_arw_deq_io_enq_valid),
    .io_enq_bits_id(queue_arw_deq_io_enq_bits_id),
    .io_enq_bits_addr(queue_arw_deq_io_enq_bits_addr),
    .io_enq_bits_len(queue_arw_deq_io_enq_bits_len),
    .io_enq_bits_size(queue_arw_deq_io_enq_bits_size),
    .io_enq_bits_echo_tl_state_size(queue_arw_deq_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(queue_arw_deq_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_wen(queue_arw_deq_io_enq_bits_wen),
    .io_deq_ready(queue_arw_deq_io_deq_ready),
    .io_deq_valid(queue_arw_deq_io_deq_valid),
    .io_deq_bits_id(queue_arw_deq_io_deq_bits_id),
    .io_deq_bits_addr(queue_arw_deq_io_deq_bits_addr),
    .io_deq_bits_len(queue_arw_deq_io_deq_bits_len),
    .io_deq_bits_size(queue_arw_deq_io_deq_bits_size),
    .io_deq_bits_burst(queue_arw_deq_io_deq_bits_burst),
    .io_deq_bits_lock(queue_arw_deq_io_deq_bits_lock),
    .io_deq_bits_cache(queue_arw_deq_io_deq_bits_cache),
    .io_deq_bits_prot(queue_arw_deq_io_deq_bits_prot),
    .io_deq_bits_qos(queue_arw_deq_io_deq_bits_qos),
    .io_deq_bits_echo_tl_state_size(queue_arw_deq_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(queue_arw_deq_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_wen(queue_arw_deq_io_deq_bits_wen)
  );
  assign auto_in_a_ready = ~stall & _bundleIn_0_a_ready_T_3; // @[ToAXI4.scala 196:28]
  assign auto_in_d_valid = r_wins ? auto_out_r_valid : auto_out_b_valid; // @[ToAXI4.scala 219:24]
  assign auto_in_d_bits_opcode = r_wins ? 3'h1 : 3'h0; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_size = r_wins ? auto_out_r_bits_echo_tl_state_size : auto_out_b_bits_echo_tl_state_size; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_source = r_wins ? auto_out_r_bits_echo_tl_state_source : auto_out_b_bits_echo_tl_state_source; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_denied = r_wins ? _GEN_25 : b_denied; // @[ToAXI4.scala 237:23]
  assign auto_in_d_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_corrupt = r_wins & r_d_corrupt; // @[ToAXI4.scala 237:23]
  assign auto_out_aw_valid = queue_arw_valid & queue_arw_bits_wen; // @[ToAXI4.scala 156:39]
  assign auto_out_aw_bits_id = queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_addr = queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_len = queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_size = queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_burst = queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_lock = queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_cache = queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_prot = queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_qos = queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_echo_tl_state_size = queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_aw_bits_echo_tl_state_source = queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_w_valid = deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_out_w_bits_data = deq_io_deq_bits_data; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_w_bits_strb = deq_io_deq_bits_strb; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_w_bits_last = deq_io_deq_bits_last; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_b_ready = auto_in_d_ready & ~r_wins; // @[ToAXI4.scala 218:33]
  assign auto_out_ar_valid = queue_arw_valid & ~queue_arw_bits_wen; // @[ToAXI4.scala 155:39]
  assign auto_out_ar_bits_id = queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_addr = queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_len = queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_size = queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_burst = queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_lock = queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_cache = queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_prot = queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_qos = queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_echo_tl_state_size = queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_ar_bits_echo_tl_state_source = queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_r_ready = auto_in_d_ready & r_wins; // @[ToAXI4.scala 217:33]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = _out_arw_valid_T_1 & a_isPut & _bundleIn_0_a_ready_T_1; // @[ToAXI4.scala 199:54]
  assign deq_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_strb = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_last = counter == 8'h1 | beats1 == 8'h0; // @[Edges.scala 231:37]
  assign deq_io_deq_ready = auto_out_w_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign queue_arw_deq_clock = clock;
  assign queue_arw_deq_reset = reset;
  assign queue_arw_deq_io_enq_valid = _bundleIn_0_a_ready_T & auto_in_a_valid & _out_arw_valid_T_4; // @[ToAXI4.scala 197:45]
  assign queue_arw_deq_io_enq_bits_id = 4'h9 == auto_in_a_bits_source ? 4'h9 : _GEN_10; // @[ToAXI4.scala 166:{17,17}]
  assign queue_arw_deq_io_enq_bits_addr = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign queue_arw_deq_io_enq_bits_len = _beats1_decode_T_3[10:3]; // @[ToAXI4.scala 168:84]
  assign queue_arw_deq_io_enq_bits_size = _out_arw_bits_size_T_1[2:0]; // @[ToAXI4.scala 147:25 169:17]
  assign queue_arw_deq_io_enq_bits_echo_tl_state_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign queue_arw_deq_io_enq_bits_echo_tl_state_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign queue_arw_deq_io_enq_bits_wen = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  assign queue_arw_deq_io_deq_ready = queue_arw_bits_wen ? auto_out_aw_ready : auto_out_ar_ready; // @[ToAXI4.scala 157:29]
  always @(posedge clock) begin
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_10 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_10 <= _count_T_38 - dec_9; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_9 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_9 <= _count_T_34 - dec_8; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_8 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_8 <= _count_T_30 - dec_7; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_7 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_7 <= _count_T_26 - dec_6; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_6 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_6 <= _count_T_22 - dec_5; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_5 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_5 <= _count_T_18 - dec_4; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_4 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_4 <= _count_T_14 - dec_3; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_3 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_3 <= _count_T_10 - dec_2; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_2 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_2 <= _count_T_6 - dec_1; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[ToAXI4.scala 254:28]
      count_1 <= 1'h0; // @[ToAXI4.scala 254:28]
    end else begin
      count_1 <= _count_T_2 - dec; // @[ToAXI4.scala 260:15]
    end
    if (reset) begin // @[Edges.scala 228:27]
      counter <= 8'h0; // @[Edges.scala 228:27]
    end else if (_T) begin // @[Edges.scala 234:17]
      if (a_first) begin // @[Edges.scala 235:21]
        if (a_isPut) begin // @[Edges.scala 220:14]
          counter <= beats1_decode;
        end else begin
          counter <= 8'h0;
        end
      end else begin
        counter <= counter1;
      end
    end
    if (reset) begin // @[ToAXI4.scala 161:30]
      doneAW <= 1'h0; // @[ToAXI4.scala 161:30]
    end else if (_T) begin // @[ToAXI4.scala 162:26]
      doneAW <= ~a_last; // @[ToAXI4.scala 162:35]
    end
    if (reset) begin // @[ToAXI4.scala 206:30]
      r_holds_d <= 1'h0; // @[ToAXI4.scala 206:30]
    end else if (_T_2) begin // @[ToAXI4.scala 207:27]
      r_holds_d <= ~auto_out_r_bits_last; // @[ToAXI4.scala 207:39]
    end
    if (auto_out_b_valid & ~bundleOut_0_b_ready) begin // @[ToAXI4.scala 210:42]
      b_delay <= _b_delay_T_1; // @[ToAXI4.scala 211:17]
    end else begin
      b_delay <= 3'h0; // @[ToAXI4.scala 213:17]
    end
    r_first <= reset | _GEN_24; // @[ToAXI4.scala 224:{28,28}]
    if (r_first) begin // @[Reg.scala 17:18]
      r_denied_r <= _r_denied_T; // @[Reg.scala 17:22]
    end
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec | count_1) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec | count_1)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc | idle) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc | idle)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_1 | count_2) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_1 | count_2)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_1 | idle_1) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_1 | idle_1)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_2 | count_3) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_2 | count_3)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_2 | idle_2) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_2 | idle_2)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_3 | count_4) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_3 | count_4)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_3 | idle_3) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_3 | idle_3)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_4 | count_5) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_4 | count_5)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_4 | idle_4) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_4 | idle_4)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_5 | count_6) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_5 | count_6)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_5 | idle_5) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_5 | idle_5)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_6 | count_7) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_6 | count_7)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_6 | idle_6) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_6 | idle_6)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_7 | count_8) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_7 | count_8)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_7 | idle_7) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_7 | idle_7)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_8 | count_9) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_8 | count_9)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_8 | idle_8) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_8 | idle_8)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~dec_9 | count_10) & ~reset) begin
          $fatal; // @[ToAXI4.scala 262:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~dec_9 | count_10)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:262 assert (!dec || count =/= UInt(0))        // underflow\n"); // @[ToAXI4.scala 262:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~inc_9 | idle_9) & _T_10) begin
          $fatal; // @[ToAXI4.scala 263:16]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10 & ~(~inc_9 | idle_9)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at ToAXI4.scala:263 assert (!inc || count =/= UInt(maxCount)) // overflow\n"); // @[ToAXI4.scala 263:16]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  count_10 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  count_9 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  count_8 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  count_7 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  count_6 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  count_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  count_4 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  count_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  count_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  count_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  counter = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  doneAW = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  r_holds_d = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  b_delay = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  r_first = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  r_denied_r = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AXI4IdIndexer_1_inVCU118FPGATestHarness(
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  input  [3:0]  auto_in_aw_bits_qos,
  input  [3:0]  auto_in_aw_bits_echo_tl_state_size,
  input  [3:0]  auto_in_aw_bits_echo_tl_state_source,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output [3:0]  auto_in_b_bits_echo_tl_state_size,
  output [3:0]  auto_in_b_bits_echo_tl_state_source,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input  [3:0]  auto_in_ar_bits_qos,
  input  [3:0]  auto_in_ar_bits_echo_tl_state_size,
  input  [3:0]  auto_in_ar_bits_echo_tl_state_source,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output [3:0]  auto_in_r_bits_echo_tl_state_size,
  output [3:0]  auto_in_r_bits_echo_tl_state_source,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  output [3:0]  auto_out_aw_bits_echo_tl_state_size,
  output [3:0]  auto_out_aw_bits_echo_tl_state_source,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input  [3:0]  auto_out_b_bits_echo_tl_state_size,
  input  [3:0]  auto_out_b_bits_echo_tl_state_source,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output [3:0]  auto_out_ar_bits_echo_tl_state_size,
  output [3:0]  auto_out_ar_bits_echo_tl_state_source,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input  [3:0]  auto_out_r_bits_echo_tl_state_size,
  input  [3:0]  auto_out_r_bits_echo_tl_state_source,
  input         auto_out_r_bits_last
);
  assign auto_in_aw_ready = auto_out_aw_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_w_ready = auto_out_w_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_valid = auto_out_b_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_echo_tl_state_size = auto_out_b_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_echo_tl_state_source = auto_out_b_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_ar_ready = auto_out_ar_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_valid = auto_out_r_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_aw_valid = auto_in_aw_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_qos = auto_in_aw_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_echo_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_echo_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_valid = auto_in_w_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_b_ready = auto_in_b_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_valid = auto_in_ar_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_qos = auto_in_ar_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_echo_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_echo_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_r_ready = auto_in_r_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule
module Queue_40_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [3:0]  io_enq_bits_id,
  input  [63:0] io_enq_bits_data,
  input  [1:0]  io_enq_bits_resp,
  input  [3:0]  io_enq_bits_echo_tl_state_size,
  input  [3:0]  io_enq_bits_echo_tl_state_source,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [3:0]  io_deq_bits_id,
  output [63:0] io_deq_bits_data,
  output [1:0]  io_deq_bits_resp,
  output [3:0]  io_deq_bits_echo_tl_state_size,
  output [3:0]  io_deq_bits_echo_tl_state_source,
  output        io_deq_bits_last
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_id [0:7]; // @[Decoupled.scala 259:95]
  wire  ram_id_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_id_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_id_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_id_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_id_MPORT_en; // @[Decoupled.scala 259:95]
  reg [63:0] ram_data [0:7]; // @[Decoupled.scala 259:95]
  wire  ram_data_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [63:0] ram_data_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_data_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 259:95]
  reg [1:0] ram_resp [0:7]; // @[Decoupled.scala 259:95]
  wire  ram_resp_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_resp_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [1:0] ram_resp_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [1:0] ram_resp_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_resp_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_resp_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_resp_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_echo_tl_state_size [0:7]; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_echo_tl_state_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_echo_tl_state_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_echo_tl_state_source [0:7]; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_echo_tl_state_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_echo_tl_state_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_echo_tl_state_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_echo_tl_state_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_last [0:7]; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [2:0] ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_last_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] enq_ptr_value; // @[Counter.scala 62:40]
  reg [2:0] deq_ptr_value; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _value_T_1 = enq_ptr_value + 3'h1; // @[Counter.scala 78:24]
  wire [2:0] _value_T_3 = deq_ptr_value + 3'h1; // @[Counter.scala 78:24]
  assign ram_id_io_deq_bits_MPORT_en = 1'h1;
  assign ram_id_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_id_io_deq_bits_MPORT_data = ram_id[ram_id_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_id_MPORT_data = io_enq_bits_id;
  assign ram_id_MPORT_addr = enq_ptr_value;
  assign ram_id_MPORT_mask = 1'h1;
  assign ram_id_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = enq_ptr_value;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_resp_io_deq_bits_MPORT_en = 1'h1;
  assign ram_resp_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_resp_io_deq_bits_MPORT_data = ram_resp[ram_resp_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_resp_MPORT_data = io_enq_bits_resp;
  assign ram_resp_MPORT_addr = enq_ptr_value;
  assign ram_resp_MPORT_mask = 1'h1;
  assign ram_resp_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_echo_tl_state_size_io_deq_bits_MPORT_data =
    ram_echo_tl_state_size[ram_echo_tl_state_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_echo_tl_state_size_MPORT_data = io_enq_bits_echo_tl_state_size;
  assign ram_echo_tl_state_size_MPORT_addr = enq_ptr_value;
  assign ram_echo_tl_state_size_MPORT_mask = 1'h1;
  assign ram_echo_tl_state_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_echo_tl_state_source_io_deq_bits_MPORT_data =
    ram_echo_tl_state_source[ram_echo_tl_state_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_echo_tl_state_source_MPORT_data = io_enq_bits_echo_tl_state_source;
  assign ram_echo_tl_state_source_MPORT_addr = enq_ptr_value;
  assign ram_echo_tl_state_source_MPORT_mask = 1'h1;
  assign ram_echo_tl_state_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = enq_ptr_value;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_id = ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_resp = ram_resp_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_echo_tl_state_size = ram_echo_tl_state_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_echo_tl_state_source = ram_echo_tl_state_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_id_MPORT_en & ram_id_MPORT_mask) begin
      ram_id[ram_id_MPORT_addr] <= ram_id_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_resp_MPORT_en & ram_resp_MPORT_mask) begin
      ram_resp[ram_resp_MPORT_addr] <= ram_resp_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_echo_tl_state_size_MPORT_en & ram_echo_tl_state_size_MPORT_mask) begin
      ram_echo_tl_state_size[ram_echo_tl_state_size_MPORT_addr] <= ram_echo_tl_state_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_echo_tl_state_source_MPORT_en & ram_echo_tl_state_source_MPORT_mask) begin
      ram_echo_tl_state_source[ram_echo_tl_state_source_MPORT_addr] <= ram_echo_tl_state_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Counter.scala 62:40]
      enq_ptr_value <= 3'h0; // @[Counter.scala 62:40]
    end else if (do_enq) begin // @[Decoupled.scala 272:16]
      enq_ptr_value <= _value_T_1; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Counter.scala 62:40]
      deq_ptr_value <= 3'h0; // @[Counter.scala 62:40]
    end else if (do_deq) begin // @[Decoupled.scala 276:16]
      deq_ptr_value <= _value_T_3; // @[Counter.scala 78:15]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  _RAND_1 = {2{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_data[initvar] = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_resp[initvar] = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_echo_tl_state_size[initvar] = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_echo_tl_state_source[initvar] = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    ram_last[initvar] = _RAND_5[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  enq_ptr_value = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  deq_ptr_value = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  maybe_full = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AXI4Deinterleaver_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  input  [3:0]  auto_in_aw_bits_qos,
  input  [3:0]  auto_in_aw_bits_echo_tl_state_size,
  input  [3:0]  auto_in_aw_bits_echo_tl_state_source,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output [3:0]  auto_in_b_bits_echo_tl_state_size,
  output [3:0]  auto_in_b_bits_echo_tl_state_source,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input  [3:0]  auto_in_ar_bits_qos,
  input  [3:0]  auto_in_ar_bits_echo_tl_state_size,
  input  [3:0]  auto_in_ar_bits_echo_tl_state_source,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output [3:0]  auto_in_r_bits_echo_tl_state_size,
  output [3:0]  auto_in_r_bits_echo_tl_state_source,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  output [3:0]  auto_out_aw_bits_echo_tl_state_size,
  output [3:0]  auto_out_aw_bits_echo_tl_state_source,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input  [3:0]  auto_out_b_bits_echo_tl_state_size,
  input  [3:0]  auto_out_b_bits_echo_tl_state_source,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output [3:0]  auto_out_ar_bits_echo_tl_state_size,
  output [3:0]  auto_out_ar_bits_echo_tl_state_source,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input  [3:0]  auto_out_r_bits_echo_tl_state_size,
  input  [3:0]  auto_out_r_bits_echo_tl_state_source,
  input         auto_out_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  wire  qs_queue_0_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_0_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_0_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_0_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_0_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_0_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_0_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_0_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_0_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_0_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_0_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_0_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_0_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_0_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_0_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_0_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_0_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_0_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_1_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_1_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_1_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_1_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_1_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_1_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_1_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_1_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_1_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_1_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_1_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_1_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_1_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_1_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_1_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_1_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_1_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_1_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_2_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_2_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_2_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_2_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_2_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_2_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_2_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_2_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_2_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_2_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_2_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_2_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_2_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_2_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_2_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_2_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_2_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_2_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_3_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_3_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_3_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_3_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_3_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_3_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_3_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_3_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_3_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_3_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_3_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_3_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_3_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_3_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_3_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_3_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_3_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_3_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_4_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_4_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_4_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_4_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_4_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_4_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_4_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_4_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_4_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_4_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_4_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_4_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_4_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_4_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_4_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_4_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_4_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_4_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_5_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_5_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_5_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_5_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_5_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_5_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_5_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_5_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_5_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_5_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_5_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_5_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_5_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_5_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_5_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_5_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_5_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_5_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_6_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_6_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_6_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_6_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_6_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_6_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_6_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_6_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_6_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_6_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_6_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_6_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_6_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_6_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_6_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_6_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_6_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_6_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_7_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_7_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_7_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_7_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_7_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_7_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_7_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_7_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_7_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_7_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_7_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_7_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_7_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_7_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_7_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_7_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_7_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_7_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_8_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_8_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_8_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_8_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_8_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_8_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_8_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_8_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_8_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_8_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_8_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_8_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_8_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_8_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_8_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_8_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_8_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_8_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_9_clock; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_9_reset; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_9_io_enq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_9_io_enq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_9_io_enq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_9_io_enq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_9_io_enq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_9_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_9_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_9_io_enq_bits_last; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_9_io_deq_ready; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_9_io_deq_valid; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_9_io_deq_bits_id; // @[Deinterleaver.scala 66:27]
  wire [63:0] qs_queue_9_io_deq_bits_data; // @[Deinterleaver.scala 66:27]
  wire [1:0] qs_queue_9_io_deq_bits_resp; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_9_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 66:27]
  wire [3:0] qs_queue_9_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 66:27]
  wire  qs_queue_9_io_deq_bits_last; // @[Deinterleaver.scala 66:27]
  wire [15:0] enq_OH = 16'h1 << auto_out_r_bits_id; // @[OneHot.scala 64:12]
  wire  enq_OH_bools_10 = enq_OH[10]; // @[Deinterleaver.scala 122:35]
  wire  queue_wire_10_enq_valid = enq_OH_bools_10 & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  wire  _qs_T_2 = ~reset; // @[Deinterleaver.scala 75:19]
  wire  enq_OH_bools_11 = enq_OH[11]; // @[Deinterleaver.scala 122:35]
  wire  queue_wire_11_enq_valid = enq_OH_bools_11 & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  wire  enq_OH_bools_12 = enq_OH[12]; // @[Deinterleaver.scala 122:35]
  wire  queue_wire_12_enq_valid = enq_OH_bools_12 & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  wire  enq_OH_bools_13 = enq_OH[13]; // @[Deinterleaver.scala 122:35]
  wire  queue_wire_13_enq_valid = enq_OH_bools_13 & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  wire  enq_OH_bools_14 = enq_OH[14]; // @[Deinterleaver.scala 122:35]
  wire  queue_wire_14_enq_valid = enq_OH_bools_14 & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  wire  enq_OH_bools_15 = enq_OH[15]; // @[Deinterleaver.scala 122:35]
  wire  queue_wire_15_enq_valid = enq_OH_bools_15 & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  reg  locked; // @[Deinterleaver.scala 82:29]
  reg [3:0] deq_id; // @[Deinterleaver.scala 83:25]
  wire [15:0] deq_OH = 16'h1 << deq_id; // @[OneHot.scala 64:12]
  reg [3:0] pending_count; // @[Deinterleaver.scala 92:32]
  wire  enq_readys_9 = qs_queue_9_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_8 = qs_queue_8_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_7 = qs_queue_7_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_6 = qs_queue_6_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_5 = qs_queue_5_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_4 = qs_queue_4_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_3 = qs_queue_3_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_2 = qs_queue_2_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_1 = qs_queue_1_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  enq_readys_0 = qs_queue_0_io_enq_ready; // @[Deinterleaver.scala 125:{33,33}]
  wire  _GEN_99 = 4'h1 == auto_out_r_bits_id ? enq_readys_1 : enq_readys_0; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_100 = 4'h2 == auto_out_r_bits_id ? enq_readys_2 : _GEN_99; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_101 = 4'h3 == auto_out_r_bits_id ? enq_readys_3 : _GEN_100; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_102 = 4'h4 == auto_out_r_bits_id ? enq_readys_4 : _GEN_101; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_103 = 4'h5 == auto_out_r_bits_id ? enq_readys_5 : _GEN_102; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_104 = 4'h6 == auto_out_r_bits_id ? enq_readys_6 : _GEN_103; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_105 = 4'h7 == auto_out_r_bits_id ? enq_readys_7 : _GEN_104; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_106 = 4'h8 == auto_out_r_bits_id ? enq_readys_8 : _GEN_105; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_107 = 4'h9 == auto_out_r_bits_id ? enq_readys_9 : _GEN_106; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_108 = 4'ha == auto_out_r_bits_id ? 1'h0 : _GEN_107; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_109 = 4'hb == auto_out_r_bits_id ? 1'h0 : _GEN_108; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_110 = 4'hc == auto_out_r_bits_id ? 1'h0 : _GEN_109; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_111 = 4'hd == auto_out_r_bits_id ? 1'h0 : _GEN_110; // @[Deinterleaver.scala 126:{21,21}]
  wire  _GEN_112 = 4'he == auto_out_r_bits_id ? 1'h0 : _GEN_111; // @[Deinterleaver.scala 126:{21,21}]
  wire  bundleOut_0_r_ready = 4'hf == auto_out_r_bits_id ? 1'h0 : _GEN_112; // @[Deinterleaver.scala 126:{21,21}]
  wire  _pending_inc_T_1 = bundleOut_0_r_ready & auto_out_r_valid; // @[Decoupled.scala 50:35]
  wire  pending_inc = enq_OH[0] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  _pending_dec_T_1 = auto_in_r_ready & locked; // @[Decoupled.scala 50:35]
  wire  deq_bits_9_last = qs_queue_9_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_8_last = qs_queue_8_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_7_last = qs_queue_7_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_6_last = qs_queue_6_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_5_last = qs_queue_5_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_4_last = qs_queue_4_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_3_last = qs_queue_3_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_2_last = qs_queue_2_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_1_last = qs_queue_1_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  deq_bits_0_last = qs_queue_0_io_deq_bits_last; // @[Deinterleaver.scala 114:{31,31}]
  wire  _GEN_3 = 4'h1 == deq_id ? deq_bits_1_last : deq_bits_0_last; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_4 = 4'h2 == deq_id ? deq_bits_2_last : _GEN_3; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_5 = 4'h3 == deq_id ? deq_bits_3_last : _GEN_4; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_6 = 4'h4 == deq_id ? deq_bits_4_last : _GEN_5; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_7 = 4'h5 == deq_id ? deq_bits_5_last : _GEN_6; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_8 = 4'h6 == deq_id ? deq_bits_6_last : _GEN_7; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_9 = 4'h7 == deq_id ? deq_bits_7_last : _GEN_8; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_10 = 4'h8 == deq_id ? deq_bits_8_last : _GEN_9; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_11 = 4'h9 == deq_id ? deq_bits_9_last : _GEN_10; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_12 = 4'ha == deq_id ? 1'h0 : _GEN_11; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_13 = 4'hb == deq_id ? 1'h0 : _GEN_12; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_14 = 4'hc == deq_id ? 1'h0 : _GEN_13; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_15 = 4'hd == deq_id ? 1'h0 : _GEN_14; // @[Deinterleaver.scala 115:{20,20}]
  wire  _GEN_16 = 4'he == deq_id ? 1'h0 : _GEN_15; // @[Deinterleaver.scala 115:{20,20}]
  wire  bundleIn_0_r_bits_last = 4'hf == deq_id ? 1'h0 : _GEN_16; // @[Deinterleaver.scala 115:{20,20}]
  wire  pending_dec = deq_OH[0] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_114 = {{3'd0}, pending_inc}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_1 = pending_count + _GEN_114; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_115 = {{3'd0}, pending_dec}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next = _pending_next_T_1 - _GEN_115; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_12 = pending_next != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_1; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_1 = enq_OH[1] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_1 = deq_OH[1] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_116 = {{3'd0}, pending_inc_1}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_5 = pending_count_1 + _GEN_116; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_117 = {{3'd0}, pending_dec_1}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_1 = _pending_next_T_5 - _GEN_117; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_25 = pending_next_1 != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_2; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_2 = enq_OH[2] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_2 = deq_OH[2] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_118 = {{3'd0}, pending_inc_2}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_9 = pending_count_2 + _GEN_118; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_119 = {{3'd0}, pending_dec_2}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_2 = _pending_next_T_9 - _GEN_119; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_38 = pending_next_2 != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_3; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_3 = enq_OH[3] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_3 = deq_OH[3] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_120 = {{3'd0}, pending_inc_3}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_13 = pending_count_3 + _GEN_120; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_121 = {{3'd0}, pending_dec_3}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_3 = _pending_next_T_13 - _GEN_121; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_51 = pending_next_3 != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_4; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_4 = enq_OH[4] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_4 = deq_OH[4] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_122 = {{3'd0}, pending_inc_4}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_17 = pending_count_4 + _GEN_122; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_123 = {{3'd0}, pending_dec_4}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_4 = _pending_next_T_17 - _GEN_123; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_64 = pending_next_4 != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_5; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_5 = enq_OH[5] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_5 = deq_OH[5] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_124 = {{3'd0}, pending_inc_5}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_21 = pending_count_5 + _GEN_124; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_125 = {{3'd0}, pending_dec_5}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_5 = _pending_next_T_21 - _GEN_125; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_77 = pending_next_5 != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_6; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_6 = enq_OH[6] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_6 = deq_OH[6] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_126 = {{3'd0}, pending_inc_6}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_25 = pending_count_6 + _GEN_126; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_127 = {{3'd0}, pending_dec_6}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_6 = _pending_next_T_25 - _GEN_127; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_90 = pending_next_6 != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_7; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_7 = enq_OH[7] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_7 = deq_OH[7] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_128 = {{3'd0}, pending_inc_7}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_29 = pending_count_7 + _GEN_128; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_129 = {{3'd0}, pending_dec_7}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_7 = _pending_next_T_29 - _GEN_129; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_103 = pending_next_7 != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_8; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_8 = enq_OH[8] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_8 = deq_OH[8] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_130 = {{3'd0}, pending_inc_8}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_33 = pending_count_8 + _GEN_130; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_131 = {{3'd0}, pending_dec_8}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_8 = _pending_next_T_33 - _GEN_131; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_116 = pending_next_8 != 4'h0; // @[Deinterleaver.scala 101:18]
  reg [3:0] pending_count_9; // @[Deinterleaver.scala 92:32]
  wire  pending_inc_9 = enq_OH[9] & _pending_inc_T_1 & auto_out_r_bits_last; // @[Deinterleaver.scala 94:49]
  wire  pending_dec_9 = deq_OH[9] & _pending_dec_T_1 & bundleIn_0_r_bits_last; // @[Deinterleaver.scala 95:48]
  wire [3:0] _GEN_132 = {{3'd0}, pending_inc_9}; // @[Deinterleaver.scala 96:27]
  wire [3:0] _pending_next_T_37 = pending_count_9 + _GEN_132; // @[Deinterleaver.scala 96:27]
  wire [3:0] _GEN_133 = {{3'd0}, pending_dec_9}; // @[Deinterleaver.scala 96:40]
  wire [3:0] pending_next_9 = _pending_next_T_37 - _GEN_133; // @[Deinterleaver.scala 96:40]
  wire  _pending_T_129 = pending_next_9 != 4'h0; // @[Deinterleaver.scala 101:18]
  wire [7:0] pending_lo = {_pending_T_103,_pending_T_90,_pending_T_77,_pending_T_64,_pending_T_51,_pending_T_38,
    _pending_T_25,_pending_T_12}; // @[Cat.scala 31:58]
  wire [15:0] pending = {4'h0,2'h0,_pending_T_129,_pending_T_116,pending_lo}; // @[Cat.scala 31:58]
  wire [16:0] _winner_T = {pending, 1'h0}; // @[package.scala 244:48]
  wire [15:0] _winner_T_2 = pending | _winner_T[15:0]; // @[package.scala 244:43]
  wire [17:0] _winner_T_3 = {_winner_T_2, 2'h0}; // @[package.scala 244:48]
  wire [15:0] _winner_T_5 = _winner_T_2 | _winner_T_3[15:0]; // @[package.scala 244:43]
  wire [19:0] _winner_T_6 = {_winner_T_5, 4'h0}; // @[package.scala 244:48]
  wire [15:0] _winner_T_8 = _winner_T_5 | _winner_T_6[15:0]; // @[package.scala 244:43]
  wire [23:0] _winner_T_9 = {_winner_T_8, 8'h0}; // @[package.scala 244:48]
  wire [15:0] _winner_T_11 = _winner_T_8 | _winner_T_9[15:0]; // @[package.scala 244:43]
  wire [16:0] _winner_T_13 = {_winner_T_11, 1'h0}; // @[Deinterleaver.scala 106:51]
  wire [16:0] _winner_T_14 = ~_winner_T_13; // @[Deinterleaver.scala 106:33]
  wire [16:0] _GEN_134 = {{1'd0}, pending}; // @[Deinterleaver.scala 106:31]
  wire [16:0] winner = _GEN_134 & _winner_T_14; // @[Deinterleaver.scala 106:31]
  wire  deq_id_hi = winner[16]; // @[OneHot.scala 30:18]
  wire [15:0] deq_id_lo = winner[15:0]; // @[OneHot.scala 31:18]
  wire  _deq_id_T = |deq_id_hi; // @[OneHot.scala 32:14]
  wire [15:0] _GEN_135 = {{15'd0}, deq_id_hi}; // @[OneHot.scala 32:28]
  wire [15:0] _deq_id_T_1 = _GEN_135 | deq_id_lo; // @[OneHot.scala 32:28]
  wire [7:0] deq_id_hi_1 = _deq_id_T_1[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] deq_id_lo_1 = _deq_id_T_1[7:0]; // @[OneHot.scala 31:18]
  wire  _deq_id_T_2 = |deq_id_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _deq_id_T_3 = deq_id_hi_1 | deq_id_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] deq_id_hi_2 = _deq_id_T_3[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] deq_id_lo_2 = _deq_id_T_3[3:0]; // @[OneHot.scala 31:18]
  wire  _deq_id_T_4 = |deq_id_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _deq_id_T_5 = deq_id_hi_2 | deq_id_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] deq_id_hi_3 = _deq_id_T_5[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] deq_id_lo_3 = _deq_id_T_5[1:0]; // @[OneHot.scala 31:18]
  wire  _deq_id_T_6 = |deq_id_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _deq_id_T_7 = deq_id_hi_3 | deq_id_lo_3; // @[OneHot.scala 32:28]
  wire [4:0] _deq_id_T_12 = {_deq_id_T,_deq_id_T_2,_deq_id_T_4,_deq_id_T_6,_deq_id_T_7[1]}; // @[Cat.scala 31:58]
  wire [4:0] _GEN_1 = ~locked | _pending_dec_T_1 & bundleIn_0_r_bits_last ? _deq_id_T_12 : {{1'd0}, deq_id}; // @[Deinterleaver.scala 107:59 109:18 83:25]
  wire [3:0] deq_bits_0_echo_tl_state_source = qs_queue_0_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] deq_bits_1_echo_tl_state_source = qs_queue_1_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_19 = 4'h1 == deq_id ? deq_bits_1_echo_tl_state_source : deq_bits_0_echo_tl_state_source; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_2_echo_tl_state_source = qs_queue_2_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_20 = 4'h2 == deq_id ? deq_bits_2_echo_tl_state_source : _GEN_19; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_3_echo_tl_state_source = qs_queue_3_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_21 = 4'h3 == deq_id ? deq_bits_3_echo_tl_state_source : _GEN_20; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_4_echo_tl_state_source = qs_queue_4_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_22 = 4'h4 == deq_id ? deq_bits_4_echo_tl_state_source : _GEN_21; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_5_echo_tl_state_source = qs_queue_5_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_23 = 4'h5 == deq_id ? deq_bits_5_echo_tl_state_source : _GEN_22; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_6_echo_tl_state_source = qs_queue_6_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_24 = 4'h6 == deq_id ? deq_bits_6_echo_tl_state_source : _GEN_23; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_7_echo_tl_state_source = qs_queue_7_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_25 = 4'h7 == deq_id ? deq_bits_7_echo_tl_state_source : _GEN_24; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_8_echo_tl_state_source = qs_queue_8_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_26 = 4'h8 == deq_id ? deq_bits_8_echo_tl_state_source : _GEN_25; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_9_echo_tl_state_source = qs_queue_9_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_27 = 4'h9 == deq_id ? deq_bits_9_echo_tl_state_source : _GEN_26; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_28 = 4'ha == deq_id ? 4'h0 : _GEN_27; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_29 = 4'hb == deq_id ? 4'h0 : _GEN_28; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_30 = 4'hc == deq_id ? 4'h0 : _GEN_29; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_31 = 4'hd == deq_id ? 4'h0 : _GEN_30; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_32 = 4'he == deq_id ? 4'h0 : _GEN_31; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_0_echo_tl_state_size = qs_queue_0_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] deq_bits_1_echo_tl_state_size = qs_queue_1_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_35 = 4'h1 == deq_id ? deq_bits_1_echo_tl_state_size : deq_bits_0_echo_tl_state_size; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_2_echo_tl_state_size = qs_queue_2_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_36 = 4'h2 == deq_id ? deq_bits_2_echo_tl_state_size : _GEN_35; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_3_echo_tl_state_size = qs_queue_3_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_37 = 4'h3 == deq_id ? deq_bits_3_echo_tl_state_size : _GEN_36; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_4_echo_tl_state_size = qs_queue_4_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_38 = 4'h4 == deq_id ? deq_bits_4_echo_tl_state_size : _GEN_37; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_5_echo_tl_state_size = qs_queue_5_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_39 = 4'h5 == deq_id ? deq_bits_5_echo_tl_state_size : _GEN_38; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_6_echo_tl_state_size = qs_queue_6_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_40 = 4'h6 == deq_id ? deq_bits_6_echo_tl_state_size : _GEN_39; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_7_echo_tl_state_size = qs_queue_7_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_41 = 4'h7 == deq_id ? deq_bits_7_echo_tl_state_size : _GEN_40; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_8_echo_tl_state_size = qs_queue_8_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_42 = 4'h8 == deq_id ? deq_bits_8_echo_tl_state_size : _GEN_41; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_9_echo_tl_state_size = qs_queue_9_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_43 = 4'h9 == deq_id ? deq_bits_9_echo_tl_state_size : _GEN_42; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_44 = 4'ha == deq_id ? 4'h0 : _GEN_43; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_45 = 4'hb == deq_id ? 4'h0 : _GEN_44; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_46 = 4'hc == deq_id ? 4'h0 : _GEN_45; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_47 = 4'hd == deq_id ? 4'h0 : _GEN_46; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_48 = 4'he == deq_id ? 4'h0 : _GEN_47; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_0_resp = qs_queue_0_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] deq_bits_1_resp = qs_queue_1_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_51 = 4'h1 == deq_id ? deq_bits_1_resp : deq_bits_0_resp; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_2_resp = qs_queue_2_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_52 = 4'h2 == deq_id ? deq_bits_2_resp : _GEN_51; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_3_resp = qs_queue_3_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_53 = 4'h3 == deq_id ? deq_bits_3_resp : _GEN_52; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_4_resp = qs_queue_4_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_54 = 4'h4 == deq_id ? deq_bits_4_resp : _GEN_53; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_5_resp = qs_queue_5_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_55 = 4'h5 == deq_id ? deq_bits_5_resp : _GEN_54; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_6_resp = qs_queue_6_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_56 = 4'h6 == deq_id ? deq_bits_6_resp : _GEN_55; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_7_resp = qs_queue_7_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_57 = 4'h7 == deq_id ? deq_bits_7_resp : _GEN_56; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_8_resp = qs_queue_8_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_58 = 4'h8 == deq_id ? deq_bits_8_resp : _GEN_57; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] deq_bits_9_resp = qs_queue_9_io_deq_bits_resp; // @[Deinterleaver.scala 114:{31,31}]
  wire [1:0] _GEN_59 = 4'h9 == deq_id ? deq_bits_9_resp : _GEN_58; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] _GEN_60 = 4'ha == deq_id ? 2'h0 : _GEN_59; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] _GEN_61 = 4'hb == deq_id ? 2'h0 : _GEN_60; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] _GEN_62 = 4'hc == deq_id ? 2'h0 : _GEN_61; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] _GEN_63 = 4'hd == deq_id ? 2'h0 : _GEN_62; // @[Deinterleaver.scala 115:{20,20}]
  wire [1:0] _GEN_64 = 4'he == deq_id ? 2'h0 : _GEN_63; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_0_data = qs_queue_0_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] deq_bits_1_data = qs_queue_1_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_67 = 4'h1 == deq_id ? deq_bits_1_data : deq_bits_0_data; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_2_data = qs_queue_2_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_68 = 4'h2 == deq_id ? deq_bits_2_data : _GEN_67; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_3_data = qs_queue_3_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_69 = 4'h3 == deq_id ? deq_bits_3_data : _GEN_68; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_4_data = qs_queue_4_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_70 = 4'h4 == deq_id ? deq_bits_4_data : _GEN_69; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_5_data = qs_queue_5_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_71 = 4'h5 == deq_id ? deq_bits_5_data : _GEN_70; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_6_data = qs_queue_6_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_72 = 4'h6 == deq_id ? deq_bits_6_data : _GEN_71; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_7_data = qs_queue_7_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_73 = 4'h7 == deq_id ? deq_bits_7_data : _GEN_72; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_8_data = qs_queue_8_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_74 = 4'h8 == deq_id ? deq_bits_8_data : _GEN_73; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] deq_bits_9_data = qs_queue_9_io_deq_bits_data; // @[Deinterleaver.scala 114:{31,31}]
  wire [63:0] _GEN_75 = 4'h9 == deq_id ? deq_bits_9_data : _GEN_74; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] _GEN_76 = 4'ha == deq_id ? 64'h0 : _GEN_75; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] _GEN_77 = 4'hb == deq_id ? 64'h0 : _GEN_76; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] _GEN_78 = 4'hc == deq_id ? 64'h0 : _GEN_77; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] _GEN_79 = 4'hd == deq_id ? 64'h0 : _GEN_78; // @[Deinterleaver.scala 115:{20,20}]
  wire [63:0] _GEN_80 = 4'he == deq_id ? 64'h0 : _GEN_79; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_0_id = qs_queue_0_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] deq_bits_1_id = qs_queue_1_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_83 = 4'h1 == deq_id ? deq_bits_1_id : deq_bits_0_id; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_2_id = qs_queue_2_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_84 = 4'h2 == deq_id ? deq_bits_2_id : _GEN_83; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_3_id = qs_queue_3_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_85 = 4'h3 == deq_id ? deq_bits_3_id : _GEN_84; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_4_id = qs_queue_4_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_86 = 4'h4 == deq_id ? deq_bits_4_id : _GEN_85; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_5_id = qs_queue_5_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_87 = 4'h5 == deq_id ? deq_bits_5_id : _GEN_86; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_6_id = qs_queue_6_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_88 = 4'h6 == deq_id ? deq_bits_6_id : _GEN_87; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_7_id = qs_queue_7_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_89 = 4'h7 == deq_id ? deq_bits_7_id : _GEN_88; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_8_id = qs_queue_8_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_90 = 4'h8 == deq_id ? deq_bits_8_id : _GEN_89; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] deq_bits_9_id = qs_queue_9_io_deq_bits_id; // @[Deinterleaver.scala 114:{31,31}]
  wire [3:0] _GEN_91 = 4'h9 == deq_id ? deq_bits_9_id : _GEN_90; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_92 = 4'ha == deq_id ? 4'h0 : _GEN_91; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_93 = 4'hb == deq_id ? 4'h0 : _GEN_92; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_94 = 4'hc == deq_id ? 4'h0 : _GEN_93; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_95 = 4'hd == deq_id ? 4'h0 : _GEN_94; // @[Deinterleaver.scala 115:{20,20}]
  wire [3:0] _GEN_96 = 4'he == deq_id ? 4'h0 : _GEN_95; // @[Deinterleaver.scala 115:{20,20}]
  Queue_40_inVCU118FPGATestHarness qs_queue_0 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_0_clock),
    .reset(qs_queue_0_reset),
    .io_enq_ready(qs_queue_0_io_enq_ready),
    .io_enq_valid(qs_queue_0_io_enq_valid),
    .io_enq_bits_id(qs_queue_0_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_0_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_0_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_0_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_0_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_0_io_enq_bits_last),
    .io_deq_ready(qs_queue_0_io_deq_ready),
    .io_deq_valid(qs_queue_0_io_deq_valid),
    .io_deq_bits_id(qs_queue_0_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_0_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_0_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_0_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_0_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_0_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_1 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_1_clock),
    .reset(qs_queue_1_reset),
    .io_enq_ready(qs_queue_1_io_enq_ready),
    .io_enq_valid(qs_queue_1_io_enq_valid),
    .io_enq_bits_id(qs_queue_1_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_1_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_1_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_1_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_1_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_1_io_enq_bits_last),
    .io_deq_ready(qs_queue_1_io_deq_ready),
    .io_deq_valid(qs_queue_1_io_deq_valid),
    .io_deq_bits_id(qs_queue_1_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_1_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_1_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_1_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_1_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_1_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_2 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_2_clock),
    .reset(qs_queue_2_reset),
    .io_enq_ready(qs_queue_2_io_enq_ready),
    .io_enq_valid(qs_queue_2_io_enq_valid),
    .io_enq_bits_id(qs_queue_2_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_2_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_2_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_2_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_2_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_2_io_enq_bits_last),
    .io_deq_ready(qs_queue_2_io_deq_ready),
    .io_deq_valid(qs_queue_2_io_deq_valid),
    .io_deq_bits_id(qs_queue_2_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_2_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_2_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_2_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_2_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_2_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_3 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_3_clock),
    .reset(qs_queue_3_reset),
    .io_enq_ready(qs_queue_3_io_enq_ready),
    .io_enq_valid(qs_queue_3_io_enq_valid),
    .io_enq_bits_id(qs_queue_3_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_3_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_3_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_3_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_3_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_3_io_enq_bits_last),
    .io_deq_ready(qs_queue_3_io_deq_ready),
    .io_deq_valid(qs_queue_3_io_deq_valid),
    .io_deq_bits_id(qs_queue_3_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_3_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_3_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_3_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_3_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_3_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_4 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_4_clock),
    .reset(qs_queue_4_reset),
    .io_enq_ready(qs_queue_4_io_enq_ready),
    .io_enq_valid(qs_queue_4_io_enq_valid),
    .io_enq_bits_id(qs_queue_4_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_4_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_4_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_4_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_4_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_4_io_enq_bits_last),
    .io_deq_ready(qs_queue_4_io_deq_ready),
    .io_deq_valid(qs_queue_4_io_deq_valid),
    .io_deq_bits_id(qs_queue_4_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_4_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_4_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_4_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_4_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_4_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_5 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_5_clock),
    .reset(qs_queue_5_reset),
    .io_enq_ready(qs_queue_5_io_enq_ready),
    .io_enq_valid(qs_queue_5_io_enq_valid),
    .io_enq_bits_id(qs_queue_5_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_5_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_5_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_5_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_5_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_5_io_enq_bits_last),
    .io_deq_ready(qs_queue_5_io_deq_ready),
    .io_deq_valid(qs_queue_5_io_deq_valid),
    .io_deq_bits_id(qs_queue_5_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_5_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_5_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_5_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_5_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_5_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_6 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_6_clock),
    .reset(qs_queue_6_reset),
    .io_enq_ready(qs_queue_6_io_enq_ready),
    .io_enq_valid(qs_queue_6_io_enq_valid),
    .io_enq_bits_id(qs_queue_6_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_6_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_6_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_6_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_6_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_6_io_enq_bits_last),
    .io_deq_ready(qs_queue_6_io_deq_ready),
    .io_deq_valid(qs_queue_6_io_deq_valid),
    .io_deq_bits_id(qs_queue_6_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_6_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_6_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_6_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_6_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_6_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_7 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_7_clock),
    .reset(qs_queue_7_reset),
    .io_enq_ready(qs_queue_7_io_enq_ready),
    .io_enq_valid(qs_queue_7_io_enq_valid),
    .io_enq_bits_id(qs_queue_7_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_7_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_7_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_7_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_7_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_7_io_enq_bits_last),
    .io_deq_ready(qs_queue_7_io_deq_ready),
    .io_deq_valid(qs_queue_7_io_deq_valid),
    .io_deq_bits_id(qs_queue_7_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_7_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_7_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_7_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_7_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_7_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_8 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_8_clock),
    .reset(qs_queue_8_reset),
    .io_enq_ready(qs_queue_8_io_enq_ready),
    .io_enq_valid(qs_queue_8_io_enq_valid),
    .io_enq_bits_id(qs_queue_8_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_8_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_8_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_8_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_8_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_8_io_enq_bits_last),
    .io_deq_ready(qs_queue_8_io_deq_ready),
    .io_deq_valid(qs_queue_8_io_deq_valid),
    .io_deq_bits_id(qs_queue_8_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_8_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_8_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_8_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_8_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_8_io_deq_bits_last)
  );
  Queue_40_inVCU118FPGATestHarness qs_queue_9 ( // @[Deinterleaver.scala 66:27]
    .clock(qs_queue_9_clock),
    .reset(qs_queue_9_reset),
    .io_enq_ready(qs_queue_9_io_enq_ready),
    .io_enq_valid(qs_queue_9_io_enq_valid),
    .io_enq_bits_id(qs_queue_9_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_9_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_9_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_9_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_9_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_9_io_enq_bits_last),
    .io_deq_ready(qs_queue_9_io_deq_ready),
    .io_deq_valid(qs_queue_9_io_deq_valid),
    .io_deq_bits_id(qs_queue_9_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_9_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_9_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_9_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_9_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_9_io_deq_bits_last)
  );
  assign auto_in_aw_ready = auto_out_aw_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_w_ready = auto_out_w_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_valid = auto_out_b_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_echo_tl_state_size = auto_out_b_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_echo_tl_state_source = auto_out_b_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_ar_ready = auto_out_ar_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_valid = locked; // @[Deinterleaver.scala 113:20 Nodes.scala 1210:84]
  assign auto_in_r_bits_id = 4'hf == deq_id ? 4'h0 : _GEN_96; // @[Deinterleaver.scala 115:{20,20}]
  assign auto_in_r_bits_data = 4'hf == deq_id ? 64'h0 : _GEN_80; // @[Deinterleaver.scala 115:{20,20}]
  assign auto_in_r_bits_resp = 4'hf == deq_id ? 2'h0 : _GEN_64; // @[Deinterleaver.scala 115:{20,20}]
  assign auto_in_r_bits_echo_tl_state_size = 4'hf == deq_id ? 4'h0 : _GEN_48; // @[Deinterleaver.scala 115:{20,20}]
  assign auto_in_r_bits_echo_tl_state_source = 4'hf == deq_id ? 4'h0 : _GEN_32; // @[Deinterleaver.scala 115:{20,20}]
  assign auto_in_r_bits_last = 4'hf == deq_id ? 1'h0 : _GEN_16; // @[Deinterleaver.scala 115:{20,20}]
  assign auto_out_aw_valid = auto_in_aw_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_qos = auto_in_aw_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_echo_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_echo_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_valid = auto_in_w_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_b_ready = auto_in_b_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_valid = auto_in_ar_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_qos = auto_in_ar_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_echo_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_echo_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_r_ready = 4'hf == auto_out_r_bits_id ? 1'h0 : _GEN_112; // @[Deinterleaver.scala 126:{21,21}]
  assign qs_queue_0_clock = clock;
  assign qs_queue_0_reset = reset;
  assign qs_queue_0_io_enq_valid = enq_OH[0] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_0_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_0_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_0_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_0_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_0_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_0_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_0_io_deq_ready = deq_OH[0] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_1_clock = clock;
  assign qs_queue_1_reset = reset;
  assign qs_queue_1_io_enq_valid = enq_OH[1] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_1_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_1_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_1_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_1_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_1_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_1_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_1_io_deq_ready = deq_OH[1] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_2_clock = clock;
  assign qs_queue_2_reset = reset;
  assign qs_queue_2_io_enq_valid = enq_OH[2] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_2_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_2_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_2_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_2_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_2_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_2_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_2_io_deq_ready = deq_OH[2] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_3_clock = clock;
  assign qs_queue_3_reset = reset;
  assign qs_queue_3_io_enq_valid = enq_OH[3] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_3_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_3_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_3_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_3_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_3_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_3_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_3_io_deq_ready = deq_OH[3] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_4_clock = clock;
  assign qs_queue_4_reset = reset;
  assign qs_queue_4_io_enq_valid = enq_OH[4] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_4_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_4_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_4_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_4_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_4_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_4_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_4_io_deq_ready = deq_OH[4] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_5_clock = clock;
  assign qs_queue_5_reset = reset;
  assign qs_queue_5_io_enq_valid = enq_OH[5] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_5_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_5_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_5_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_5_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_5_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_5_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_5_io_deq_ready = deq_OH[5] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_6_clock = clock;
  assign qs_queue_6_reset = reset;
  assign qs_queue_6_io_enq_valid = enq_OH[6] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_6_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_6_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_6_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_6_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_6_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_6_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_6_io_deq_ready = deq_OH[6] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_7_clock = clock;
  assign qs_queue_7_reset = reset;
  assign qs_queue_7_io_enq_valid = enq_OH[7] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_7_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_7_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_7_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_7_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_7_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_7_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_7_io_deq_ready = deq_OH[7] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_8_clock = clock;
  assign qs_queue_8_reset = reset;
  assign qs_queue_8_io_enq_valid = enq_OH[8] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_8_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_8_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_8_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_8_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_8_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_8_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_8_io_deq_ready = deq_OH[8] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  assign qs_queue_9_clock = clock;
  assign qs_queue_9_reset = reset;
  assign qs_queue_9_io_enq_valid = enq_OH[9] & auto_out_r_valid; // @[Deinterleaver.scala 128:28]
  assign qs_queue_9_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_9_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_9_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_9_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_9_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_9_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign qs_queue_9_io_deq_ready = deq_OH[9] & _pending_dec_T_1; // @[Deinterleaver.scala 119:28]
  always @(posedge clock) begin
    if (reset) begin // @[Deinterleaver.scala 82:29]
      locked <= 1'h0; // @[Deinterleaver.scala 82:29]
    end else if (~locked | _pending_dec_T_1 & bundleIn_0_r_bits_last) begin // @[Deinterleaver.scala 107:59]
      locked <= |pending; // @[Deinterleaver.scala 108:18]
    end
    deq_id <= _GEN_1[3:0];
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count <= pending_next; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_1 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_1 <= pending_next_1; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_2 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_2 <= pending_next_2; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_3 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_3 <= pending_next_3; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_4 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_4 <= pending_next_4; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_5 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_5 <= pending_next_5; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_6 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_6 <= pending_next_6; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_7 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_7 <= pending_next_7; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_8 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_8 <= pending_next_8; // @[Deinterleaver.scala 97:19]
    end
    if (reset) begin // @[Deinterleaver.scala 92:32]
      pending_count_9 <= 4'h0; // @[Deinterleaver.scala 92:32]
    end else begin
      pending_count_9 <= pending_next_9; // @[Deinterleaver.scala 97:19]
    end
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~queue_wire_10_enq_valid) & ~reset) begin
          $fatal; // @[Deinterleaver.scala 75:19]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~queue_wire_10_enq_valid)) begin
          $fwrite(32'h80000002,
            "Assertion failed: ID 10 should not be used\n    at Deinterleaver.scala:75 assert(!q.enq.valid, s\"ID ${i} should not be used\")\n"
            ); // @[Deinterleaver.scala 75:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~queue_wire_11_enq_valid) & ~reset) begin
          $fatal; // @[Deinterleaver.scala 75:19]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~queue_wire_11_enq_valid)) begin
          $fwrite(32'h80000002,
            "Assertion failed: ID 11 should not be used\n    at Deinterleaver.scala:75 assert(!q.enq.valid, s\"ID ${i} should not be used\")\n"
            ); // @[Deinterleaver.scala 75:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~queue_wire_12_enq_valid) & ~reset) begin
          $fatal; // @[Deinterleaver.scala 75:19]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~queue_wire_12_enq_valid)) begin
          $fwrite(32'h80000002,
            "Assertion failed: ID 12 should not be used\n    at Deinterleaver.scala:75 assert(!q.enq.valid, s\"ID ${i} should not be used\")\n"
            ); // @[Deinterleaver.scala 75:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~queue_wire_13_enq_valid) & ~reset) begin
          $fatal; // @[Deinterleaver.scala 75:19]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~queue_wire_13_enq_valid)) begin
          $fwrite(32'h80000002,
            "Assertion failed: ID 13 should not be used\n    at Deinterleaver.scala:75 assert(!q.enq.valid, s\"ID ${i} should not be used\")\n"
            ); // @[Deinterleaver.scala 75:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~queue_wire_14_enq_valid) & ~reset) begin
          $fatal; // @[Deinterleaver.scala 75:19]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~queue_wire_14_enq_valid)) begin
          $fwrite(32'h80000002,
            "Assertion failed: ID 14 should not be used\n    at Deinterleaver.scala:75 assert(!q.enq.valid, s\"ID ${i} should not be used\")\n"
            ); // @[Deinterleaver.scala 75:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~queue_wire_15_enq_valid) & ~reset) begin
          $fatal; // @[Deinterleaver.scala 75:19]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~queue_wire_15_enq_valid)) begin
          $fwrite(32'h80000002,
            "Assertion failed: ID 15 should not be used\n    at Deinterleaver.scala:75 assert(!q.enq.valid, s\"ID ${i} should not be used\")\n"
            ); // @[Deinterleaver.scala 75:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec | pending_count != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec | pending_count != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc | pending_count != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc | pending_count != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_1 | pending_count_1 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_1 | pending_count_1 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_1 | pending_count_1 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_1 | pending_count_1 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_2 | pending_count_2 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_2 | pending_count_2 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_2 | pending_count_2 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_2 | pending_count_2 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_3 | pending_count_3 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_3 | pending_count_3 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_3 | pending_count_3 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_3 | pending_count_3 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_4 | pending_count_4 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_4 | pending_count_4 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_4 | pending_count_4 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_4 | pending_count_4 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_5 | pending_count_5 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_5 | pending_count_5 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_5 | pending_count_5 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_5 | pending_count_5 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_6 | pending_count_6 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_6 | pending_count_6 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_6 | pending_count_6 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_6 | pending_count_6 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_7 | pending_count_7 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_7 | pending_count_7 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_7 | pending_count_7 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_7 | pending_count_7 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_8 | pending_count_8 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_8 | pending_count_8 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_8 | pending_count_8 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_8 | pending_count_8 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_dec_9 | pending_count_9 != 4'h0) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 99:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_dec_9 | pending_count_9 != 4'h0)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:99 assert (!dec || count =/= 0.U)\n"); // @[Deinterleaver.scala 99:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~pending_inc_9 | pending_count_9 != 4'h8) & _qs_T_2) begin
          $fatal; // @[Deinterleaver.scala 100:20]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_qs_T_2 & ~(~pending_inc_9 | pending_count_9 != 4'h8)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Deinterleaver.scala:100 assert (!inc || count =/= beats.U)\n"); // @[Deinterleaver.scala 100:20]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  locked = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  deq_id = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  pending_count = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  pending_count_1 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  pending_count_2 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  pending_count_3 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  pending_count_4 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  pending_count_5 = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  pending_count_6 = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  pending_count_7 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  pending_count_8 = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  pending_count_9 = _RAND_11[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module QueueCompatibility_6_inVCU118FPGATestHarness(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input  [3:0] io_enq_bits_tl_state_size,
  input  [3:0] io_enq_bits_tl_state_source,
  input        io_deq_ready,
  output       io_deq_valid,
  output [3:0] io_deq_bits_tl_state_size,
  output [3:0] io_deq_bits_tl_state_source
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_tl_state_size [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_size_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_tl_state_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_tl_state_size_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_size_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_size_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_size_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] ram_tl_state_source [0:0]; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_source_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [3:0] ram_tl_state_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_tl_state_source_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_source_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_source_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_tl_state_source_MPORT_en; // @[Decoupled.scala 259:95]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 264:28]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  assign ram_tl_state_size_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tl_state_size_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_tl_state_size_io_deq_bits_MPORT_data = ram_tl_state_size[ram_tl_state_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_tl_state_size_MPORT_data = io_enq_bits_tl_state_size;
  assign ram_tl_state_size_MPORT_addr = 1'h0;
  assign ram_tl_state_size_MPORT_mask = 1'h1;
  assign ram_tl_state_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tl_state_source_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tl_state_source_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_tl_state_source_io_deq_bits_MPORT_data = ram_tl_state_source[ram_tl_state_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_tl_state_source_MPORT_data = io_enq_bits_tl_state_source;
  assign ram_tl_state_source_MPORT_addr = 1'h0;
  assign ram_tl_state_source_MPORT_mask = 1'h1;
  assign ram_tl_state_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 288:19]
  assign io_deq_bits_tl_state_size = ram_tl_state_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  assign io_deq_bits_tl_state_source = ram_tl_state_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17]
  always @(posedge clock) begin
    if (ram_tl_state_size_MPORT_en & ram_tl_state_size_MPORT_mask) begin
      ram_tl_state_size[ram_tl_state_size_MPORT_addr] <= ram_tl_state_size_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_tl_state_source_MPORT_en & ram_tl_state_source_MPORT_mask) begin
      ram_tl_state_source[ram_tl_state_source_MPORT_addr] <= ram_tl_state_source_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (reset) begin // @[Decoupled.scala 262:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 262:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 279:27]
      maybe_full <= do_enq; // @[Decoupled.scala 280:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_tl_state_size[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_tl_state_source[initvar] = _RAND_1[3:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  maybe_full = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AXI4UserYanker_1_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  input  [3:0]  auto_in_aw_bits_qos,
  input  [3:0]  auto_in_aw_bits_echo_tl_state_size,
  input  [3:0]  auto_in_aw_bits_echo_tl_state_source,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output [3:0]  auto_in_b_bits_echo_tl_state_size,
  output [3:0]  auto_in_b_bits_echo_tl_state_source,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input  [3:0]  auto_in_ar_bits_qos,
  input  [3:0]  auto_in_ar_bits_echo_tl_state_size,
  input  [3:0]  auto_in_ar_bits_echo_tl_state_source,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output [3:0]  auto_in_r_bits_echo_tl_state_size,
  output [3:0]  auto_in_r_bits_echo_tl_state_source,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input         auto_out_r_bits_last
);
  wire  QueueCompatibility_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_1_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_1_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_2_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_2_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_3_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_3_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_4_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_4_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_5_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_5_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_6_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_6_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_7_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_7_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_8_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_8_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_9_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_9_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_10_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_10_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_10_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_10_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_10_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_11_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_11_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_11_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_11_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_11_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_12_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_12_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_12_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_12_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_12_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_13_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_13_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_13_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_13_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_13_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_14_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_14_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_14_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_14_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_14_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_15_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_15_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_15_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_15_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_15_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_16_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_16_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_16_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_16_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_16_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_17_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_17_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_17_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_17_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_17_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_18_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_18_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_18_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_18_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_18_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_clock; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_reset; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_io_enq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_io_enq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_19_io_enq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_19_io_enq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_io_deq_ready; // @[UserYanker.scala 47:17]
  wire  QueueCompatibility_19_io_deq_valid; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_19_io_deq_bits_tl_state_size; // @[UserYanker.scala 47:17]
  wire [3:0] QueueCompatibility_19_io_deq_bits_tl_state_source; // @[UserYanker.scala 47:17]
  wire  _ar_ready_WIRE_0 = QueueCompatibility_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _ar_ready_WIRE_1 = QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_1 = 4'h1 == auto_in_ar_bits_id ? _ar_ready_WIRE_1 : _ar_ready_WIRE_0; // @[UserYanker.scala 56:{36,36}]
  wire  _ar_ready_WIRE_2 = QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_2 = 4'h2 == auto_in_ar_bits_id ? _ar_ready_WIRE_2 : _GEN_1; // @[UserYanker.scala 56:{36,36}]
  wire  _ar_ready_WIRE_3 = QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_3 = 4'h3 == auto_in_ar_bits_id ? _ar_ready_WIRE_3 : _GEN_2; // @[UserYanker.scala 56:{36,36}]
  wire  _ar_ready_WIRE_4 = QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_4 = 4'h4 == auto_in_ar_bits_id ? _ar_ready_WIRE_4 : _GEN_3; // @[UserYanker.scala 56:{36,36}]
  wire  _ar_ready_WIRE_5 = QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_5 = 4'h5 == auto_in_ar_bits_id ? _ar_ready_WIRE_5 : _GEN_4; // @[UserYanker.scala 56:{36,36}]
  wire  _ar_ready_WIRE_6 = QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_6 = 4'h6 == auto_in_ar_bits_id ? _ar_ready_WIRE_6 : _GEN_5; // @[UserYanker.scala 56:{36,36}]
  wire  _ar_ready_WIRE_7 = QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_7 = 4'h7 == auto_in_ar_bits_id ? _ar_ready_WIRE_7 : _GEN_6; // @[UserYanker.scala 56:{36,36}]
  wire  _ar_ready_WIRE_8 = QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_8 = 4'h8 == auto_in_ar_bits_id ? _ar_ready_WIRE_8 : _GEN_7; // @[UserYanker.scala 56:{36,36}]
  wire  _ar_ready_WIRE_9 = QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 55:{25,25}]
  wire  _GEN_9 = 4'h9 == auto_in_ar_bits_id ? _ar_ready_WIRE_9 : _GEN_8; // @[UserYanker.scala 56:{36,36}]
  wire  _GEN_10 = 4'ha == auto_in_ar_bits_id ? 1'h0 : _GEN_9; // @[UserYanker.scala 56:{36,36}]
  wire  _GEN_11 = 4'hb == auto_in_ar_bits_id ? 1'h0 : _GEN_10; // @[UserYanker.scala 56:{36,36}]
  wire  _GEN_12 = 4'hc == auto_in_ar_bits_id ? 1'h0 : _GEN_11; // @[UserYanker.scala 56:{36,36}]
  wire  _GEN_13 = 4'hd == auto_in_ar_bits_id ? 1'h0 : _GEN_12; // @[UserYanker.scala 56:{36,36}]
  wire  _GEN_14 = 4'he == auto_in_ar_bits_id ? 1'h0 : _GEN_13; // @[UserYanker.scala 56:{36,36}]
  wire  _GEN_15 = 4'hf == auto_in_ar_bits_id ? 1'h0 : _GEN_14; // @[UserYanker.scala 56:{36,36}]
  wire  _r_valid_WIRE_0 = QueueCompatibility_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _r_valid_WIRE_1 = QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_17 = 4'h1 == auto_out_r_bits_id ? _r_valid_WIRE_1 : _r_valid_WIRE_0; // @[UserYanker.scala 63:{28,28}]
  wire  _r_valid_WIRE_2 = QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_18 = 4'h2 == auto_out_r_bits_id ? _r_valid_WIRE_2 : _GEN_17; // @[UserYanker.scala 63:{28,28}]
  wire  _r_valid_WIRE_3 = QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_19 = 4'h3 == auto_out_r_bits_id ? _r_valid_WIRE_3 : _GEN_18; // @[UserYanker.scala 63:{28,28}]
  wire  _r_valid_WIRE_4 = QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_20 = 4'h4 == auto_out_r_bits_id ? _r_valid_WIRE_4 : _GEN_19; // @[UserYanker.scala 63:{28,28}]
  wire  _r_valid_WIRE_5 = QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_21 = 4'h5 == auto_out_r_bits_id ? _r_valid_WIRE_5 : _GEN_20; // @[UserYanker.scala 63:{28,28}]
  wire  _r_valid_WIRE_6 = QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_22 = 4'h6 == auto_out_r_bits_id ? _r_valid_WIRE_6 : _GEN_21; // @[UserYanker.scala 63:{28,28}]
  wire  _r_valid_WIRE_7 = QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_23 = 4'h7 == auto_out_r_bits_id ? _r_valid_WIRE_7 : _GEN_22; // @[UserYanker.scala 63:{28,28}]
  wire  _r_valid_WIRE_8 = QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_24 = 4'h8 == auto_out_r_bits_id ? _r_valid_WIRE_8 : _GEN_23; // @[UserYanker.scala 63:{28,28}]
  wire  _r_valid_WIRE_9 = QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 61:{24,24}]
  wire  _GEN_25 = 4'h9 == auto_out_r_bits_id ? _r_valid_WIRE_9 : _GEN_24; // @[UserYanker.scala 63:{28,28}]
  wire  _GEN_26 = 4'ha == auto_out_r_bits_id ? 1'h0 : _GEN_25; // @[UserYanker.scala 63:{28,28}]
  wire  _GEN_27 = 4'hb == auto_out_r_bits_id ? 1'h0 : _GEN_26; // @[UserYanker.scala 63:{28,28}]
  wire  _GEN_28 = 4'hc == auto_out_r_bits_id ? 1'h0 : _GEN_27; // @[UserYanker.scala 63:{28,28}]
  wire  _GEN_29 = 4'hd == auto_out_r_bits_id ? 1'h0 : _GEN_28; // @[UserYanker.scala 63:{28,28}]
  wire  _GEN_30 = 4'he == auto_out_r_bits_id ? 1'h0 : _GEN_29; // @[UserYanker.scala 63:{28,28}]
  wire  _GEN_31 = 4'hf == auto_out_r_bits_id ? 1'h0 : _GEN_30; // @[UserYanker.scala 63:{28,28}]
  wire  _T_3 = ~reset; // @[UserYanker.scala 63:14]
  wire [3:0] _r_bits_WIRE_0_tl_state_source = QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _r_bits_WIRE_1_tl_state_source = QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_33 = 4'h1 == auto_out_r_bits_id ? _r_bits_WIRE_1_tl_state_source : _r_bits_WIRE_0_tl_state_source; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_2_tl_state_source = QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_34 = 4'h2 == auto_out_r_bits_id ? _r_bits_WIRE_2_tl_state_source : _GEN_33; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_3_tl_state_source = QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_35 = 4'h3 == auto_out_r_bits_id ? _r_bits_WIRE_3_tl_state_source : _GEN_34; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_4_tl_state_source = QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_36 = 4'h4 == auto_out_r_bits_id ? _r_bits_WIRE_4_tl_state_source : _GEN_35; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_5_tl_state_source = QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_37 = 4'h5 == auto_out_r_bits_id ? _r_bits_WIRE_5_tl_state_source : _GEN_36; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_6_tl_state_source = QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_38 = 4'h6 == auto_out_r_bits_id ? _r_bits_WIRE_6_tl_state_source : _GEN_37; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_7_tl_state_source = QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_39 = 4'h7 == auto_out_r_bits_id ? _r_bits_WIRE_7_tl_state_source : _GEN_38; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_8_tl_state_source = QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_40 = 4'h8 == auto_out_r_bits_id ? _r_bits_WIRE_8_tl_state_source : _GEN_39; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_9_tl_state_source = QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_41 = 4'h9 == auto_out_r_bits_id ? _r_bits_WIRE_9_tl_state_source : _GEN_40; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_42 = 4'ha == auto_out_r_bits_id ? 4'h0 : _GEN_41; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_43 = 4'hb == auto_out_r_bits_id ? 4'h0 : _GEN_42; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_44 = 4'hc == auto_out_r_bits_id ? 4'h0 : _GEN_43; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_45 = 4'hd == auto_out_r_bits_id ? 4'h0 : _GEN_44; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_46 = 4'he == auto_out_r_bits_id ? 4'h0 : _GEN_45; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_0_tl_state_size = QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _r_bits_WIRE_1_tl_state_size = QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_49 = 4'h1 == auto_out_r_bits_id ? _r_bits_WIRE_1_tl_state_size : _r_bits_WIRE_0_tl_state_size; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_2_tl_state_size = QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_50 = 4'h2 == auto_out_r_bits_id ? _r_bits_WIRE_2_tl_state_size : _GEN_49; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_3_tl_state_size = QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_51 = 4'h3 == auto_out_r_bits_id ? _r_bits_WIRE_3_tl_state_size : _GEN_50; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_4_tl_state_size = QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_52 = 4'h4 == auto_out_r_bits_id ? _r_bits_WIRE_4_tl_state_size : _GEN_51; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_5_tl_state_size = QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_53 = 4'h5 == auto_out_r_bits_id ? _r_bits_WIRE_5_tl_state_size : _GEN_52; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_6_tl_state_size = QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_54 = 4'h6 == auto_out_r_bits_id ? _r_bits_WIRE_6_tl_state_size : _GEN_53; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_7_tl_state_size = QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_55 = 4'h7 == auto_out_r_bits_id ? _r_bits_WIRE_7_tl_state_size : _GEN_54; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_8_tl_state_size = QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_56 = 4'h8 == auto_out_r_bits_id ? _r_bits_WIRE_8_tl_state_size : _GEN_55; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _r_bits_WIRE_9_tl_state_size = QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 62:{23,23}]
  wire [3:0] _GEN_57 = 4'h9 == auto_out_r_bits_id ? _r_bits_WIRE_9_tl_state_size : _GEN_56; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_58 = 4'ha == auto_out_r_bits_id ? 4'h0 : _GEN_57; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_59 = 4'hb == auto_out_r_bits_id ? 4'h0 : _GEN_58; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_60 = 4'hc == auto_out_r_bits_id ? 4'h0 : _GEN_59; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_61 = 4'hd == auto_out_r_bits_id ? 4'h0 : _GEN_60; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_62 = 4'he == auto_out_r_bits_id ? 4'h0 : _GEN_61; // @[BundleMap.scala 247:{19,19}]
  wire [15:0] _arsel_T = 16'h1 << auto_in_ar_bits_id; // @[OneHot.scala 64:12]
  wire  arsel_0 = _arsel_T[0]; // @[UserYanker.scala 67:55]
  wire  arsel_1 = _arsel_T[1]; // @[UserYanker.scala 67:55]
  wire  arsel_2 = _arsel_T[2]; // @[UserYanker.scala 67:55]
  wire  arsel_3 = _arsel_T[3]; // @[UserYanker.scala 67:55]
  wire  arsel_4 = _arsel_T[4]; // @[UserYanker.scala 67:55]
  wire  arsel_5 = _arsel_T[5]; // @[UserYanker.scala 67:55]
  wire  arsel_6 = _arsel_T[6]; // @[UserYanker.scala 67:55]
  wire  arsel_7 = _arsel_T[7]; // @[UserYanker.scala 67:55]
  wire  arsel_8 = _arsel_T[8]; // @[UserYanker.scala 67:55]
  wire  arsel_9 = _arsel_T[9]; // @[UserYanker.scala 67:55]
  wire [15:0] _rsel_T = 16'h1 << auto_out_r_bits_id; // @[OneHot.scala 64:12]
  wire  rsel_0 = _rsel_T[0]; // @[UserYanker.scala 68:55]
  wire  rsel_1 = _rsel_T[1]; // @[UserYanker.scala 68:55]
  wire  rsel_2 = _rsel_T[2]; // @[UserYanker.scala 68:55]
  wire  rsel_3 = _rsel_T[3]; // @[UserYanker.scala 68:55]
  wire  rsel_4 = _rsel_T[4]; // @[UserYanker.scala 68:55]
  wire  rsel_5 = _rsel_T[5]; // @[UserYanker.scala 68:55]
  wire  rsel_6 = _rsel_T[6]; // @[UserYanker.scala 68:55]
  wire  rsel_7 = _rsel_T[7]; // @[UserYanker.scala 68:55]
  wire  rsel_8 = _rsel_T[8]; // @[UserYanker.scala 68:55]
  wire  rsel_9 = _rsel_T[9]; // @[UserYanker.scala 68:55]
  wire  _aw_ready_WIRE_0 = QueueCompatibility_10_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _aw_ready_WIRE_1 = QueueCompatibility_11_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_65 = 4'h1 == auto_in_aw_bits_id ? _aw_ready_WIRE_1 : _aw_ready_WIRE_0; // @[UserYanker.scala 77:{36,36}]
  wire  _aw_ready_WIRE_2 = QueueCompatibility_12_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_66 = 4'h2 == auto_in_aw_bits_id ? _aw_ready_WIRE_2 : _GEN_65; // @[UserYanker.scala 77:{36,36}]
  wire  _aw_ready_WIRE_3 = QueueCompatibility_13_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_67 = 4'h3 == auto_in_aw_bits_id ? _aw_ready_WIRE_3 : _GEN_66; // @[UserYanker.scala 77:{36,36}]
  wire  _aw_ready_WIRE_4 = QueueCompatibility_14_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_68 = 4'h4 == auto_in_aw_bits_id ? _aw_ready_WIRE_4 : _GEN_67; // @[UserYanker.scala 77:{36,36}]
  wire  _aw_ready_WIRE_5 = QueueCompatibility_15_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_69 = 4'h5 == auto_in_aw_bits_id ? _aw_ready_WIRE_5 : _GEN_68; // @[UserYanker.scala 77:{36,36}]
  wire  _aw_ready_WIRE_6 = QueueCompatibility_16_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_70 = 4'h6 == auto_in_aw_bits_id ? _aw_ready_WIRE_6 : _GEN_69; // @[UserYanker.scala 77:{36,36}]
  wire  _aw_ready_WIRE_7 = QueueCompatibility_17_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_71 = 4'h7 == auto_in_aw_bits_id ? _aw_ready_WIRE_7 : _GEN_70; // @[UserYanker.scala 77:{36,36}]
  wire  _aw_ready_WIRE_8 = QueueCompatibility_18_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_72 = 4'h8 == auto_in_aw_bits_id ? _aw_ready_WIRE_8 : _GEN_71; // @[UserYanker.scala 77:{36,36}]
  wire  _aw_ready_WIRE_9 = QueueCompatibility_19_io_enq_ready; // @[UserYanker.scala 76:{25,25}]
  wire  _GEN_73 = 4'h9 == auto_in_aw_bits_id ? _aw_ready_WIRE_9 : _GEN_72; // @[UserYanker.scala 77:{36,36}]
  wire  _GEN_74 = 4'ha == auto_in_aw_bits_id ? 1'h0 : _GEN_73; // @[UserYanker.scala 77:{36,36}]
  wire  _GEN_75 = 4'hb == auto_in_aw_bits_id ? 1'h0 : _GEN_74; // @[UserYanker.scala 77:{36,36}]
  wire  _GEN_76 = 4'hc == auto_in_aw_bits_id ? 1'h0 : _GEN_75; // @[UserYanker.scala 77:{36,36}]
  wire  _GEN_77 = 4'hd == auto_in_aw_bits_id ? 1'h0 : _GEN_76; // @[UserYanker.scala 77:{36,36}]
  wire  _GEN_78 = 4'he == auto_in_aw_bits_id ? 1'h0 : _GEN_77; // @[UserYanker.scala 77:{36,36}]
  wire  _GEN_79 = 4'hf == auto_in_aw_bits_id ? 1'h0 : _GEN_78; // @[UserYanker.scala 77:{36,36}]
  wire  _b_valid_WIRE_0 = QueueCompatibility_10_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _b_valid_WIRE_1 = QueueCompatibility_11_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_81 = 4'h1 == auto_out_b_bits_id ? _b_valid_WIRE_1 : _b_valid_WIRE_0; // @[UserYanker.scala 84:{28,28}]
  wire  _b_valid_WIRE_2 = QueueCompatibility_12_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_82 = 4'h2 == auto_out_b_bits_id ? _b_valid_WIRE_2 : _GEN_81; // @[UserYanker.scala 84:{28,28}]
  wire  _b_valid_WIRE_3 = QueueCompatibility_13_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_83 = 4'h3 == auto_out_b_bits_id ? _b_valid_WIRE_3 : _GEN_82; // @[UserYanker.scala 84:{28,28}]
  wire  _b_valid_WIRE_4 = QueueCompatibility_14_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_84 = 4'h4 == auto_out_b_bits_id ? _b_valid_WIRE_4 : _GEN_83; // @[UserYanker.scala 84:{28,28}]
  wire  _b_valid_WIRE_5 = QueueCompatibility_15_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_85 = 4'h5 == auto_out_b_bits_id ? _b_valid_WIRE_5 : _GEN_84; // @[UserYanker.scala 84:{28,28}]
  wire  _b_valid_WIRE_6 = QueueCompatibility_16_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_86 = 4'h6 == auto_out_b_bits_id ? _b_valid_WIRE_6 : _GEN_85; // @[UserYanker.scala 84:{28,28}]
  wire  _b_valid_WIRE_7 = QueueCompatibility_17_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_87 = 4'h7 == auto_out_b_bits_id ? _b_valid_WIRE_7 : _GEN_86; // @[UserYanker.scala 84:{28,28}]
  wire  _b_valid_WIRE_8 = QueueCompatibility_18_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_88 = 4'h8 == auto_out_b_bits_id ? _b_valid_WIRE_8 : _GEN_87; // @[UserYanker.scala 84:{28,28}]
  wire  _b_valid_WIRE_9 = QueueCompatibility_19_io_deq_valid; // @[UserYanker.scala 82:{24,24}]
  wire  _GEN_89 = 4'h9 == auto_out_b_bits_id ? _b_valid_WIRE_9 : _GEN_88; // @[UserYanker.scala 84:{28,28}]
  wire  _GEN_90 = 4'ha == auto_out_b_bits_id ? 1'h0 : _GEN_89; // @[UserYanker.scala 84:{28,28}]
  wire  _GEN_91 = 4'hb == auto_out_b_bits_id ? 1'h0 : _GEN_90; // @[UserYanker.scala 84:{28,28}]
  wire  _GEN_92 = 4'hc == auto_out_b_bits_id ? 1'h0 : _GEN_91; // @[UserYanker.scala 84:{28,28}]
  wire  _GEN_93 = 4'hd == auto_out_b_bits_id ? 1'h0 : _GEN_92; // @[UserYanker.scala 84:{28,28}]
  wire  _GEN_94 = 4'he == auto_out_b_bits_id ? 1'h0 : _GEN_93; // @[UserYanker.scala 84:{28,28}]
  wire  _GEN_95 = 4'hf == auto_out_b_bits_id ? 1'h0 : _GEN_94; // @[UserYanker.scala 84:{28,28}]
  wire [3:0] _b_bits_WIRE_0_tl_state_source = QueueCompatibility_10_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _b_bits_WIRE_1_tl_state_source = QueueCompatibility_11_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_97 = 4'h1 == auto_out_b_bits_id ? _b_bits_WIRE_1_tl_state_source : _b_bits_WIRE_0_tl_state_source; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_2_tl_state_source = QueueCompatibility_12_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_98 = 4'h2 == auto_out_b_bits_id ? _b_bits_WIRE_2_tl_state_source : _GEN_97; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_3_tl_state_source = QueueCompatibility_13_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_99 = 4'h3 == auto_out_b_bits_id ? _b_bits_WIRE_3_tl_state_source : _GEN_98; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_4_tl_state_source = QueueCompatibility_14_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_100 = 4'h4 == auto_out_b_bits_id ? _b_bits_WIRE_4_tl_state_source : _GEN_99; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_5_tl_state_source = QueueCompatibility_15_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_101 = 4'h5 == auto_out_b_bits_id ? _b_bits_WIRE_5_tl_state_source : _GEN_100; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_6_tl_state_source = QueueCompatibility_16_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_102 = 4'h6 == auto_out_b_bits_id ? _b_bits_WIRE_6_tl_state_source : _GEN_101; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_7_tl_state_source = QueueCompatibility_17_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_103 = 4'h7 == auto_out_b_bits_id ? _b_bits_WIRE_7_tl_state_source : _GEN_102; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_8_tl_state_source = QueueCompatibility_18_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_104 = 4'h8 == auto_out_b_bits_id ? _b_bits_WIRE_8_tl_state_source : _GEN_103; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_9_tl_state_source = QueueCompatibility_19_io_deq_bits_tl_state_source; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_105 = 4'h9 == auto_out_b_bits_id ? _b_bits_WIRE_9_tl_state_source : _GEN_104; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_106 = 4'ha == auto_out_b_bits_id ? 4'h0 : _GEN_105; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_107 = 4'hb == auto_out_b_bits_id ? 4'h0 : _GEN_106; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_108 = 4'hc == auto_out_b_bits_id ? 4'h0 : _GEN_107; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_109 = 4'hd == auto_out_b_bits_id ? 4'h0 : _GEN_108; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_110 = 4'he == auto_out_b_bits_id ? 4'h0 : _GEN_109; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_0_tl_state_size = QueueCompatibility_10_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _b_bits_WIRE_1_tl_state_size = QueueCompatibility_11_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_113 = 4'h1 == auto_out_b_bits_id ? _b_bits_WIRE_1_tl_state_size : _b_bits_WIRE_0_tl_state_size; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_2_tl_state_size = QueueCompatibility_12_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_114 = 4'h2 == auto_out_b_bits_id ? _b_bits_WIRE_2_tl_state_size : _GEN_113; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_3_tl_state_size = QueueCompatibility_13_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_115 = 4'h3 == auto_out_b_bits_id ? _b_bits_WIRE_3_tl_state_size : _GEN_114; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_4_tl_state_size = QueueCompatibility_14_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_116 = 4'h4 == auto_out_b_bits_id ? _b_bits_WIRE_4_tl_state_size : _GEN_115; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_5_tl_state_size = QueueCompatibility_15_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_117 = 4'h5 == auto_out_b_bits_id ? _b_bits_WIRE_5_tl_state_size : _GEN_116; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_6_tl_state_size = QueueCompatibility_16_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_118 = 4'h6 == auto_out_b_bits_id ? _b_bits_WIRE_6_tl_state_size : _GEN_117; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_7_tl_state_size = QueueCompatibility_17_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_119 = 4'h7 == auto_out_b_bits_id ? _b_bits_WIRE_7_tl_state_size : _GEN_118; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_8_tl_state_size = QueueCompatibility_18_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_120 = 4'h8 == auto_out_b_bits_id ? _b_bits_WIRE_8_tl_state_size : _GEN_119; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _b_bits_WIRE_9_tl_state_size = QueueCompatibility_19_io_deq_bits_tl_state_size; // @[UserYanker.scala 83:{23,23}]
  wire [3:0] _GEN_121 = 4'h9 == auto_out_b_bits_id ? _b_bits_WIRE_9_tl_state_size : _GEN_120; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_122 = 4'ha == auto_out_b_bits_id ? 4'h0 : _GEN_121; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_123 = 4'hb == auto_out_b_bits_id ? 4'h0 : _GEN_122; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_124 = 4'hc == auto_out_b_bits_id ? 4'h0 : _GEN_123; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_125 = 4'hd == auto_out_b_bits_id ? 4'h0 : _GEN_124; // @[BundleMap.scala 247:{19,19}]
  wire [3:0] _GEN_126 = 4'he == auto_out_b_bits_id ? 4'h0 : _GEN_125; // @[BundleMap.scala 247:{19,19}]
  wire [15:0] _awsel_T = 16'h1 << auto_in_aw_bits_id; // @[OneHot.scala 64:12]
  wire  awsel_0 = _awsel_T[0]; // @[UserYanker.scala 88:55]
  wire  awsel_1 = _awsel_T[1]; // @[UserYanker.scala 88:55]
  wire  awsel_2 = _awsel_T[2]; // @[UserYanker.scala 88:55]
  wire  awsel_3 = _awsel_T[3]; // @[UserYanker.scala 88:55]
  wire  awsel_4 = _awsel_T[4]; // @[UserYanker.scala 88:55]
  wire  awsel_5 = _awsel_T[5]; // @[UserYanker.scala 88:55]
  wire  awsel_6 = _awsel_T[6]; // @[UserYanker.scala 88:55]
  wire  awsel_7 = _awsel_T[7]; // @[UserYanker.scala 88:55]
  wire  awsel_8 = _awsel_T[8]; // @[UserYanker.scala 88:55]
  wire  awsel_9 = _awsel_T[9]; // @[UserYanker.scala 88:55]
  wire [15:0] _bsel_T = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 64:12]
  wire  bsel_0 = _bsel_T[0]; // @[UserYanker.scala 89:55]
  wire  bsel_1 = _bsel_T[1]; // @[UserYanker.scala 89:55]
  wire  bsel_2 = _bsel_T[2]; // @[UserYanker.scala 89:55]
  wire  bsel_3 = _bsel_T[3]; // @[UserYanker.scala 89:55]
  wire  bsel_4 = _bsel_T[4]; // @[UserYanker.scala 89:55]
  wire  bsel_5 = _bsel_T[5]; // @[UserYanker.scala 89:55]
  wire  bsel_6 = _bsel_T[6]; // @[UserYanker.scala 89:55]
  wire  bsel_7 = _bsel_T[7]; // @[UserYanker.scala 89:55]
  wire  bsel_8 = _bsel_T[8]; // @[UserYanker.scala 89:55]
  wire  bsel_9 = _bsel_T[9]; // @[UserYanker.scala 89:55]
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_clock),
    .reset(QueueCompatibility_reset),
    .io_enq_ready(QueueCompatibility_io_enq_ready),
    .io_enq_valid(QueueCompatibility_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_io_deq_ready),
    .io_deq_valid(QueueCompatibility_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_1 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_1_clock),
    .reset(QueueCompatibility_1_reset),
    .io_enq_ready(QueueCompatibility_1_io_enq_ready),
    .io_enq_valid(QueueCompatibility_1_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_1_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_1_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_1_io_deq_ready),
    .io_deq_valid(QueueCompatibility_1_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_1_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_1_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_2 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_2_clock),
    .reset(QueueCompatibility_2_reset),
    .io_enq_ready(QueueCompatibility_2_io_enq_ready),
    .io_enq_valid(QueueCompatibility_2_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_2_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_2_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_2_io_deq_ready),
    .io_deq_valid(QueueCompatibility_2_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_2_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_2_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_3 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_3_clock),
    .reset(QueueCompatibility_3_reset),
    .io_enq_ready(QueueCompatibility_3_io_enq_ready),
    .io_enq_valid(QueueCompatibility_3_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_3_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_3_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_3_io_deq_ready),
    .io_deq_valid(QueueCompatibility_3_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_3_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_3_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_4 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_4_clock),
    .reset(QueueCompatibility_4_reset),
    .io_enq_ready(QueueCompatibility_4_io_enq_ready),
    .io_enq_valid(QueueCompatibility_4_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_4_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_4_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_4_io_deq_ready),
    .io_deq_valid(QueueCompatibility_4_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_4_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_4_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_5 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_5_clock),
    .reset(QueueCompatibility_5_reset),
    .io_enq_ready(QueueCompatibility_5_io_enq_ready),
    .io_enq_valid(QueueCompatibility_5_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_5_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_5_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_5_io_deq_ready),
    .io_deq_valid(QueueCompatibility_5_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_5_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_5_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_6 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_6_clock),
    .reset(QueueCompatibility_6_reset),
    .io_enq_ready(QueueCompatibility_6_io_enq_ready),
    .io_enq_valid(QueueCompatibility_6_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_6_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_6_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_6_io_deq_ready),
    .io_deq_valid(QueueCompatibility_6_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_6_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_6_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_7 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_7_clock),
    .reset(QueueCompatibility_7_reset),
    .io_enq_ready(QueueCompatibility_7_io_enq_ready),
    .io_enq_valid(QueueCompatibility_7_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_7_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_7_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_7_io_deq_ready),
    .io_deq_valid(QueueCompatibility_7_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_7_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_7_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_8 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_8_clock),
    .reset(QueueCompatibility_8_reset),
    .io_enq_ready(QueueCompatibility_8_io_enq_ready),
    .io_enq_valid(QueueCompatibility_8_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_8_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_8_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_8_io_deq_ready),
    .io_deq_valid(QueueCompatibility_8_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_8_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_8_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_9 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_9_clock),
    .reset(QueueCompatibility_9_reset),
    .io_enq_ready(QueueCompatibility_9_io_enq_ready),
    .io_enq_valid(QueueCompatibility_9_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_9_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_9_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_9_io_deq_ready),
    .io_deq_valid(QueueCompatibility_9_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_9_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_9_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_10 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_10_clock),
    .reset(QueueCompatibility_10_reset),
    .io_enq_ready(QueueCompatibility_10_io_enq_ready),
    .io_enq_valid(QueueCompatibility_10_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_10_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_10_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_10_io_deq_ready),
    .io_deq_valid(QueueCompatibility_10_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_10_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_10_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_11 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_11_clock),
    .reset(QueueCompatibility_11_reset),
    .io_enq_ready(QueueCompatibility_11_io_enq_ready),
    .io_enq_valid(QueueCompatibility_11_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_11_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_11_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_11_io_deq_ready),
    .io_deq_valid(QueueCompatibility_11_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_11_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_11_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_12 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_12_clock),
    .reset(QueueCompatibility_12_reset),
    .io_enq_ready(QueueCompatibility_12_io_enq_ready),
    .io_enq_valid(QueueCompatibility_12_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_12_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_12_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_12_io_deq_ready),
    .io_deq_valid(QueueCompatibility_12_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_12_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_12_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_13 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_13_clock),
    .reset(QueueCompatibility_13_reset),
    .io_enq_ready(QueueCompatibility_13_io_enq_ready),
    .io_enq_valid(QueueCompatibility_13_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_13_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_13_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_13_io_deq_ready),
    .io_deq_valid(QueueCompatibility_13_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_13_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_13_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_14 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_14_clock),
    .reset(QueueCompatibility_14_reset),
    .io_enq_ready(QueueCompatibility_14_io_enq_ready),
    .io_enq_valid(QueueCompatibility_14_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_14_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_14_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_14_io_deq_ready),
    .io_deq_valid(QueueCompatibility_14_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_14_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_14_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_15 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_15_clock),
    .reset(QueueCompatibility_15_reset),
    .io_enq_ready(QueueCompatibility_15_io_enq_ready),
    .io_enq_valid(QueueCompatibility_15_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_15_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_15_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_15_io_deq_ready),
    .io_deq_valid(QueueCompatibility_15_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_15_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_15_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_16 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_16_clock),
    .reset(QueueCompatibility_16_reset),
    .io_enq_ready(QueueCompatibility_16_io_enq_ready),
    .io_enq_valid(QueueCompatibility_16_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_16_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_16_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_16_io_deq_ready),
    .io_deq_valid(QueueCompatibility_16_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_16_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_16_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_17 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_17_clock),
    .reset(QueueCompatibility_17_reset),
    .io_enq_ready(QueueCompatibility_17_io_enq_ready),
    .io_enq_valid(QueueCompatibility_17_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_17_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_17_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_17_io_deq_ready),
    .io_deq_valid(QueueCompatibility_17_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_17_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_17_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_18 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_18_clock),
    .reset(QueueCompatibility_18_reset),
    .io_enq_ready(QueueCompatibility_18_io_enq_ready),
    .io_enq_valid(QueueCompatibility_18_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_18_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_18_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_18_io_deq_ready),
    .io_deq_valid(QueueCompatibility_18_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_18_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_18_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_6_inVCU118FPGATestHarness QueueCompatibility_19 ( // @[UserYanker.scala 47:17]
    .clock(QueueCompatibility_19_clock),
    .reset(QueueCompatibility_19_reset),
    .io_enq_ready(QueueCompatibility_19_io_enq_ready),
    .io_enq_valid(QueueCompatibility_19_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_19_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_19_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_19_io_deq_ready),
    .io_deq_valid(QueueCompatibility_19_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_19_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_19_io_deq_bits_tl_state_source)
  );
  assign auto_in_aw_ready = auto_out_aw_ready & _GEN_79; // @[UserYanker.scala 77:36]
  assign auto_in_w_ready = auto_out_w_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_valid = auto_out_b_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_b_bits_echo_tl_state_size = 4'hf == auto_out_b_bits_id ? 4'h0 : _GEN_126; // @[BundleMap.scala 247:{19,19}]
  assign auto_in_b_bits_echo_tl_state_source = 4'hf == auto_out_b_bits_id ? 4'h0 : _GEN_110; // @[BundleMap.scala 247:{19,19}]
  assign auto_in_ar_ready = auto_out_ar_ready & _GEN_15; // @[UserYanker.scala 56:36]
  assign auto_in_r_valid = auto_out_r_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_r_bits_echo_tl_state_size = 4'hf == auto_out_r_bits_id ? 4'h0 : _GEN_62; // @[BundleMap.scala 247:{19,19}]
  assign auto_in_r_bits_echo_tl_state_source = 4'hf == auto_out_r_bits_id ? 4'h0 : _GEN_46; // @[BundleMap.scala 247:{19,19}]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_aw_valid = auto_in_aw_valid & _GEN_79; // @[UserYanker.scala 78:36]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_aw_bits_qos = auto_in_aw_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_valid = auto_in_w_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_b_ready = auto_in_b_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_valid = auto_in_ar_valid & _GEN_15; // @[UserYanker.scala 57:36]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_ar_bits_qos = auto_in_ar_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_r_ready = auto_in_r_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_clock = clock;
  assign QueueCompatibility_reset = reset;
  assign QueueCompatibility_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_0; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_0 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_1_clock = clock;
  assign QueueCompatibility_1_reset = reset;
  assign QueueCompatibility_1_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_1; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_1_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_1_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_1_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_1 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_2_clock = clock;
  assign QueueCompatibility_2_reset = reset;
  assign QueueCompatibility_2_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_2; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_2_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_2_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_2_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_2 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_3_clock = clock;
  assign QueueCompatibility_3_reset = reset;
  assign QueueCompatibility_3_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_3; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_3_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_3_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_3_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_3 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_4_clock = clock;
  assign QueueCompatibility_4_reset = reset;
  assign QueueCompatibility_4_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_4; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_4_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_4_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_4_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_4 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_5_clock = clock;
  assign QueueCompatibility_5_reset = reset;
  assign QueueCompatibility_5_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_5; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_5_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_5_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_5_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_5 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_6_clock = clock;
  assign QueueCompatibility_6_reset = reset;
  assign QueueCompatibility_6_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_6; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_6_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_6_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_6_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_6 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_7_clock = clock;
  assign QueueCompatibility_7_reset = reset;
  assign QueueCompatibility_7_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_7; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_7_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_7_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_7_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_7 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_8_clock = clock;
  assign QueueCompatibility_8_reset = reset;
  assign QueueCompatibility_8_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_8; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_8_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_8_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_8_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_8 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_9_clock = clock;
  assign QueueCompatibility_9_reset = reset;
  assign QueueCompatibility_9_io_enq_valid = auto_in_ar_valid & auto_out_ar_ready & arsel_9; // @[UserYanker.scala 71:53]
  assign QueueCompatibility_9_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_9_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_9_io_deq_ready = auto_out_r_valid & auto_in_r_ready & rsel_9 & auto_out_r_bits_last; // @[UserYanker.scala 70:58]
  assign QueueCompatibility_10_clock = clock;
  assign QueueCompatibility_10_reset = reset;
  assign QueueCompatibility_10_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_0; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_10_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_10_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_10_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_0; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_11_clock = clock;
  assign QueueCompatibility_11_reset = reset;
  assign QueueCompatibility_11_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_1; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_11_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_11_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_11_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_1; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_12_clock = clock;
  assign QueueCompatibility_12_reset = reset;
  assign QueueCompatibility_12_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_2; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_12_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_12_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_12_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_2; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_13_clock = clock;
  assign QueueCompatibility_13_reset = reset;
  assign QueueCompatibility_13_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_3; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_13_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_13_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_13_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_3; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_14_clock = clock;
  assign QueueCompatibility_14_reset = reset;
  assign QueueCompatibility_14_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_4; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_14_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_14_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_14_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_4; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_15_clock = clock;
  assign QueueCompatibility_15_reset = reset;
  assign QueueCompatibility_15_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_5; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_15_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_15_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_15_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_5; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_16_clock = clock;
  assign QueueCompatibility_16_reset = reset;
  assign QueueCompatibility_16_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_6; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_16_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_16_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_16_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_6; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_17_clock = clock;
  assign QueueCompatibility_17_reset = reset;
  assign QueueCompatibility_17_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_7; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_17_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_17_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_17_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_7; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_18_clock = clock;
  assign QueueCompatibility_18_reset = reset;
  assign QueueCompatibility_18_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_8; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_18_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_18_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_18_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_8; // @[UserYanker.scala 91:53]
  assign QueueCompatibility_19_clock = clock;
  assign QueueCompatibility_19_reset = reset;
  assign QueueCompatibility_19_io_enq_valid = auto_in_aw_valid & auto_out_aw_ready & awsel_9; // @[UserYanker.scala 92:53]
  assign QueueCompatibility_19_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_19_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign QueueCompatibility_19_io_deq_ready = auto_out_b_valid & auto_in_b_ready & bsel_9; // @[UserYanker.scala 91:53]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~auto_out_r_valid | _GEN_31) & ~reset) begin
          $fatal; // @[UserYanker.scala 63:14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~auto_out_r_valid | _GEN_31)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at UserYanker.scala:63 assert (!out.r.valid || r_valid) // Q must be ready faster than the response\n"
            ); // @[UserYanker.scala 63:14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~(~auto_out_b_valid | _GEN_95) & _T_3) begin
          $fatal; // @[UserYanker.scala 84:14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_3 & ~(~auto_out_b_valid | _GEN_95)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at UserYanker.scala:84 assert (!out.b.valid || b_valid) // Q must be ready faster than the response\n"
            ); // @[UserYanker.scala 84:14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness(
  input        clock,
  input        reset,
  input  [3:0] io_d,
  output [3:0] io_q
);
  wire  output_chain_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_reset; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_q; // @[ShiftReg.scala 45:23]
  wire  output_chain_1_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_1_reset; // @[ShiftReg.scala 45:23]
  wire  output_chain_1_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_1_io_q; // @[ShiftReg.scala 45:23]
  wire  output_chain_2_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_2_reset; // @[ShiftReg.scala 45:23]
  wire  output_chain_2_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_2_io_q; // @[ShiftReg.scala 45:23]
  wire  output_chain_3_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_3_reset; // @[ShiftReg.scala 45:23]
  wire  output_chain_3_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_3_io_q; // @[ShiftReg.scala 45:23]
  wire  output_1 = output_chain_1_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire  output_0 = output_chain_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [1:0] io_q_lo = {output_1,output_0}; // @[Cat.scala 31:58]
  wire  output_3 = output_chain_3_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire  output_2 = output_chain_2_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [1:0] io_q_hi = {output_3,output_2}; // @[Cat.scala 31:58]
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_inVCU118FPGATestHarness output_chain ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_clock),
    .reset(output_chain_reset),
    .io_d(output_chain_io_d),
    .io_q(output_chain_io_q)
  );
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_inVCU118FPGATestHarness output_chain_1 ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_1_clock),
    .reset(output_chain_1_reset),
    .io_d(output_chain_1_io_d),
    .io_q(output_chain_1_io_q)
  );
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_inVCU118FPGATestHarness output_chain_2 ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_2_clock),
    .reset(output_chain_2_reset),
    .io_d(output_chain_2_io_d),
    .io_q(output_chain_2_io_q)
  );
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_inVCU118FPGATestHarness output_chain_3 ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_3_clock),
    .reset(output_chain_3_reset),
    .io_d(output_chain_3_io_d),
    .io_q(output_chain_3_io_q)
  );
  assign io_q = {io_q_hi,io_q_lo}; // @[Cat.scala 31:58]
  assign output_chain_clock = clock;
  assign output_chain_reset = reset; // @[SynchronizerReg.scala 86:21]
  assign output_chain_io_d = io_d[0]; // @[SynchronizerReg.scala 87:41]
  assign output_chain_1_clock = clock;
  assign output_chain_1_reset = reset; // @[SynchronizerReg.scala 86:21]
  assign output_chain_1_io_d = io_d[1]; // @[SynchronizerReg.scala 87:41]
  assign output_chain_2_clock = clock;
  assign output_chain_2_reset = reset; // @[SynchronizerReg.scala 86:21]
  assign output_chain_2_io_d = io_d[2]; // @[SynchronizerReg.scala 87:41]
  assign output_chain_3_clock = clock;
  assign output_chain_3_reset = reset; // @[SynchronizerReg.scala 86:21]
  assign output_chain_3_io_d = io_d[3]; // @[SynchronizerReg.scala 87:41]
endmodule
module ClockCrossingReg_w61_inVCU118FPGATestHarness(
  input         clock,
  input  [60:0] io_d,
  output [60:0] io_q,
  input         io_en
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [60:0] cdc_reg; // @[Reg.scala 16:16]
  assign io_q = cdc_reg; // @[SynchronizerReg.scala 202:8]
  always @(posedge clock) begin
    if (io_en) begin // @[Reg.scala 17:18]
      cdc_reg <= io_d; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  cdc_reg = _RAND_0[60:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncResetSynchronizerShiftReg_w1_d3_i0_9_inVCU118FPGATestHarness(
  input   clock,
  input   reset,
  input   io_d,
  output  io_q
);
  wire  output_chain_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_reset; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_q; // @[ShiftReg.scala 45:23]
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_inVCU118FPGATestHarness output_chain ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_clock),
    .reset(output_chain_reset),
    .io_d(output_chain_io_d),
    .io_q(output_chain_io_q)
  );
  assign io_q = output_chain_io_q; // @[ShiftReg.scala 48:{24,24}]
  assign output_chain_clock = clock;
  assign output_chain_reset = reset; // @[SynchronizerReg.scala 86:21]
  assign output_chain_io_d = io_d; // @[SynchronizerReg.scala 87:41]
endmodule
module AsyncValidSync_inVCU118FPGATestHarness(
  input   io_in,
  output  io_out,
  input   clock,
  input   reset
);
  wire  io_out_sink_valid_0_clock; // @[ShiftReg.scala 45:23]
  wire  io_out_sink_valid_0_reset; // @[ShiftReg.scala 45:23]
  wire  io_out_sink_valid_0_io_d; // @[ShiftReg.scala 45:23]
  wire  io_out_sink_valid_0_io_q; // @[ShiftReg.scala 45:23]
  AsyncResetSynchronizerShiftReg_w1_d3_i0_9_inVCU118FPGATestHarness io_out_sink_valid_0 ( // @[ShiftReg.scala 45:23]
    .clock(io_out_sink_valid_0_clock),
    .reset(io_out_sink_valid_0_reset),
    .io_d(io_out_sink_valid_0_io_d),
    .io_q(io_out_sink_valid_0_io_q)
  );
  assign io_out = io_out_sink_valid_0_io_q; // @[ShiftReg.scala 48:{24,24}]
  assign io_out_sink_valid_0_clock = clock;
  assign io_out_sink_valid_0_reset = reset;
  assign io_out_sink_valid_0_io_d = io_in; // @[ShiftReg.scala 47:16]
endmodule
module AsyncQueueSink_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  input         io_deq_ready,
  output        io_deq_valid,
  output [3:0]  io_deq_bits_id,
  output [31:0] io_deq_bits_addr,
  output [7:0]  io_deq_bits_len,
  output [2:0]  io_deq_bits_size,
  output [1:0]  io_deq_bits_burst,
  output        io_deq_bits_lock,
  output [2:0]  io_deq_bits_prot,
  output [3:0]  io_deq_bits_qos,
  input  [3:0]  io_async_mem_0_id,
  input  [31:0] io_async_mem_0_addr,
  input  [7:0]  io_async_mem_0_len,
  input  [2:0]  io_async_mem_0_size,
  input  [1:0]  io_async_mem_0_burst,
  input         io_async_mem_0_lock,
  input  [3:0]  io_async_mem_0_cache,
  input  [2:0]  io_async_mem_0_prot,
  input  [3:0]  io_async_mem_0_qos,
  input  [3:0]  io_async_mem_1_id,
  input  [31:0] io_async_mem_1_addr,
  input  [7:0]  io_async_mem_1_len,
  input  [2:0]  io_async_mem_1_size,
  input  [1:0]  io_async_mem_1_burst,
  input         io_async_mem_1_lock,
  input  [3:0]  io_async_mem_1_cache,
  input  [2:0]  io_async_mem_1_prot,
  input  [3:0]  io_async_mem_1_qos,
  input  [3:0]  io_async_mem_2_id,
  input  [31:0] io_async_mem_2_addr,
  input  [7:0]  io_async_mem_2_len,
  input  [2:0]  io_async_mem_2_size,
  input  [1:0]  io_async_mem_2_burst,
  input         io_async_mem_2_lock,
  input  [3:0]  io_async_mem_2_cache,
  input  [2:0]  io_async_mem_2_prot,
  input  [3:0]  io_async_mem_2_qos,
  input  [3:0]  io_async_mem_3_id,
  input  [31:0] io_async_mem_3_addr,
  input  [7:0]  io_async_mem_3_len,
  input  [2:0]  io_async_mem_3_size,
  input  [1:0]  io_async_mem_3_burst,
  input         io_async_mem_3_lock,
  input  [3:0]  io_async_mem_3_cache,
  input  [2:0]  io_async_mem_3_prot,
  input  [3:0]  io_async_mem_3_qos,
  input  [3:0]  io_async_mem_4_id,
  input  [31:0] io_async_mem_4_addr,
  input  [7:0]  io_async_mem_4_len,
  input  [2:0]  io_async_mem_4_size,
  input  [1:0]  io_async_mem_4_burst,
  input         io_async_mem_4_lock,
  input  [3:0]  io_async_mem_4_cache,
  input  [2:0]  io_async_mem_4_prot,
  input  [3:0]  io_async_mem_4_qos,
  input  [3:0]  io_async_mem_5_id,
  input  [31:0] io_async_mem_5_addr,
  input  [7:0]  io_async_mem_5_len,
  input  [2:0]  io_async_mem_5_size,
  input  [1:0]  io_async_mem_5_burst,
  input         io_async_mem_5_lock,
  input  [3:0]  io_async_mem_5_cache,
  input  [2:0]  io_async_mem_5_prot,
  input  [3:0]  io_async_mem_5_qos,
  input  [3:0]  io_async_mem_6_id,
  input  [31:0] io_async_mem_6_addr,
  input  [7:0]  io_async_mem_6_len,
  input  [2:0]  io_async_mem_6_size,
  input  [1:0]  io_async_mem_6_burst,
  input         io_async_mem_6_lock,
  input  [3:0]  io_async_mem_6_cache,
  input  [2:0]  io_async_mem_6_prot,
  input  [3:0]  io_async_mem_6_qos,
  input  [3:0]  io_async_mem_7_id,
  input  [31:0] io_async_mem_7_addr,
  input  [7:0]  io_async_mem_7_len,
  input  [2:0]  io_async_mem_7_size,
  input  [1:0]  io_async_mem_7_burst,
  input         io_async_mem_7_lock,
  input  [3:0]  io_async_mem_7_cache,
  input  [2:0]  io_async_mem_7_prot,
  input  [3:0]  io_async_mem_7_qos,
  output [3:0]  io_async_ridx,
  input  [3:0]  io_async_widx,
  output        io_async_safe_ridx_valid,
  input         io_async_safe_widx_valid,
  input         io_async_safe_source_reset_n,
  output        io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  widx_widx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  widx_widx_gray_reset; // @[ShiftReg.scala 45:23]
  wire [3:0] widx_widx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire [3:0] widx_widx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  io_deq_bits_deq_bits_reg_clock; // @[SynchronizerReg.scala 207:25]
  wire [60:0] io_deq_bits_deq_bits_reg_io_d; // @[SynchronizerReg.scala 207:25]
  wire [60:0] io_deq_bits_deq_bits_reg_io_q; // @[SynchronizerReg.scala 207:25]
  wire  io_deq_bits_deq_bits_reg_io_en; // @[SynchronizerReg.scala 207:25]
  wire  sink_valid_0_io_in; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_io_out; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_clock; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_reset; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_1_io_in; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_io_out; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_clock; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_reset; // @[AsyncQueue.scala 169:33]
  wire  source_extend_io_in; // @[AsyncQueue.scala 171:31]
  wire  source_extend_io_out; // @[AsyncQueue.scala 171:31]
  wire  source_extend_clock; // @[AsyncQueue.scala 171:31]
  wire  source_extend_reset; // @[AsyncQueue.scala 171:31]
  wire  source_valid_io_in; // @[AsyncQueue.scala 172:31]
  wire  source_valid_io_out; // @[AsyncQueue.scala 172:31]
  wire  source_valid_clock; // @[AsyncQueue.scala 172:31]
  wire  source_valid_reset; // @[AsyncQueue.scala 172:31]
  wire  _ridx_T_1 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  source_ready = source_valid_io_out;
  wire  _ridx_T_2 = ~source_ready; // @[AsyncQueue.scala 144:79]
  reg [3:0] ridx_ridx_bin; // @[AsyncQueue.scala 52:25]
  wire [3:0] _GEN_72 = {{3'd0}, _ridx_T_1}; // @[AsyncQueue.scala 53:43]
  wire [3:0] _ridx_incremented_T_1 = ridx_ridx_bin + _GEN_72; // @[AsyncQueue.scala 53:43]
  wire [3:0] ridx_incremented = _ridx_T_2 ? 4'h0 : _ridx_incremented_T_1; // @[AsyncQueue.scala 53:23]
  wire [3:0] _GEN_73 = {{1'd0}, ridx_incremented[3:1]}; // @[AsyncQueue.scala 54:17]
  wire [3:0] ridx = ridx_incremented ^ _GEN_73; // @[AsyncQueue.scala 54:17]
  wire [3:0] widx = widx_widx_gray_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [2:0] _index_T_2 = {ridx[3], 2'h0}; // @[AsyncQueue.scala 152:75]
  wire [2:0] index = ridx[2:0] ^ _index_T_2; // @[AsyncQueue.scala 152:55]
  wire [2:0] _GEN_1 = 3'h1 == index ? io_async_mem_1_prot : io_async_mem_0_prot; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_2 = 3'h2 == index ? io_async_mem_2_prot : _GEN_1; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_3 = 3'h3 == index ? io_async_mem_3_prot : _GEN_2; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_4 = 3'h4 == index ? io_async_mem_4_prot : _GEN_3; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_5 = 3'h5 == index ? io_async_mem_5_prot : _GEN_4; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_6 = 3'h6 == index ? io_async_mem_6_prot : _GEN_5; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_7 = 3'h7 == index ? io_async_mem_7_prot : _GEN_6; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_9 = 3'h1 == index ? io_async_mem_1_qos : io_async_mem_0_qos; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_10 = 3'h2 == index ? io_async_mem_2_qos : _GEN_9; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_11 = 3'h3 == index ? io_async_mem_3_qos : _GEN_10; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_12 = 3'h4 == index ? io_async_mem_4_qos : _GEN_11; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_13 = 3'h5 == index ? io_async_mem_5_qos : _GEN_12; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_14 = 3'h6 == index ? io_async_mem_6_qos : _GEN_13; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_15 = 3'h7 == index ? io_async_mem_7_qos : _GEN_14; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_17 = 3'h1 == index ? io_async_mem_1_lock : io_async_mem_0_lock; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_18 = 3'h2 == index ? io_async_mem_2_lock : _GEN_17; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_19 = 3'h3 == index ? io_async_mem_3_lock : _GEN_18; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_20 = 3'h4 == index ? io_async_mem_4_lock : _GEN_19; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_21 = 3'h5 == index ? io_async_mem_5_lock : _GEN_20; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_22 = 3'h6 == index ? io_async_mem_6_lock : _GEN_21; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_23 = 3'h7 == index ? io_async_mem_7_lock : _GEN_22; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_25 = 3'h1 == index ? io_async_mem_1_cache : io_async_mem_0_cache; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_26 = 3'h2 == index ? io_async_mem_2_cache : _GEN_25; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_27 = 3'h3 == index ? io_async_mem_3_cache : _GEN_26; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_28 = 3'h4 == index ? io_async_mem_4_cache : _GEN_27; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_29 = 3'h5 == index ? io_async_mem_5_cache : _GEN_28; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_30 = 3'h6 == index ? io_async_mem_6_cache : _GEN_29; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_31 = 3'h7 == index ? io_async_mem_7_cache : _GEN_30; // @[SynchronizerReg.scala 209:{24,24}]
  wire [11:0] io_deq_bits_deq_bits_reg_io_d_lo = {_GEN_23,_GEN_31,_GEN_7,_GEN_15}; // @[SynchronizerReg.scala 209:24]
  wire [2:0] _GEN_33 = 3'h1 == index ? io_async_mem_1_size : io_async_mem_0_size; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_34 = 3'h2 == index ? io_async_mem_2_size : _GEN_33; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_35 = 3'h3 == index ? io_async_mem_3_size : _GEN_34; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_36 = 3'h4 == index ? io_async_mem_4_size : _GEN_35; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_37 = 3'h5 == index ? io_async_mem_5_size : _GEN_36; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_38 = 3'h6 == index ? io_async_mem_6_size : _GEN_37; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] _GEN_39 = 3'h7 == index ? io_async_mem_7_size : _GEN_38; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_41 = 3'h1 == index ? io_async_mem_1_burst : io_async_mem_0_burst; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_42 = 3'h2 == index ? io_async_mem_2_burst : _GEN_41; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_43 = 3'h3 == index ? io_async_mem_3_burst : _GEN_42; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_44 = 3'h4 == index ? io_async_mem_4_burst : _GEN_43; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_45 = 3'h5 == index ? io_async_mem_5_burst : _GEN_44; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_46 = 3'h6 == index ? io_async_mem_6_burst : _GEN_45; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_47 = 3'h7 == index ? io_async_mem_7_burst : _GEN_46; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_49 = 3'h1 == index ? io_async_mem_1_id : io_async_mem_0_id; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_50 = 3'h2 == index ? io_async_mem_2_id : _GEN_49; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_51 = 3'h3 == index ? io_async_mem_3_id : _GEN_50; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_52 = 3'h4 == index ? io_async_mem_4_id : _GEN_51; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_53 = 3'h5 == index ? io_async_mem_5_id : _GEN_52; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_54 = 3'h6 == index ? io_async_mem_6_id : _GEN_53; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_55 = 3'h7 == index ? io_async_mem_7_id : _GEN_54; // @[SynchronizerReg.scala 209:{24,24}]
  wire [31:0] _GEN_57 = 3'h1 == index ? io_async_mem_1_addr : io_async_mem_0_addr; // @[SynchronizerReg.scala 209:{24,24}]
  wire [31:0] _GEN_58 = 3'h2 == index ? io_async_mem_2_addr : _GEN_57; // @[SynchronizerReg.scala 209:{24,24}]
  wire [31:0] _GEN_59 = 3'h3 == index ? io_async_mem_3_addr : _GEN_58; // @[SynchronizerReg.scala 209:{24,24}]
  wire [31:0] _GEN_60 = 3'h4 == index ? io_async_mem_4_addr : _GEN_59; // @[SynchronizerReg.scala 209:{24,24}]
  wire [31:0] _GEN_61 = 3'h5 == index ? io_async_mem_5_addr : _GEN_60; // @[SynchronizerReg.scala 209:{24,24}]
  wire [31:0] _GEN_62 = 3'h6 == index ? io_async_mem_6_addr : _GEN_61; // @[SynchronizerReg.scala 209:{24,24}]
  wire [31:0] _GEN_63 = 3'h7 == index ? io_async_mem_7_addr : _GEN_62; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_65 = 3'h1 == index ? io_async_mem_1_len : io_async_mem_0_len; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_66 = 3'h2 == index ? io_async_mem_2_len : _GEN_65; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_67 = 3'h3 == index ? io_async_mem_3_len : _GEN_66; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_68 = 3'h4 == index ? io_async_mem_4_len : _GEN_67; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_69 = 3'h5 == index ? io_async_mem_5_len : _GEN_68; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_70 = 3'h6 == index ? io_async_mem_6_len : _GEN_69; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_71 = 3'h7 == index ? io_async_mem_7_len : _GEN_70; // @[SynchronizerReg.scala 209:{24,24}]
  wire [48:0] io_deq_bits_deq_bits_reg_io_d_hi = {_GEN_55,_GEN_63,_GEN_71,_GEN_39,_GEN_47}; // @[SynchronizerReg.scala 209:24]
  wire [60:0] _io_deq_bits_WIRE_1 = io_deq_bits_deq_bits_reg_io_q;
  reg  valid_reg; // @[AsyncQueue.scala 161:56]
  reg [3:0] ridx_gray; // @[AsyncQueue.scala 164:55]
  AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness widx_widx_gray ( // @[ShiftReg.scala 45:23]
    .clock(widx_widx_gray_clock),
    .reset(widx_widx_gray_reset),
    .io_d(widx_widx_gray_io_d),
    .io_q(widx_widx_gray_io_q)
  );
  ClockCrossingReg_w61_inVCU118FPGATestHarness io_deq_bits_deq_bits_reg ( // @[SynchronizerReg.scala 207:25]
    .clock(io_deq_bits_deq_bits_reg_clock),
    .io_d(io_deq_bits_deq_bits_reg_io_d),
    .io_q(io_deq_bits_deq_bits_reg_io_q),
    .io_en(io_deq_bits_deq_bits_reg_io_en)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid_0 ( // @[AsyncQueue.scala 168:33]
    .io_in(sink_valid_0_io_in),
    .io_out(sink_valid_0_io_out),
    .clock(sink_valid_0_clock),
    .reset(sink_valid_0_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid_1 ( // @[AsyncQueue.scala 169:33]
    .io_in(sink_valid_1_io_in),
    .io_out(sink_valid_1_io_out),
    .clock(sink_valid_1_clock),
    .reset(sink_valid_1_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_extend ( // @[AsyncQueue.scala 171:31]
    .io_in(source_extend_io_in),
    .io_out(source_extend_io_out),
    .clock(source_extend_clock),
    .reset(source_extend_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid ( // @[AsyncQueue.scala 172:31]
    .io_in(source_valid_io_in),
    .io_out(source_valid_io_out),
    .clock(source_valid_clock),
    .reset(source_valid_reset)
  );
  assign io_deq_valid = valid_reg & source_ready; // @[AsyncQueue.scala 162:29]
  assign io_deq_bits_id = _io_deq_bits_WIRE_1[60:57]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_addr = _io_deq_bits_WIRE_1[56:25]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_len = _io_deq_bits_WIRE_1[24:17]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_size = _io_deq_bits_WIRE_1[16:14]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_burst = _io_deq_bits_WIRE_1[13:12]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_lock = _io_deq_bits_WIRE_1[11]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_prot = _io_deq_bits_WIRE_1[6:4]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_qos = _io_deq_bits_WIRE_1[3:0]; // @[SynchronizerReg.scala 211:26]
  assign io_async_ridx = ridx_gray; // @[AsyncQueue.scala 165:17]
  assign io_async_safe_ridx_valid = sink_valid_1_io_out; // @[AsyncQueue.scala 185:20]
  assign io_async_safe_sink_reset_n = ~reset; // @[AsyncQueue.scala 189:25]
  assign widx_widx_gray_clock = clock;
  assign widx_widx_gray_reset = reset;
  assign widx_widx_gray_io_d = io_async_widx; // @[ShiftReg.scala 47:16]
  assign io_deq_bits_deq_bits_reg_clock = clock;
  assign io_deq_bits_deq_bits_reg_io_d = {io_deq_bits_deq_bits_reg_io_d_hi,io_deq_bits_deq_bits_reg_io_d_lo}; // @[SynchronizerReg.scala 209:24]
  assign io_deq_bits_deq_bits_reg_io_en = source_ready & ridx != widx; // @[AsyncQueue.scala 146:28]
  assign sink_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 183:24]
  assign sink_valid_0_clock = clock; // @[AsyncQueue.scala 178:25]
  assign sink_valid_0_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 173:66]
  assign sink_valid_1_io_in = sink_valid_0_io_out; // @[AsyncQueue.scala 184:24]
  assign sink_valid_1_clock = clock; // @[AsyncQueue.scala 179:25]
  assign sink_valid_1_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 174:66]
  assign source_extend_io_in = io_async_safe_widx_valid; // @[AsyncQueue.scala 186:25]
  assign source_extend_clock = clock; // @[AsyncQueue.scala 180:25]
  assign source_extend_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 175:66]
  assign source_valid_io_in = source_extend_io_out; // @[AsyncQueue.scala 187:24]
  assign source_valid_clock = clock; // @[AsyncQueue.scala 181:25]
  assign source_valid_reset = reset; // @[AsyncQueue.scala 176:34]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 53:23]
      ridx_ridx_bin <= 4'h0;
    end else if (_ridx_T_2) begin
      ridx_ridx_bin <= 4'h0;
    end else begin
      ridx_ridx_bin <= _ridx_incremented_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 146:28]
      valid_reg <= 1'h0;
    end else begin
      valid_reg <= source_ready & ridx != widx;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 54:17]
      ridx_gray <= 4'h0;
    end else begin
      ridx_gray <= ridx_incremented ^ _GEN_73;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ridx_ridx_bin = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ridx_gray = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ridx_ridx_bin = 4'h0;
  end
  if (reset) begin
    valid_reg = 1'h0;
  end
  if (reset) begin
    ridx_gray = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ClockCrossingReg_w73_inVCU118FPGATestHarness(
  input         clock,
  input  [72:0] io_d,
  output [72:0] io_q,
  input         io_en
);
`ifdef RANDOMIZE_REG_INIT
  reg [95:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [72:0] cdc_reg; // @[Reg.scala 16:16]
  assign io_q = cdc_reg; // @[SynchronizerReg.scala 202:8]
  always @(posedge clock) begin
    if (io_en) begin // @[Reg.scala 17:18]
      cdc_reg <= io_d; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {3{`RANDOM}};
  cdc_reg = _RAND_0[72:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncQueueSink_2_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  input         io_deq_ready,
  output        io_deq_valid,
  output [63:0] io_deq_bits_data,
  output [7:0]  io_deq_bits_strb,
  output        io_deq_bits_last,
  input  [63:0] io_async_mem_0_data,
  input  [7:0]  io_async_mem_0_strb,
  input         io_async_mem_0_last,
  input  [63:0] io_async_mem_1_data,
  input  [7:0]  io_async_mem_1_strb,
  input         io_async_mem_1_last,
  input  [63:0] io_async_mem_2_data,
  input  [7:0]  io_async_mem_2_strb,
  input         io_async_mem_2_last,
  input  [63:0] io_async_mem_3_data,
  input  [7:0]  io_async_mem_3_strb,
  input         io_async_mem_3_last,
  input  [63:0] io_async_mem_4_data,
  input  [7:0]  io_async_mem_4_strb,
  input         io_async_mem_4_last,
  input  [63:0] io_async_mem_5_data,
  input  [7:0]  io_async_mem_5_strb,
  input         io_async_mem_5_last,
  input  [63:0] io_async_mem_6_data,
  input  [7:0]  io_async_mem_6_strb,
  input         io_async_mem_6_last,
  input  [63:0] io_async_mem_7_data,
  input  [7:0]  io_async_mem_7_strb,
  input         io_async_mem_7_last,
  output [3:0]  io_async_ridx,
  input  [3:0]  io_async_widx,
  output        io_async_safe_ridx_valid,
  input         io_async_safe_widx_valid,
  input         io_async_safe_source_reset_n,
  output        io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  widx_widx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  widx_widx_gray_reset; // @[ShiftReg.scala 45:23]
  wire [3:0] widx_widx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire [3:0] widx_widx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  io_deq_bits_deq_bits_reg_clock; // @[SynchronizerReg.scala 207:25]
  wire [72:0] io_deq_bits_deq_bits_reg_io_d; // @[SynchronizerReg.scala 207:25]
  wire [72:0] io_deq_bits_deq_bits_reg_io_q; // @[SynchronizerReg.scala 207:25]
  wire  io_deq_bits_deq_bits_reg_io_en; // @[SynchronizerReg.scala 207:25]
  wire  sink_valid_0_io_in; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_io_out; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_clock; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_reset; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_1_io_in; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_io_out; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_clock; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_reset; // @[AsyncQueue.scala 169:33]
  wire  source_extend_io_in; // @[AsyncQueue.scala 171:31]
  wire  source_extend_io_out; // @[AsyncQueue.scala 171:31]
  wire  source_extend_clock; // @[AsyncQueue.scala 171:31]
  wire  source_extend_reset; // @[AsyncQueue.scala 171:31]
  wire  source_valid_io_in; // @[AsyncQueue.scala 172:31]
  wire  source_valid_io_out; // @[AsyncQueue.scala 172:31]
  wire  source_valid_clock; // @[AsyncQueue.scala 172:31]
  wire  source_valid_reset; // @[AsyncQueue.scala 172:31]
  wire  _ridx_T_1 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  source_ready = source_valid_io_out;
  wire  _ridx_T_2 = ~source_ready; // @[AsyncQueue.scala 144:79]
  reg [3:0] ridx_ridx_bin; // @[AsyncQueue.scala 52:25]
  wire [3:0] _GEN_24 = {{3'd0}, _ridx_T_1}; // @[AsyncQueue.scala 53:43]
  wire [3:0] _ridx_incremented_T_1 = ridx_ridx_bin + _GEN_24; // @[AsyncQueue.scala 53:43]
  wire [3:0] ridx_incremented = _ridx_T_2 ? 4'h0 : _ridx_incremented_T_1; // @[AsyncQueue.scala 53:23]
  wire [3:0] _GEN_25 = {{1'd0}, ridx_incremented[3:1]}; // @[AsyncQueue.scala 54:17]
  wire [3:0] ridx = ridx_incremented ^ _GEN_25; // @[AsyncQueue.scala 54:17]
  wire [3:0] widx = widx_widx_gray_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [2:0] _index_T_2 = {ridx[3], 2'h0}; // @[AsyncQueue.scala 152:75]
  wire [2:0] index = ridx[2:0] ^ _index_T_2; // @[AsyncQueue.scala 152:55]
  wire [63:0] _GEN_1 = 3'h1 == index ? io_async_mem_1_data : io_async_mem_0_data; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_2 = 3'h2 == index ? io_async_mem_2_data : _GEN_1; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_3 = 3'h3 == index ? io_async_mem_3_data : _GEN_2; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_4 = 3'h4 == index ? io_async_mem_4_data : _GEN_3; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_5 = 3'h5 == index ? io_async_mem_5_data : _GEN_4; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_6 = 3'h6 == index ? io_async_mem_6_data : _GEN_5; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_7 = 3'h7 == index ? io_async_mem_7_data : _GEN_6; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_9 = 3'h1 == index ? io_async_mem_1_strb : io_async_mem_0_strb; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_10 = 3'h2 == index ? io_async_mem_2_strb : _GEN_9; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_11 = 3'h3 == index ? io_async_mem_3_strb : _GEN_10; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_12 = 3'h4 == index ? io_async_mem_4_strb : _GEN_11; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_13 = 3'h5 == index ? io_async_mem_5_strb : _GEN_12; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_14 = 3'h6 == index ? io_async_mem_6_strb : _GEN_13; // @[SynchronizerReg.scala 209:{24,24}]
  wire [7:0] _GEN_15 = 3'h7 == index ? io_async_mem_7_strb : _GEN_14; // @[SynchronizerReg.scala 209:{24,24}]
  wire [71:0] io_deq_bits_deq_bits_reg_io_d_hi = {_GEN_7,_GEN_15}; // @[SynchronizerReg.scala 209:24]
  wire  _GEN_17 = 3'h1 == index ? io_async_mem_1_last : io_async_mem_0_last; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_18 = 3'h2 == index ? io_async_mem_2_last : _GEN_17; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_19 = 3'h3 == index ? io_async_mem_3_last : _GEN_18; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_20 = 3'h4 == index ? io_async_mem_4_last : _GEN_19; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_21 = 3'h5 == index ? io_async_mem_5_last : _GEN_20; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_22 = 3'h6 == index ? io_async_mem_6_last : _GEN_21; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_23 = 3'h7 == index ? io_async_mem_7_last : _GEN_22; // @[SynchronizerReg.scala 209:{24,24}]
  wire [72:0] _io_deq_bits_WIRE_1 = io_deq_bits_deq_bits_reg_io_q;
  reg  valid_reg; // @[AsyncQueue.scala 161:56]
  reg [3:0] ridx_gray; // @[AsyncQueue.scala 164:55]
  AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness widx_widx_gray ( // @[ShiftReg.scala 45:23]
    .clock(widx_widx_gray_clock),
    .reset(widx_widx_gray_reset),
    .io_d(widx_widx_gray_io_d),
    .io_q(widx_widx_gray_io_q)
  );
  ClockCrossingReg_w73_inVCU118FPGATestHarness io_deq_bits_deq_bits_reg ( // @[SynchronizerReg.scala 207:25]
    .clock(io_deq_bits_deq_bits_reg_clock),
    .io_d(io_deq_bits_deq_bits_reg_io_d),
    .io_q(io_deq_bits_deq_bits_reg_io_q),
    .io_en(io_deq_bits_deq_bits_reg_io_en)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid_0 ( // @[AsyncQueue.scala 168:33]
    .io_in(sink_valid_0_io_in),
    .io_out(sink_valid_0_io_out),
    .clock(sink_valid_0_clock),
    .reset(sink_valid_0_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid_1 ( // @[AsyncQueue.scala 169:33]
    .io_in(sink_valid_1_io_in),
    .io_out(sink_valid_1_io_out),
    .clock(sink_valid_1_clock),
    .reset(sink_valid_1_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_extend ( // @[AsyncQueue.scala 171:31]
    .io_in(source_extend_io_in),
    .io_out(source_extend_io_out),
    .clock(source_extend_clock),
    .reset(source_extend_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid ( // @[AsyncQueue.scala 172:31]
    .io_in(source_valid_io_in),
    .io_out(source_valid_io_out),
    .clock(source_valid_clock),
    .reset(source_valid_reset)
  );
  assign io_deq_valid = valid_reg & source_ready; // @[AsyncQueue.scala 162:29]
  assign io_deq_bits_data = _io_deq_bits_WIRE_1[72:9]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_strb = _io_deq_bits_WIRE_1[8:1]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_last = _io_deq_bits_WIRE_1[0]; // @[SynchronizerReg.scala 211:26]
  assign io_async_ridx = ridx_gray; // @[AsyncQueue.scala 165:17]
  assign io_async_safe_ridx_valid = sink_valid_1_io_out; // @[AsyncQueue.scala 185:20]
  assign io_async_safe_sink_reset_n = ~reset; // @[AsyncQueue.scala 189:25]
  assign widx_widx_gray_clock = clock;
  assign widx_widx_gray_reset = reset;
  assign widx_widx_gray_io_d = io_async_widx; // @[ShiftReg.scala 47:16]
  assign io_deq_bits_deq_bits_reg_clock = clock;
  assign io_deq_bits_deq_bits_reg_io_d = {io_deq_bits_deq_bits_reg_io_d_hi,_GEN_23}; // @[SynchronizerReg.scala 209:24]
  assign io_deq_bits_deq_bits_reg_io_en = source_ready & ridx != widx; // @[AsyncQueue.scala 146:28]
  assign sink_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 183:24]
  assign sink_valid_0_clock = clock; // @[AsyncQueue.scala 178:25]
  assign sink_valid_0_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 173:66]
  assign sink_valid_1_io_in = sink_valid_0_io_out; // @[AsyncQueue.scala 184:24]
  assign sink_valid_1_clock = clock; // @[AsyncQueue.scala 179:25]
  assign sink_valid_1_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 174:66]
  assign source_extend_io_in = io_async_safe_widx_valid; // @[AsyncQueue.scala 186:25]
  assign source_extend_clock = clock; // @[AsyncQueue.scala 180:25]
  assign source_extend_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 175:66]
  assign source_valid_io_in = source_extend_io_out; // @[AsyncQueue.scala 187:24]
  assign source_valid_clock = clock; // @[AsyncQueue.scala 181:25]
  assign source_valid_reset = reset; // @[AsyncQueue.scala 176:34]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 53:23]
      ridx_ridx_bin <= 4'h0;
    end else if (_ridx_T_2) begin
      ridx_ridx_bin <= 4'h0;
    end else begin
      ridx_ridx_bin <= _ridx_incremented_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 146:28]
      valid_reg <= 1'h0;
    end else begin
      valid_reg <= source_ready & ridx != widx;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 54:17]
      ridx_gray <= 4'h0;
    end else begin
      ridx_gray <= ridx_incremented ^ _GEN_25;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ridx_ridx_bin = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ridx_gray = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ridx_ridx_bin = 4'h0;
  end
  if (reset) begin
    valid_reg = 1'h0;
  end
  if (reset) begin
    ridx_gray = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncQueueSource_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [3:0]  io_enq_bits_id,
  input  [63:0] io_enq_bits_data,
  input  [1:0]  io_enq_bits_resp,
  input         io_enq_bits_last,
  output [3:0]  io_async_mem_0_id,
  output [63:0] io_async_mem_0_data,
  output [1:0]  io_async_mem_0_resp,
  output        io_async_mem_0_last,
  output [3:0]  io_async_mem_1_id,
  output [63:0] io_async_mem_1_data,
  output [1:0]  io_async_mem_1_resp,
  output        io_async_mem_1_last,
  output [3:0]  io_async_mem_2_id,
  output [63:0] io_async_mem_2_data,
  output [1:0]  io_async_mem_2_resp,
  output        io_async_mem_2_last,
  output [3:0]  io_async_mem_3_id,
  output [63:0] io_async_mem_3_data,
  output [1:0]  io_async_mem_3_resp,
  output        io_async_mem_3_last,
  output [3:0]  io_async_mem_4_id,
  output [63:0] io_async_mem_4_data,
  output [1:0]  io_async_mem_4_resp,
  output        io_async_mem_4_last,
  output [3:0]  io_async_mem_5_id,
  output [63:0] io_async_mem_5_data,
  output [1:0]  io_async_mem_5_resp,
  output        io_async_mem_5_last,
  output [3:0]  io_async_mem_6_id,
  output [63:0] io_async_mem_6_data,
  output [1:0]  io_async_mem_6_resp,
  output        io_async_mem_6_last,
  output [3:0]  io_async_mem_7_id,
  output [63:0] io_async_mem_7_data,
  output [1:0]  io_async_mem_7_resp,
  output        io_async_mem_7_last,
  input  [3:0]  io_async_ridx,
  output [3:0]  io_async_widx,
  input         io_async_safe_ridx_valid,
  output        io_async_safe_widx_valid,
  output        io_async_safe_source_reset_n,
  input         io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
`endif // RANDOMIZE_REG_INIT
  wire  ridx_ridx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  ridx_ridx_gray_reset; // @[ShiftReg.scala 45:23]
  wire [3:0] ridx_ridx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire [3:0] ridx_ridx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  source_valid_0_io_in; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_io_out; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_clock; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_reset; // @[AsyncQueue.scala 100:32]
  wire  source_valid_1_io_in; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_io_out; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_clock; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_reset; // @[AsyncQueue.scala 101:32]
  wire  sink_extend_io_in; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_io_out; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_clock; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_reset; // @[AsyncQueue.scala 103:30]
  wire  sink_valid_io_in; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_io_out; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_clock; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_reset; // @[AsyncQueue.scala 104:30]
  reg [3:0] mem_0_id; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_0_data; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_0_resp; // @[AsyncQueue.scala 80:16]
  reg  mem_0_last; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_1_id; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_1_data; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_1_resp; // @[AsyncQueue.scala 80:16]
  reg  mem_1_last; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_2_id; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_2_data; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_2_resp; // @[AsyncQueue.scala 80:16]
  reg  mem_2_last; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_3_id; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_3_data; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_3_resp; // @[AsyncQueue.scala 80:16]
  reg  mem_3_last; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_4_id; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_4_data; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_4_resp; // @[AsyncQueue.scala 80:16]
  reg  mem_4_last; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_5_id; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_5_data; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_5_resp; // @[AsyncQueue.scala 80:16]
  reg  mem_5_last; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_6_id; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_6_data; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_6_resp; // @[AsyncQueue.scala 80:16]
  reg  mem_6_last; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_7_id; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_7_data; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_7_resp; // @[AsyncQueue.scala 80:16]
  reg  mem_7_last; // @[AsyncQueue.scala 80:16]
  wire  _widx_T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  sink_ready = sink_valid_io_out;
  wire  _widx_T_2 = ~sink_ready; // @[AsyncQueue.scala 81:79]
  reg [3:0] widx_widx_bin; // @[AsyncQueue.scala 52:25]
  wire [3:0] _GEN_64 = {{3'd0}, _widx_T_1}; // @[AsyncQueue.scala 53:43]
  wire [3:0] _widx_incremented_T_1 = widx_widx_bin + _GEN_64; // @[AsyncQueue.scala 53:43]
  wire [3:0] widx_incremented = _widx_T_2 ? 4'h0 : _widx_incremented_T_1; // @[AsyncQueue.scala 53:23]
  wire [3:0] _GEN_65 = {{1'd0}, widx_incremented[3:1]}; // @[AsyncQueue.scala 54:17]
  wire [3:0] widx = widx_incremented ^ _GEN_65; // @[AsyncQueue.scala 54:17]
  wire [3:0] ridx = ridx_ridx_gray_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [3:0] _ready_T = ridx ^ 4'hc; // @[AsyncQueue.scala 83:44]
  wire [2:0] _index_T_2 = {io_async_widx[3], 2'h0}; // @[AsyncQueue.scala 85:93]
  wire [2:0] index = io_async_widx[2:0] ^ _index_T_2; // @[AsyncQueue.scala 85:64]
  reg  ready_reg; // @[AsyncQueue.scala 88:56]
  reg [3:0] widx_gray; // @[AsyncQueue.scala 91:55]
  AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness ridx_ridx_gray ( // @[ShiftReg.scala 45:23]
    .clock(ridx_ridx_gray_clock),
    .reset(ridx_ridx_gray_reset),
    .io_d(ridx_ridx_gray_io_d),
    .io_q(ridx_ridx_gray_io_q)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid_0 ( // @[AsyncQueue.scala 100:32]
    .io_in(source_valid_0_io_in),
    .io_out(source_valid_0_io_out),
    .clock(source_valid_0_clock),
    .reset(source_valid_0_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid_1 ( // @[AsyncQueue.scala 101:32]
    .io_in(source_valid_1_io_in),
    .io_out(source_valid_1_io_out),
    .clock(source_valid_1_clock),
    .reset(source_valid_1_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_extend ( // @[AsyncQueue.scala 103:30]
    .io_in(sink_extend_io_in),
    .io_out(sink_extend_io_out),
    .clock(sink_extend_clock),
    .reset(sink_extend_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid ( // @[AsyncQueue.scala 104:30]
    .io_in(sink_valid_io_in),
    .io_out(sink_valid_io_out),
    .clock(sink_valid_clock),
    .reset(sink_valid_reset)
  );
  assign io_enq_ready = ready_reg & sink_ready; // @[AsyncQueue.scala 89:29]
  assign io_async_mem_0_id = mem_0_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_data = mem_0_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_resp = mem_0_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_last = mem_0_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_id = mem_1_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_data = mem_1_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_resp = mem_1_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_last = mem_1_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_id = mem_2_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_data = mem_2_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_resp = mem_2_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_last = mem_2_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_id = mem_3_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_data = mem_3_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_resp = mem_3_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_last = mem_3_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_id = mem_4_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_data = mem_4_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_resp = mem_4_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_last = mem_4_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_id = mem_5_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_data = mem_5_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_resp = mem_5_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_last = mem_5_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_id = mem_6_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_data = mem_6_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_resp = mem_6_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_last = mem_6_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_id = mem_7_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_data = mem_7_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_resp = mem_7_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_last = mem_7_last; // @[AsyncQueue.scala 96:31]
  assign io_async_widx = widx_gray; // @[AsyncQueue.scala 92:17]
  assign io_async_safe_widx_valid = source_valid_1_io_out; // @[AsyncQueue.scala 117:20]
  assign io_async_safe_source_reset_n = ~reset; // @[AsyncQueue.scala 121:27]
  assign ridx_ridx_gray_clock = clock;
  assign ridx_ridx_gray_reset = reset;
  assign ridx_ridx_gray_io_d = io_async_ridx; // @[ShiftReg.scala 47:16]
  assign source_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 115:26]
  assign source_valid_0_clock = clock; // @[AsyncQueue.scala 110:26]
  assign source_valid_0_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 105:65]
  assign source_valid_1_io_in = source_valid_0_io_out; // @[AsyncQueue.scala 116:26]
  assign source_valid_1_clock = clock; // @[AsyncQueue.scala 111:26]
  assign source_valid_1_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 106:65]
  assign sink_extend_io_in = io_async_safe_ridx_valid; // @[AsyncQueue.scala 118:23]
  assign sink_extend_clock = clock; // @[AsyncQueue.scala 112:26]
  assign sink_extend_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 107:65]
  assign sink_valid_io_in = sink_extend_io_out; // @[AsyncQueue.scala 119:22]
  assign sink_valid_clock = clock; // @[AsyncQueue.scala 113:26]
  assign sink_valid_reset = reset; // @[AsyncQueue.scala 108:35]
  always @(posedge clock) begin
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 53:23]
      widx_widx_bin <= 4'h0;
    end else if (_widx_T_2) begin
      widx_widx_bin <= 4'h0;
    end else begin
      widx_widx_bin <= _widx_incremented_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 83:26]
      ready_reg <= 1'h0;
    end else begin
      ready_reg <= sink_ready & widx != _ready_T;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 54:17]
      widx_gray <= 4'h0;
    end else begin
      widx_gray <= widx_incremented ^ _GEN_65;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  mem_0_id = _RAND_0[3:0];
  _RAND_1 = {2{`RANDOM}};
  mem_0_data = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_resp = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  mem_0_last = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mem_1_id = _RAND_4[3:0];
  _RAND_5 = {2{`RANDOM}};
  mem_1_data = _RAND_5[63:0];
  _RAND_6 = {1{`RANDOM}};
  mem_1_resp = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  mem_1_last = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  mem_2_id = _RAND_8[3:0];
  _RAND_9 = {2{`RANDOM}};
  mem_2_data = _RAND_9[63:0];
  _RAND_10 = {1{`RANDOM}};
  mem_2_resp = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  mem_2_last = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  mem_3_id = _RAND_12[3:0];
  _RAND_13 = {2{`RANDOM}};
  mem_3_data = _RAND_13[63:0];
  _RAND_14 = {1{`RANDOM}};
  mem_3_resp = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  mem_3_last = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  mem_4_id = _RAND_16[3:0];
  _RAND_17 = {2{`RANDOM}};
  mem_4_data = _RAND_17[63:0];
  _RAND_18 = {1{`RANDOM}};
  mem_4_resp = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  mem_4_last = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  mem_5_id = _RAND_20[3:0];
  _RAND_21 = {2{`RANDOM}};
  mem_5_data = _RAND_21[63:0];
  _RAND_22 = {1{`RANDOM}};
  mem_5_resp = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  mem_5_last = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mem_6_id = _RAND_24[3:0];
  _RAND_25 = {2{`RANDOM}};
  mem_6_data = _RAND_25[63:0];
  _RAND_26 = {1{`RANDOM}};
  mem_6_resp = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  mem_6_last = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  mem_7_id = _RAND_28[3:0];
  _RAND_29 = {2{`RANDOM}};
  mem_7_data = _RAND_29[63:0];
  _RAND_30 = {1{`RANDOM}};
  mem_7_resp = _RAND_30[1:0];
  _RAND_31 = {1{`RANDOM}};
  mem_7_last = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  widx_widx_bin = _RAND_32[3:0];
  _RAND_33 = {1{`RANDOM}};
  ready_reg = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  widx_gray = _RAND_34[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    widx_widx_bin = 4'h0;
  end
  if (reset) begin
    ready_reg = 1'h0;
  end
  if (reset) begin
    widx_gray = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncQueueSource_1_inVCU118FPGATestHarness(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input  [3:0] io_enq_bits_id,
  input  [1:0] io_enq_bits_resp,
  output [3:0] io_async_mem_0_id,
  output [1:0] io_async_mem_0_resp,
  output [3:0] io_async_mem_1_id,
  output [1:0] io_async_mem_1_resp,
  output [3:0] io_async_mem_2_id,
  output [1:0] io_async_mem_2_resp,
  output [3:0] io_async_mem_3_id,
  output [1:0] io_async_mem_3_resp,
  output [3:0] io_async_mem_4_id,
  output [1:0] io_async_mem_4_resp,
  output [3:0] io_async_mem_5_id,
  output [1:0] io_async_mem_5_resp,
  output [3:0] io_async_mem_6_id,
  output [1:0] io_async_mem_6_resp,
  output [3:0] io_async_mem_7_id,
  output [1:0] io_async_mem_7_resp,
  input  [3:0] io_async_ridx,
  output [3:0] io_async_widx,
  input        io_async_safe_ridx_valid,
  output       io_async_safe_widx_valid,
  output       io_async_safe_source_reset_n,
  input        io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire  ridx_ridx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  ridx_ridx_gray_reset; // @[ShiftReg.scala 45:23]
  wire [3:0] ridx_ridx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire [3:0] ridx_ridx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  source_valid_0_io_in; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_io_out; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_clock; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_reset; // @[AsyncQueue.scala 100:32]
  wire  source_valid_1_io_in; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_io_out; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_clock; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_reset; // @[AsyncQueue.scala 101:32]
  wire  sink_extend_io_in; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_io_out; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_clock; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_reset; // @[AsyncQueue.scala 103:30]
  wire  sink_valid_io_in; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_io_out; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_clock; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_reset; // @[AsyncQueue.scala 104:30]
  reg [3:0] mem_0_id; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_0_resp; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_1_id; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_1_resp; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_2_id; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_2_resp; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_3_id; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_3_resp; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_4_id; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_4_resp; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_5_id; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_5_resp; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_6_id; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_6_resp; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_7_id; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_7_resp; // @[AsyncQueue.scala 80:16]
  wire  _widx_T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  sink_ready = sink_valid_io_out;
  wire  _widx_T_2 = ~sink_ready; // @[AsyncQueue.scala 81:79]
  reg [3:0] widx_widx_bin; // @[AsyncQueue.scala 52:25]
  wire [3:0] _GEN_32 = {{3'd0}, _widx_T_1}; // @[AsyncQueue.scala 53:43]
  wire [3:0] _widx_incremented_T_1 = widx_widx_bin + _GEN_32; // @[AsyncQueue.scala 53:43]
  wire [3:0] widx_incremented = _widx_T_2 ? 4'h0 : _widx_incremented_T_1; // @[AsyncQueue.scala 53:23]
  wire [3:0] _GEN_33 = {{1'd0}, widx_incremented[3:1]}; // @[AsyncQueue.scala 54:17]
  wire [3:0] widx = widx_incremented ^ _GEN_33; // @[AsyncQueue.scala 54:17]
  wire [3:0] ridx = ridx_ridx_gray_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [3:0] _ready_T = ridx ^ 4'hc; // @[AsyncQueue.scala 83:44]
  wire [2:0] _index_T_2 = {io_async_widx[3], 2'h0}; // @[AsyncQueue.scala 85:93]
  wire [2:0] index = io_async_widx[2:0] ^ _index_T_2; // @[AsyncQueue.scala 85:64]
  reg  ready_reg; // @[AsyncQueue.scala 88:56]
  reg [3:0] widx_gray; // @[AsyncQueue.scala 91:55]
  AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness ridx_ridx_gray ( // @[ShiftReg.scala 45:23]
    .clock(ridx_ridx_gray_clock),
    .reset(ridx_ridx_gray_reset),
    .io_d(ridx_ridx_gray_io_d),
    .io_q(ridx_ridx_gray_io_q)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid_0 ( // @[AsyncQueue.scala 100:32]
    .io_in(source_valid_0_io_in),
    .io_out(source_valid_0_io_out),
    .clock(source_valid_0_clock),
    .reset(source_valid_0_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid_1 ( // @[AsyncQueue.scala 101:32]
    .io_in(source_valid_1_io_in),
    .io_out(source_valid_1_io_out),
    .clock(source_valid_1_clock),
    .reset(source_valid_1_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_extend ( // @[AsyncQueue.scala 103:30]
    .io_in(sink_extend_io_in),
    .io_out(sink_extend_io_out),
    .clock(sink_extend_clock),
    .reset(sink_extend_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid ( // @[AsyncQueue.scala 104:30]
    .io_in(sink_valid_io_in),
    .io_out(sink_valid_io_out),
    .clock(sink_valid_clock),
    .reset(sink_valid_reset)
  );
  assign io_enq_ready = ready_reg & sink_ready; // @[AsyncQueue.scala 89:29]
  assign io_async_mem_0_id = mem_0_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_resp = mem_0_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_id = mem_1_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_resp = mem_1_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_id = mem_2_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_resp = mem_2_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_id = mem_3_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_resp = mem_3_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_id = mem_4_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_resp = mem_4_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_id = mem_5_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_resp = mem_5_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_id = mem_6_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_resp = mem_6_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_id = mem_7_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_resp = mem_7_resp; // @[AsyncQueue.scala 96:31]
  assign io_async_widx = widx_gray; // @[AsyncQueue.scala 92:17]
  assign io_async_safe_widx_valid = source_valid_1_io_out; // @[AsyncQueue.scala 117:20]
  assign io_async_safe_source_reset_n = ~reset; // @[AsyncQueue.scala 121:27]
  assign ridx_ridx_gray_clock = clock;
  assign ridx_ridx_gray_reset = reset;
  assign ridx_ridx_gray_io_d = io_async_ridx; // @[ShiftReg.scala 47:16]
  assign source_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 115:26]
  assign source_valid_0_clock = clock; // @[AsyncQueue.scala 110:26]
  assign source_valid_0_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 105:65]
  assign source_valid_1_io_in = source_valid_0_io_out; // @[AsyncQueue.scala 116:26]
  assign source_valid_1_clock = clock; // @[AsyncQueue.scala 111:26]
  assign source_valid_1_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 106:65]
  assign sink_extend_io_in = io_async_safe_ridx_valid; // @[AsyncQueue.scala 118:23]
  assign sink_extend_clock = clock; // @[AsyncQueue.scala 112:26]
  assign sink_extend_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 107:65]
  assign sink_valid_io_in = sink_extend_io_out; // @[AsyncQueue.scala 119:22]
  assign sink_valid_clock = clock; // @[AsyncQueue.scala 113:26]
  assign sink_valid_reset = reset; // @[AsyncQueue.scala 108:35]
  always @(posedge clock) begin
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_resp <= io_enq_bits_resp; // @[AsyncQueue.scala 86:37]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 53:23]
      widx_widx_bin <= 4'h0;
    end else if (_widx_T_2) begin
      widx_widx_bin <= 4'h0;
    end else begin
      widx_widx_bin <= _widx_incremented_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 83:26]
      ready_reg <= 1'h0;
    end else begin
      ready_reg <= sink_ready & widx != _ready_T;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 54:17]
      widx_gray <= 4'h0;
    end else begin
      widx_gray <= widx_incremented ^ _GEN_33;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  mem_0_id = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  mem_0_resp = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  mem_1_id = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  mem_1_resp = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  mem_2_id = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  mem_2_resp = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  mem_3_id = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  mem_3_resp = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  mem_4_id = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  mem_4_resp = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  mem_5_id = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  mem_5_resp = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  mem_6_id = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  mem_6_resp = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  mem_7_id = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  mem_7_resp = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  widx_widx_bin = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  ready_reg = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  widx_gray = _RAND_18[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    widx_widx_bin = 4'h0;
  end
  if (reset) begin
    ready_reg = 1'h0;
  end
  if (reset) begin
    widx_gray = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AXI4AsyncCrossingSink_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  input  [3:0]  auto_in_aw_mem_0_id,
  input  [31:0] auto_in_aw_mem_0_addr,
  input  [7:0]  auto_in_aw_mem_0_len,
  input  [2:0]  auto_in_aw_mem_0_size,
  input  [1:0]  auto_in_aw_mem_0_burst,
  input         auto_in_aw_mem_0_lock,
  input  [3:0]  auto_in_aw_mem_0_cache,
  input  [2:0]  auto_in_aw_mem_0_prot,
  input  [3:0]  auto_in_aw_mem_0_qos,
  input  [3:0]  auto_in_aw_mem_1_id,
  input  [31:0] auto_in_aw_mem_1_addr,
  input  [7:0]  auto_in_aw_mem_1_len,
  input  [2:0]  auto_in_aw_mem_1_size,
  input  [1:0]  auto_in_aw_mem_1_burst,
  input         auto_in_aw_mem_1_lock,
  input  [3:0]  auto_in_aw_mem_1_cache,
  input  [2:0]  auto_in_aw_mem_1_prot,
  input  [3:0]  auto_in_aw_mem_1_qos,
  input  [3:0]  auto_in_aw_mem_2_id,
  input  [31:0] auto_in_aw_mem_2_addr,
  input  [7:0]  auto_in_aw_mem_2_len,
  input  [2:0]  auto_in_aw_mem_2_size,
  input  [1:0]  auto_in_aw_mem_2_burst,
  input         auto_in_aw_mem_2_lock,
  input  [3:0]  auto_in_aw_mem_2_cache,
  input  [2:0]  auto_in_aw_mem_2_prot,
  input  [3:0]  auto_in_aw_mem_2_qos,
  input  [3:0]  auto_in_aw_mem_3_id,
  input  [31:0] auto_in_aw_mem_3_addr,
  input  [7:0]  auto_in_aw_mem_3_len,
  input  [2:0]  auto_in_aw_mem_3_size,
  input  [1:0]  auto_in_aw_mem_3_burst,
  input         auto_in_aw_mem_3_lock,
  input  [3:0]  auto_in_aw_mem_3_cache,
  input  [2:0]  auto_in_aw_mem_3_prot,
  input  [3:0]  auto_in_aw_mem_3_qos,
  input  [3:0]  auto_in_aw_mem_4_id,
  input  [31:0] auto_in_aw_mem_4_addr,
  input  [7:0]  auto_in_aw_mem_4_len,
  input  [2:0]  auto_in_aw_mem_4_size,
  input  [1:0]  auto_in_aw_mem_4_burst,
  input         auto_in_aw_mem_4_lock,
  input  [3:0]  auto_in_aw_mem_4_cache,
  input  [2:0]  auto_in_aw_mem_4_prot,
  input  [3:0]  auto_in_aw_mem_4_qos,
  input  [3:0]  auto_in_aw_mem_5_id,
  input  [31:0] auto_in_aw_mem_5_addr,
  input  [7:0]  auto_in_aw_mem_5_len,
  input  [2:0]  auto_in_aw_mem_5_size,
  input  [1:0]  auto_in_aw_mem_5_burst,
  input         auto_in_aw_mem_5_lock,
  input  [3:0]  auto_in_aw_mem_5_cache,
  input  [2:0]  auto_in_aw_mem_5_prot,
  input  [3:0]  auto_in_aw_mem_5_qos,
  input  [3:0]  auto_in_aw_mem_6_id,
  input  [31:0] auto_in_aw_mem_6_addr,
  input  [7:0]  auto_in_aw_mem_6_len,
  input  [2:0]  auto_in_aw_mem_6_size,
  input  [1:0]  auto_in_aw_mem_6_burst,
  input         auto_in_aw_mem_6_lock,
  input  [3:0]  auto_in_aw_mem_6_cache,
  input  [2:0]  auto_in_aw_mem_6_prot,
  input  [3:0]  auto_in_aw_mem_6_qos,
  input  [3:0]  auto_in_aw_mem_7_id,
  input  [31:0] auto_in_aw_mem_7_addr,
  input  [7:0]  auto_in_aw_mem_7_len,
  input  [2:0]  auto_in_aw_mem_7_size,
  input  [1:0]  auto_in_aw_mem_7_burst,
  input         auto_in_aw_mem_7_lock,
  input  [3:0]  auto_in_aw_mem_7_cache,
  input  [2:0]  auto_in_aw_mem_7_prot,
  input  [3:0]  auto_in_aw_mem_7_qos,
  output [3:0]  auto_in_aw_ridx,
  input  [3:0]  auto_in_aw_widx,
  output        auto_in_aw_safe_ridx_valid,
  input         auto_in_aw_safe_widx_valid,
  input         auto_in_aw_safe_source_reset_n,
  output        auto_in_aw_safe_sink_reset_n,
  input  [63:0] auto_in_w_mem_0_data,
  input  [7:0]  auto_in_w_mem_0_strb,
  input         auto_in_w_mem_0_last,
  input  [63:0] auto_in_w_mem_1_data,
  input  [7:0]  auto_in_w_mem_1_strb,
  input         auto_in_w_mem_1_last,
  input  [63:0] auto_in_w_mem_2_data,
  input  [7:0]  auto_in_w_mem_2_strb,
  input         auto_in_w_mem_2_last,
  input  [63:0] auto_in_w_mem_3_data,
  input  [7:0]  auto_in_w_mem_3_strb,
  input         auto_in_w_mem_3_last,
  input  [63:0] auto_in_w_mem_4_data,
  input  [7:0]  auto_in_w_mem_4_strb,
  input         auto_in_w_mem_4_last,
  input  [63:0] auto_in_w_mem_5_data,
  input  [7:0]  auto_in_w_mem_5_strb,
  input         auto_in_w_mem_5_last,
  input  [63:0] auto_in_w_mem_6_data,
  input  [7:0]  auto_in_w_mem_6_strb,
  input         auto_in_w_mem_6_last,
  input  [63:0] auto_in_w_mem_7_data,
  input  [7:0]  auto_in_w_mem_7_strb,
  input         auto_in_w_mem_7_last,
  output [3:0]  auto_in_w_ridx,
  input  [3:0]  auto_in_w_widx,
  output        auto_in_w_safe_ridx_valid,
  input         auto_in_w_safe_widx_valid,
  input         auto_in_w_safe_source_reset_n,
  output        auto_in_w_safe_sink_reset_n,
  output [3:0]  auto_in_b_mem_0_id,
  output [1:0]  auto_in_b_mem_0_resp,
  output [3:0]  auto_in_b_mem_1_id,
  output [1:0]  auto_in_b_mem_1_resp,
  output [3:0]  auto_in_b_mem_2_id,
  output [1:0]  auto_in_b_mem_2_resp,
  output [3:0]  auto_in_b_mem_3_id,
  output [1:0]  auto_in_b_mem_3_resp,
  output [3:0]  auto_in_b_mem_4_id,
  output [1:0]  auto_in_b_mem_4_resp,
  output [3:0]  auto_in_b_mem_5_id,
  output [1:0]  auto_in_b_mem_5_resp,
  output [3:0]  auto_in_b_mem_6_id,
  output [1:0]  auto_in_b_mem_6_resp,
  output [3:0]  auto_in_b_mem_7_id,
  output [1:0]  auto_in_b_mem_7_resp,
  input  [3:0]  auto_in_b_ridx,
  output [3:0]  auto_in_b_widx,
  input         auto_in_b_safe_ridx_valid,
  output        auto_in_b_safe_widx_valid,
  output        auto_in_b_safe_source_reset_n,
  input         auto_in_b_safe_sink_reset_n,
  input  [3:0]  auto_in_ar_mem_0_id,
  input  [31:0] auto_in_ar_mem_0_addr,
  input  [7:0]  auto_in_ar_mem_0_len,
  input  [2:0]  auto_in_ar_mem_0_size,
  input  [1:0]  auto_in_ar_mem_0_burst,
  input         auto_in_ar_mem_0_lock,
  input  [3:0]  auto_in_ar_mem_0_cache,
  input  [2:0]  auto_in_ar_mem_0_prot,
  input  [3:0]  auto_in_ar_mem_0_qos,
  input  [3:0]  auto_in_ar_mem_1_id,
  input  [31:0] auto_in_ar_mem_1_addr,
  input  [7:0]  auto_in_ar_mem_1_len,
  input  [2:0]  auto_in_ar_mem_1_size,
  input  [1:0]  auto_in_ar_mem_1_burst,
  input         auto_in_ar_mem_1_lock,
  input  [3:0]  auto_in_ar_mem_1_cache,
  input  [2:0]  auto_in_ar_mem_1_prot,
  input  [3:0]  auto_in_ar_mem_1_qos,
  input  [3:0]  auto_in_ar_mem_2_id,
  input  [31:0] auto_in_ar_mem_2_addr,
  input  [7:0]  auto_in_ar_mem_2_len,
  input  [2:0]  auto_in_ar_mem_2_size,
  input  [1:0]  auto_in_ar_mem_2_burst,
  input         auto_in_ar_mem_2_lock,
  input  [3:0]  auto_in_ar_mem_2_cache,
  input  [2:0]  auto_in_ar_mem_2_prot,
  input  [3:0]  auto_in_ar_mem_2_qos,
  input  [3:0]  auto_in_ar_mem_3_id,
  input  [31:0] auto_in_ar_mem_3_addr,
  input  [7:0]  auto_in_ar_mem_3_len,
  input  [2:0]  auto_in_ar_mem_3_size,
  input  [1:0]  auto_in_ar_mem_3_burst,
  input         auto_in_ar_mem_3_lock,
  input  [3:0]  auto_in_ar_mem_3_cache,
  input  [2:0]  auto_in_ar_mem_3_prot,
  input  [3:0]  auto_in_ar_mem_3_qos,
  input  [3:0]  auto_in_ar_mem_4_id,
  input  [31:0] auto_in_ar_mem_4_addr,
  input  [7:0]  auto_in_ar_mem_4_len,
  input  [2:0]  auto_in_ar_mem_4_size,
  input  [1:0]  auto_in_ar_mem_4_burst,
  input         auto_in_ar_mem_4_lock,
  input  [3:0]  auto_in_ar_mem_4_cache,
  input  [2:0]  auto_in_ar_mem_4_prot,
  input  [3:0]  auto_in_ar_mem_4_qos,
  input  [3:0]  auto_in_ar_mem_5_id,
  input  [31:0] auto_in_ar_mem_5_addr,
  input  [7:0]  auto_in_ar_mem_5_len,
  input  [2:0]  auto_in_ar_mem_5_size,
  input  [1:0]  auto_in_ar_mem_5_burst,
  input         auto_in_ar_mem_5_lock,
  input  [3:0]  auto_in_ar_mem_5_cache,
  input  [2:0]  auto_in_ar_mem_5_prot,
  input  [3:0]  auto_in_ar_mem_5_qos,
  input  [3:0]  auto_in_ar_mem_6_id,
  input  [31:0] auto_in_ar_mem_6_addr,
  input  [7:0]  auto_in_ar_mem_6_len,
  input  [2:0]  auto_in_ar_mem_6_size,
  input  [1:0]  auto_in_ar_mem_6_burst,
  input         auto_in_ar_mem_6_lock,
  input  [3:0]  auto_in_ar_mem_6_cache,
  input  [2:0]  auto_in_ar_mem_6_prot,
  input  [3:0]  auto_in_ar_mem_6_qos,
  input  [3:0]  auto_in_ar_mem_7_id,
  input  [31:0] auto_in_ar_mem_7_addr,
  input  [7:0]  auto_in_ar_mem_7_len,
  input  [2:0]  auto_in_ar_mem_7_size,
  input  [1:0]  auto_in_ar_mem_7_burst,
  input         auto_in_ar_mem_7_lock,
  input  [3:0]  auto_in_ar_mem_7_cache,
  input  [2:0]  auto_in_ar_mem_7_prot,
  input  [3:0]  auto_in_ar_mem_7_qos,
  output [3:0]  auto_in_ar_ridx,
  input  [3:0]  auto_in_ar_widx,
  output        auto_in_ar_safe_ridx_valid,
  input         auto_in_ar_safe_widx_valid,
  input         auto_in_ar_safe_source_reset_n,
  output        auto_in_ar_safe_sink_reset_n,
  output [3:0]  auto_in_r_mem_0_id,
  output [63:0] auto_in_r_mem_0_data,
  output [1:0]  auto_in_r_mem_0_resp,
  output        auto_in_r_mem_0_last,
  output [3:0]  auto_in_r_mem_1_id,
  output [63:0] auto_in_r_mem_1_data,
  output [1:0]  auto_in_r_mem_1_resp,
  output        auto_in_r_mem_1_last,
  output [3:0]  auto_in_r_mem_2_id,
  output [63:0] auto_in_r_mem_2_data,
  output [1:0]  auto_in_r_mem_2_resp,
  output        auto_in_r_mem_2_last,
  output [3:0]  auto_in_r_mem_3_id,
  output [63:0] auto_in_r_mem_3_data,
  output [1:0]  auto_in_r_mem_3_resp,
  output        auto_in_r_mem_3_last,
  output [3:0]  auto_in_r_mem_4_id,
  output [63:0] auto_in_r_mem_4_data,
  output [1:0]  auto_in_r_mem_4_resp,
  output        auto_in_r_mem_4_last,
  output [3:0]  auto_in_r_mem_5_id,
  output [63:0] auto_in_r_mem_5_data,
  output [1:0]  auto_in_r_mem_5_resp,
  output        auto_in_r_mem_5_last,
  output [3:0]  auto_in_r_mem_6_id,
  output [63:0] auto_in_r_mem_6_data,
  output [1:0]  auto_in_r_mem_6_resp,
  output        auto_in_r_mem_6_last,
  output [3:0]  auto_in_r_mem_7_id,
  output [63:0] auto_in_r_mem_7_data,
  output [1:0]  auto_in_r_mem_7_resp,
  output        auto_in_r_mem_7_last,
  input  [3:0]  auto_in_r_ridx,
  output [3:0]  auto_in_r_widx,
  input         auto_in_r_safe_ridx_valid,
  output        auto_in_r_safe_widx_valid,
  output        auto_in_r_safe_source_reset_n,
  input         auto_in_r_safe_sink_reset_n,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input         auto_out_r_bits_last
);
  wire  bundleOut_0_ar_sink_clock; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_reset; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_deq_ready; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_deq_valid; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_deq_bits_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_deq_bits_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_deq_bits_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_deq_bits_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_deq_bits_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_deq_bits_lock; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_deq_bits_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_deq_bits_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_0_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_async_mem_0_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_async_mem_0_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_0_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_async_mem_0_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_mem_0_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_0_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_0_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_0_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_1_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_async_mem_1_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_async_mem_1_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_1_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_async_mem_1_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_mem_1_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_1_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_1_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_1_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_2_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_async_mem_2_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_async_mem_2_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_2_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_async_mem_2_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_mem_2_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_2_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_2_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_2_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_3_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_async_mem_3_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_async_mem_3_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_3_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_async_mem_3_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_mem_3_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_3_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_3_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_3_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_4_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_async_mem_4_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_async_mem_4_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_4_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_async_mem_4_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_mem_4_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_4_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_4_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_4_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_5_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_async_mem_5_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_async_mem_5_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_5_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_async_mem_5_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_mem_5_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_5_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_5_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_5_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_6_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_async_mem_6_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_async_mem_6_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_6_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_async_mem_6_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_mem_6_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_6_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_6_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_6_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_7_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_ar_sink_io_async_mem_7_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_ar_sink_io_async_mem_7_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_7_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_ar_sink_io_async_mem_7_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_mem_7_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_7_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_ar_sink_io_async_mem_7_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_mem_7_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_ridx; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_ar_sink_io_async_widx; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_ar_sink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_clock; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_reset; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_deq_ready; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_deq_valid; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_deq_bits_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_deq_bits_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_deq_bits_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_deq_bits_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_deq_bits_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_deq_bits_lock; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_deq_bits_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_deq_bits_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_0_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_async_mem_0_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_async_mem_0_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_0_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_async_mem_0_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_mem_0_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_0_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_0_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_0_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_1_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_async_mem_1_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_async_mem_1_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_1_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_async_mem_1_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_mem_1_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_1_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_1_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_1_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_2_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_async_mem_2_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_async_mem_2_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_2_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_async_mem_2_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_mem_2_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_2_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_2_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_2_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_3_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_async_mem_3_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_async_mem_3_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_3_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_async_mem_3_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_mem_3_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_3_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_3_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_3_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_4_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_async_mem_4_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_async_mem_4_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_4_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_async_mem_4_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_mem_4_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_4_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_4_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_4_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_5_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_async_mem_5_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_async_mem_5_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_5_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_async_mem_5_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_mem_5_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_5_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_5_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_5_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_6_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_async_mem_6_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_async_mem_6_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_6_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_async_mem_6_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_mem_6_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_6_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_6_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_6_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_7_id; // @[AsyncQueue.scala 207:22]
  wire [31:0] bundleOut_0_aw_sink_io_async_mem_7_addr; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_aw_sink_io_async_mem_7_len; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_7_size; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleOut_0_aw_sink_io_async_mem_7_burst; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_mem_7_lock; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_7_cache; // @[AsyncQueue.scala 207:22]
  wire [2:0] bundleOut_0_aw_sink_io_async_mem_7_prot; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_mem_7_qos; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_ridx; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_aw_sink_io_async_widx; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_aw_sink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_clock; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_reset; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_deq_ready; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_deq_valid; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_deq_bits_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_deq_bits_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_deq_bits_last; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_async_mem_0_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_async_mem_0_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_mem_0_last; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_async_mem_1_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_async_mem_1_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_mem_1_last; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_async_mem_2_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_async_mem_2_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_mem_2_last; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_async_mem_3_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_async_mem_3_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_mem_3_last; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_async_mem_4_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_async_mem_4_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_mem_4_last; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_async_mem_5_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_async_mem_5_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_mem_5_last; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_async_mem_6_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_async_mem_6_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_mem_6_last; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleOut_0_w_sink_io_async_mem_7_data; // @[AsyncQueue.scala 207:22]
  wire [7:0] bundleOut_0_w_sink_io_async_mem_7_strb; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_mem_7_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_w_sink_io_async_ridx; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleOut_0_w_sink_io_async_widx; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleOut_0_w_sink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_source_clock; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_reset; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_enq_ready; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_enq_valid; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_enq_bits_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_enq_bits_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_enq_bits_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_enq_bits_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_mem_0_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_async_mem_0_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_async_mem_0_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_mem_0_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_mem_1_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_async_mem_1_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_async_mem_1_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_mem_1_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_mem_2_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_async_mem_2_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_async_mem_2_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_mem_2_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_mem_3_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_async_mem_3_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_async_mem_3_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_mem_3_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_mem_4_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_async_mem_4_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_async_mem_4_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_mem_4_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_mem_5_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_async_mem_5_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_async_mem_5_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_mem_5_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_mem_6_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_async_mem_6_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_async_mem_6_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_mem_6_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_mem_7_id; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleIn_0_r_source_io_async_mem_7_data; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_r_source_io_async_mem_7_resp; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_mem_7_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_ridx; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_r_source_io_async_widx; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_source_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_b_source_clock; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_b_source_reset; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_b_source_io_enq_ready; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_b_source_io_enq_valid; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_enq_bits_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_enq_bits_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_mem_0_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_async_mem_0_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_mem_1_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_async_mem_1_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_mem_2_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_async_mem_2_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_mem_3_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_async_mem_3_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_mem_4_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_async_mem_4_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_mem_5_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_async_mem_5_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_mem_6_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_async_mem_6_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_mem_7_id; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleIn_0_b_source_io_async_mem_7_resp; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_ridx; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleIn_0_b_source_io_async_widx; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_b_source_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_b_source_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_b_source_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_b_source_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24]
  AsyncQueueSink_inVCU118FPGATestHarness bundleOut_0_ar_sink ( // @[AsyncQueue.scala 207:22]
    .clock(bundleOut_0_ar_sink_clock),
    .reset(bundleOut_0_ar_sink_reset),
    .io_deq_ready(bundleOut_0_ar_sink_io_deq_ready),
    .io_deq_valid(bundleOut_0_ar_sink_io_deq_valid),
    .io_deq_bits_id(bundleOut_0_ar_sink_io_deq_bits_id),
    .io_deq_bits_addr(bundleOut_0_ar_sink_io_deq_bits_addr),
    .io_deq_bits_len(bundleOut_0_ar_sink_io_deq_bits_len),
    .io_deq_bits_size(bundleOut_0_ar_sink_io_deq_bits_size),
    .io_deq_bits_burst(bundleOut_0_ar_sink_io_deq_bits_burst),
    .io_deq_bits_lock(bundleOut_0_ar_sink_io_deq_bits_lock),
    .io_deq_bits_prot(bundleOut_0_ar_sink_io_deq_bits_prot),
    .io_deq_bits_qos(bundleOut_0_ar_sink_io_deq_bits_qos),
    .io_async_mem_0_id(bundleOut_0_ar_sink_io_async_mem_0_id),
    .io_async_mem_0_addr(bundleOut_0_ar_sink_io_async_mem_0_addr),
    .io_async_mem_0_len(bundleOut_0_ar_sink_io_async_mem_0_len),
    .io_async_mem_0_size(bundleOut_0_ar_sink_io_async_mem_0_size),
    .io_async_mem_0_burst(bundleOut_0_ar_sink_io_async_mem_0_burst),
    .io_async_mem_0_lock(bundleOut_0_ar_sink_io_async_mem_0_lock),
    .io_async_mem_0_cache(bundleOut_0_ar_sink_io_async_mem_0_cache),
    .io_async_mem_0_prot(bundleOut_0_ar_sink_io_async_mem_0_prot),
    .io_async_mem_0_qos(bundleOut_0_ar_sink_io_async_mem_0_qos),
    .io_async_mem_1_id(bundleOut_0_ar_sink_io_async_mem_1_id),
    .io_async_mem_1_addr(bundleOut_0_ar_sink_io_async_mem_1_addr),
    .io_async_mem_1_len(bundleOut_0_ar_sink_io_async_mem_1_len),
    .io_async_mem_1_size(bundleOut_0_ar_sink_io_async_mem_1_size),
    .io_async_mem_1_burst(bundleOut_0_ar_sink_io_async_mem_1_burst),
    .io_async_mem_1_lock(bundleOut_0_ar_sink_io_async_mem_1_lock),
    .io_async_mem_1_cache(bundleOut_0_ar_sink_io_async_mem_1_cache),
    .io_async_mem_1_prot(bundleOut_0_ar_sink_io_async_mem_1_prot),
    .io_async_mem_1_qos(bundleOut_0_ar_sink_io_async_mem_1_qos),
    .io_async_mem_2_id(bundleOut_0_ar_sink_io_async_mem_2_id),
    .io_async_mem_2_addr(bundleOut_0_ar_sink_io_async_mem_2_addr),
    .io_async_mem_2_len(bundleOut_0_ar_sink_io_async_mem_2_len),
    .io_async_mem_2_size(bundleOut_0_ar_sink_io_async_mem_2_size),
    .io_async_mem_2_burst(bundleOut_0_ar_sink_io_async_mem_2_burst),
    .io_async_mem_2_lock(bundleOut_0_ar_sink_io_async_mem_2_lock),
    .io_async_mem_2_cache(bundleOut_0_ar_sink_io_async_mem_2_cache),
    .io_async_mem_2_prot(bundleOut_0_ar_sink_io_async_mem_2_prot),
    .io_async_mem_2_qos(bundleOut_0_ar_sink_io_async_mem_2_qos),
    .io_async_mem_3_id(bundleOut_0_ar_sink_io_async_mem_3_id),
    .io_async_mem_3_addr(bundleOut_0_ar_sink_io_async_mem_3_addr),
    .io_async_mem_3_len(bundleOut_0_ar_sink_io_async_mem_3_len),
    .io_async_mem_3_size(bundleOut_0_ar_sink_io_async_mem_3_size),
    .io_async_mem_3_burst(bundleOut_0_ar_sink_io_async_mem_3_burst),
    .io_async_mem_3_lock(bundleOut_0_ar_sink_io_async_mem_3_lock),
    .io_async_mem_3_cache(bundleOut_0_ar_sink_io_async_mem_3_cache),
    .io_async_mem_3_prot(bundleOut_0_ar_sink_io_async_mem_3_prot),
    .io_async_mem_3_qos(bundleOut_0_ar_sink_io_async_mem_3_qos),
    .io_async_mem_4_id(bundleOut_0_ar_sink_io_async_mem_4_id),
    .io_async_mem_4_addr(bundleOut_0_ar_sink_io_async_mem_4_addr),
    .io_async_mem_4_len(bundleOut_0_ar_sink_io_async_mem_4_len),
    .io_async_mem_4_size(bundleOut_0_ar_sink_io_async_mem_4_size),
    .io_async_mem_4_burst(bundleOut_0_ar_sink_io_async_mem_4_burst),
    .io_async_mem_4_lock(bundleOut_0_ar_sink_io_async_mem_4_lock),
    .io_async_mem_4_cache(bundleOut_0_ar_sink_io_async_mem_4_cache),
    .io_async_mem_4_prot(bundleOut_0_ar_sink_io_async_mem_4_prot),
    .io_async_mem_4_qos(bundleOut_0_ar_sink_io_async_mem_4_qos),
    .io_async_mem_5_id(bundleOut_0_ar_sink_io_async_mem_5_id),
    .io_async_mem_5_addr(bundleOut_0_ar_sink_io_async_mem_5_addr),
    .io_async_mem_5_len(bundleOut_0_ar_sink_io_async_mem_5_len),
    .io_async_mem_5_size(bundleOut_0_ar_sink_io_async_mem_5_size),
    .io_async_mem_5_burst(bundleOut_0_ar_sink_io_async_mem_5_burst),
    .io_async_mem_5_lock(bundleOut_0_ar_sink_io_async_mem_5_lock),
    .io_async_mem_5_cache(bundleOut_0_ar_sink_io_async_mem_5_cache),
    .io_async_mem_5_prot(bundleOut_0_ar_sink_io_async_mem_5_prot),
    .io_async_mem_5_qos(bundleOut_0_ar_sink_io_async_mem_5_qos),
    .io_async_mem_6_id(bundleOut_0_ar_sink_io_async_mem_6_id),
    .io_async_mem_6_addr(bundleOut_0_ar_sink_io_async_mem_6_addr),
    .io_async_mem_6_len(bundleOut_0_ar_sink_io_async_mem_6_len),
    .io_async_mem_6_size(bundleOut_0_ar_sink_io_async_mem_6_size),
    .io_async_mem_6_burst(bundleOut_0_ar_sink_io_async_mem_6_burst),
    .io_async_mem_6_lock(bundleOut_0_ar_sink_io_async_mem_6_lock),
    .io_async_mem_6_cache(bundleOut_0_ar_sink_io_async_mem_6_cache),
    .io_async_mem_6_prot(bundleOut_0_ar_sink_io_async_mem_6_prot),
    .io_async_mem_6_qos(bundleOut_0_ar_sink_io_async_mem_6_qos),
    .io_async_mem_7_id(bundleOut_0_ar_sink_io_async_mem_7_id),
    .io_async_mem_7_addr(bundleOut_0_ar_sink_io_async_mem_7_addr),
    .io_async_mem_7_len(bundleOut_0_ar_sink_io_async_mem_7_len),
    .io_async_mem_7_size(bundleOut_0_ar_sink_io_async_mem_7_size),
    .io_async_mem_7_burst(bundleOut_0_ar_sink_io_async_mem_7_burst),
    .io_async_mem_7_lock(bundleOut_0_ar_sink_io_async_mem_7_lock),
    .io_async_mem_7_cache(bundleOut_0_ar_sink_io_async_mem_7_cache),
    .io_async_mem_7_prot(bundleOut_0_ar_sink_io_async_mem_7_prot),
    .io_async_mem_7_qos(bundleOut_0_ar_sink_io_async_mem_7_qos),
    .io_async_ridx(bundleOut_0_ar_sink_io_async_ridx),
    .io_async_widx(bundleOut_0_ar_sink_io_async_widx),
    .io_async_safe_ridx_valid(bundleOut_0_ar_sink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleOut_0_ar_sink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleOut_0_ar_sink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleOut_0_ar_sink_io_async_safe_sink_reset_n)
  );
  AsyncQueueSink_inVCU118FPGATestHarness bundleOut_0_aw_sink ( // @[AsyncQueue.scala 207:22]
    .clock(bundleOut_0_aw_sink_clock),
    .reset(bundleOut_0_aw_sink_reset),
    .io_deq_ready(bundleOut_0_aw_sink_io_deq_ready),
    .io_deq_valid(bundleOut_0_aw_sink_io_deq_valid),
    .io_deq_bits_id(bundleOut_0_aw_sink_io_deq_bits_id),
    .io_deq_bits_addr(bundleOut_0_aw_sink_io_deq_bits_addr),
    .io_deq_bits_len(bundleOut_0_aw_sink_io_deq_bits_len),
    .io_deq_bits_size(bundleOut_0_aw_sink_io_deq_bits_size),
    .io_deq_bits_burst(bundleOut_0_aw_sink_io_deq_bits_burst),
    .io_deq_bits_lock(bundleOut_0_aw_sink_io_deq_bits_lock),
    .io_deq_bits_prot(bundleOut_0_aw_sink_io_deq_bits_prot),
    .io_deq_bits_qos(bundleOut_0_aw_sink_io_deq_bits_qos),
    .io_async_mem_0_id(bundleOut_0_aw_sink_io_async_mem_0_id),
    .io_async_mem_0_addr(bundleOut_0_aw_sink_io_async_mem_0_addr),
    .io_async_mem_0_len(bundleOut_0_aw_sink_io_async_mem_0_len),
    .io_async_mem_0_size(bundleOut_0_aw_sink_io_async_mem_0_size),
    .io_async_mem_0_burst(bundleOut_0_aw_sink_io_async_mem_0_burst),
    .io_async_mem_0_lock(bundleOut_0_aw_sink_io_async_mem_0_lock),
    .io_async_mem_0_cache(bundleOut_0_aw_sink_io_async_mem_0_cache),
    .io_async_mem_0_prot(bundleOut_0_aw_sink_io_async_mem_0_prot),
    .io_async_mem_0_qos(bundleOut_0_aw_sink_io_async_mem_0_qos),
    .io_async_mem_1_id(bundleOut_0_aw_sink_io_async_mem_1_id),
    .io_async_mem_1_addr(bundleOut_0_aw_sink_io_async_mem_1_addr),
    .io_async_mem_1_len(bundleOut_0_aw_sink_io_async_mem_1_len),
    .io_async_mem_1_size(bundleOut_0_aw_sink_io_async_mem_1_size),
    .io_async_mem_1_burst(bundleOut_0_aw_sink_io_async_mem_1_burst),
    .io_async_mem_1_lock(bundleOut_0_aw_sink_io_async_mem_1_lock),
    .io_async_mem_1_cache(bundleOut_0_aw_sink_io_async_mem_1_cache),
    .io_async_mem_1_prot(bundleOut_0_aw_sink_io_async_mem_1_prot),
    .io_async_mem_1_qos(bundleOut_0_aw_sink_io_async_mem_1_qos),
    .io_async_mem_2_id(bundleOut_0_aw_sink_io_async_mem_2_id),
    .io_async_mem_2_addr(bundleOut_0_aw_sink_io_async_mem_2_addr),
    .io_async_mem_2_len(bundleOut_0_aw_sink_io_async_mem_2_len),
    .io_async_mem_2_size(bundleOut_0_aw_sink_io_async_mem_2_size),
    .io_async_mem_2_burst(bundleOut_0_aw_sink_io_async_mem_2_burst),
    .io_async_mem_2_lock(bundleOut_0_aw_sink_io_async_mem_2_lock),
    .io_async_mem_2_cache(bundleOut_0_aw_sink_io_async_mem_2_cache),
    .io_async_mem_2_prot(bundleOut_0_aw_sink_io_async_mem_2_prot),
    .io_async_mem_2_qos(bundleOut_0_aw_sink_io_async_mem_2_qos),
    .io_async_mem_3_id(bundleOut_0_aw_sink_io_async_mem_3_id),
    .io_async_mem_3_addr(bundleOut_0_aw_sink_io_async_mem_3_addr),
    .io_async_mem_3_len(bundleOut_0_aw_sink_io_async_mem_3_len),
    .io_async_mem_3_size(bundleOut_0_aw_sink_io_async_mem_3_size),
    .io_async_mem_3_burst(bundleOut_0_aw_sink_io_async_mem_3_burst),
    .io_async_mem_3_lock(bundleOut_0_aw_sink_io_async_mem_3_lock),
    .io_async_mem_3_cache(bundleOut_0_aw_sink_io_async_mem_3_cache),
    .io_async_mem_3_prot(bundleOut_0_aw_sink_io_async_mem_3_prot),
    .io_async_mem_3_qos(bundleOut_0_aw_sink_io_async_mem_3_qos),
    .io_async_mem_4_id(bundleOut_0_aw_sink_io_async_mem_4_id),
    .io_async_mem_4_addr(bundleOut_0_aw_sink_io_async_mem_4_addr),
    .io_async_mem_4_len(bundleOut_0_aw_sink_io_async_mem_4_len),
    .io_async_mem_4_size(bundleOut_0_aw_sink_io_async_mem_4_size),
    .io_async_mem_4_burst(bundleOut_0_aw_sink_io_async_mem_4_burst),
    .io_async_mem_4_lock(bundleOut_0_aw_sink_io_async_mem_4_lock),
    .io_async_mem_4_cache(bundleOut_0_aw_sink_io_async_mem_4_cache),
    .io_async_mem_4_prot(bundleOut_0_aw_sink_io_async_mem_4_prot),
    .io_async_mem_4_qos(bundleOut_0_aw_sink_io_async_mem_4_qos),
    .io_async_mem_5_id(bundleOut_0_aw_sink_io_async_mem_5_id),
    .io_async_mem_5_addr(bundleOut_0_aw_sink_io_async_mem_5_addr),
    .io_async_mem_5_len(bundleOut_0_aw_sink_io_async_mem_5_len),
    .io_async_mem_5_size(bundleOut_0_aw_sink_io_async_mem_5_size),
    .io_async_mem_5_burst(bundleOut_0_aw_sink_io_async_mem_5_burst),
    .io_async_mem_5_lock(bundleOut_0_aw_sink_io_async_mem_5_lock),
    .io_async_mem_5_cache(bundleOut_0_aw_sink_io_async_mem_5_cache),
    .io_async_mem_5_prot(bundleOut_0_aw_sink_io_async_mem_5_prot),
    .io_async_mem_5_qos(bundleOut_0_aw_sink_io_async_mem_5_qos),
    .io_async_mem_6_id(bundleOut_0_aw_sink_io_async_mem_6_id),
    .io_async_mem_6_addr(bundleOut_0_aw_sink_io_async_mem_6_addr),
    .io_async_mem_6_len(bundleOut_0_aw_sink_io_async_mem_6_len),
    .io_async_mem_6_size(bundleOut_0_aw_sink_io_async_mem_6_size),
    .io_async_mem_6_burst(bundleOut_0_aw_sink_io_async_mem_6_burst),
    .io_async_mem_6_lock(bundleOut_0_aw_sink_io_async_mem_6_lock),
    .io_async_mem_6_cache(bundleOut_0_aw_sink_io_async_mem_6_cache),
    .io_async_mem_6_prot(bundleOut_0_aw_sink_io_async_mem_6_prot),
    .io_async_mem_6_qos(bundleOut_0_aw_sink_io_async_mem_6_qos),
    .io_async_mem_7_id(bundleOut_0_aw_sink_io_async_mem_7_id),
    .io_async_mem_7_addr(bundleOut_0_aw_sink_io_async_mem_7_addr),
    .io_async_mem_7_len(bundleOut_0_aw_sink_io_async_mem_7_len),
    .io_async_mem_7_size(bundleOut_0_aw_sink_io_async_mem_7_size),
    .io_async_mem_7_burst(bundleOut_0_aw_sink_io_async_mem_7_burst),
    .io_async_mem_7_lock(bundleOut_0_aw_sink_io_async_mem_7_lock),
    .io_async_mem_7_cache(bundleOut_0_aw_sink_io_async_mem_7_cache),
    .io_async_mem_7_prot(bundleOut_0_aw_sink_io_async_mem_7_prot),
    .io_async_mem_7_qos(bundleOut_0_aw_sink_io_async_mem_7_qos),
    .io_async_ridx(bundleOut_0_aw_sink_io_async_ridx),
    .io_async_widx(bundleOut_0_aw_sink_io_async_widx),
    .io_async_safe_ridx_valid(bundleOut_0_aw_sink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleOut_0_aw_sink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleOut_0_aw_sink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleOut_0_aw_sink_io_async_safe_sink_reset_n)
  );
  AsyncQueueSink_2_inVCU118FPGATestHarness bundleOut_0_w_sink ( // @[AsyncQueue.scala 207:22]
    .clock(bundleOut_0_w_sink_clock),
    .reset(bundleOut_0_w_sink_reset),
    .io_deq_ready(bundleOut_0_w_sink_io_deq_ready),
    .io_deq_valid(bundleOut_0_w_sink_io_deq_valid),
    .io_deq_bits_data(bundleOut_0_w_sink_io_deq_bits_data),
    .io_deq_bits_strb(bundleOut_0_w_sink_io_deq_bits_strb),
    .io_deq_bits_last(bundleOut_0_w_sink_io_deq_bits_last),
    .io_async_mem_0_data(bundleOut_0_w_sink_io_async_mem_0_data),
    .io_async_mem_0_strb(bundleOut_0_w_sink_io_async_mem_0_strb),
    .io_async_mem_0_last(bundleOut_0_w_sink_io_async_mem_0_last),
    .io_async_mem_1_data(bundleOut_0_w_sink_io_async_mem_1_data),
    .io_async_mem_1_strb(bundleOut_0_w_sink_io_async_mem_1_strb),
    .io_async_mem_1_last(bundleOut_0_w_sink_io_async_mem_1_last),
    .io_async_mem_2_data(bundleOut_0_w_sink_io_async_mem_2_data),
    .io_async_mem_2_strb(bundleOut_0_w_sink_io_async_mem_2_strb),
    .io_async_mem_2_last(bundleOut_0_w_sink_io_async_mem_2_last),
    .io_async_mem_3_data(bundleOut_0_w_sink_io_async_mem_3_data),
    .io_async_mem_3_strb(bundleOut_0_w_sink_io_async_mem_3_strb),
    .io_async_mem_3_last(bundleOut_0_w_sink_io_async_mem_3_last),
    .io_async_mem_4_data(bundleOut_0_w_sink_io_async_mem_4_data),
    .io_async_mem_4_strb(bundleOut_0_w_sink_io_async_mem_4_strb),
    .io_async_mem_4_last(bundleOut_0_w_sink_io_async_mem_4_last),
    .io_async_mem_5_data(bundleOut_0_w_sink_io_async_mem_5_data),
    .io_async_mem_5_strb(bundleOut_0_w_sink_io_async_mem_5_strb),
    .io_async_mem_5_last(bundleOut_0_w_sink_io_async_mem_5_last),
    .io_async_mem_6_data(bundleOut_0_w_sink_io_async_mem_6_data),
    .io_async_mem_6_strb(bundleOut_0_w_sink_io_async_mem_6_strb),
    .io_async_mem_6_last(bundleOut_0_w_sink_io_async_mem_6_last),
    .io_async_mem_7_data(bundleOut_0_w_sink_io_async_mem_7_data),
    .io_async_mem_7_strb(bundleOut_0_w_sink_io_async_mem_7_strb),
    .io_async_mem_7_last(bundleOut_0_w_sink_io_async_mem_7_last),
    .io_async_ridx(bundleOut_0_w_sink_io_async_ridx),
    .io_async_widx(bundleOut_0_w_sink_io_async_widx),
    .io_async_safe_ridx_valid(bundleOut_0_w_sink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleOut_0_w_sink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleOut_0_w_sink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleOut_0_w_sink_io_async_safe_sink_reset_n)
  );
  AsyncQueueSource_inVCU118FPGATestHarness bundleIn_0_r_source ( // @[AsyncQueue.scala 216:24]
    .clock(bundleIn_0_r_source_clock),
    .reset(bundleIn_0_r_source_reset),
    .io_enq_ready(bundleIn_0_r_source_io_enq_ready),
    .io_enq_valid(bundleIn_0_r_source_io_enq_valid),
    .io_enq_bits_id(bundleIn_0_r_source_io_enq_bits_id),
    .io_enq_bits_data(bundleIn_0_r_source_io_enq_bits_data),
    .io_enq_bits_resp(bundleIn_0_r_source_io_enq_bits_resp),
    .io_enq_bits_last(bundleIn_0_r_source_io_enq_bits_last),
    .io_async_mem_0_id(bundleIn_0_r_source_io_async_mem_0_id),
    .io_async_mem_0_data(bundleIn_0_r_source_io_async_mem_0_data),
    .io_async_mem_0_resp(bundleIn_0_r_source_io_async_mem_0_resp),
    .io_async_mem_0_last(bundleIn_0_r_source_io_async_mem_0_last),
    .io_async_mem_1_id(bundleIn_0_r_source_io_async_mem_1_id),
    .io_async_mem_1_data(bundleIn_0_r_source_io_async_mem_1_data),
    .io_async_mem_1_resp(bundleIn_0_r_source_io_async_mem_1_resp),
    .io_async_mem_1_last(bundleIn_0_r_source_io_async_mem_1_last),
    .io_async_mem_2_id(bundleIn_0_r_source_io_async_mem_2_id),
    .io_async_mem_2_data(bundleIn_0_r_source_io_async_mem_2_data),
    .io_async_mem_2_resp(bundleIn_0_r_source_io_async_mem_2_resp),
    .io_async_mem_2_last(bundleIn_0_r_source_io_async_mem_2_last),
    .io_async_mem_3_id(bundleIn_0_r_source_io_async_mem_3_id),
    .io_async_mem_3_data(bundleIn_0_r_source_io_async_mem_3_data),
    .io_async_mem_3_resp(bundleIn_0_r_source_io_async_mem_3_resp),
    .io_async_mem_3_last(bundleIn_0_r_source_io_async_mem_3_last),
    .io_async_mem_4_id(bundleIn_0_r_source_io_async_mem_4_id),
    .io_async_mem_4_data(bundleIn_0_r_source_io_async_mem_4_data),
    .io_async_mem_4_resp(bundleIn_0_r_source_io_async_mem_4_resp),
    .io_async_mem_4_last(bundleIn_0_r_source_io_async_mem_4_last),
    .io_async_mem_5_id(bundleIn_0_r_source_io_async_mem_5_id),
    .io_async_mem_5_data(bundleIn_0_r_source_io_async_mem_5_data),
    .io_async_mem_5_resp(bundleIn_0_r_source_io_async_mem_5_resp),
    .io_async_mem_5_last(bundleIn_0_r_source_io_async_mem_5_last),
    .io_async_mem_6_id(bundleIn_0_r_source_io_async_mem_6_id),
    .io_async_mem_6_data(bundleIn_0_r_source_io_async_mem_6_data),
    .io_async_mem_6_resp(bundleIn_0_r_source_io_async_mem_6_resp),
    .io_async_mem_6_last(bundleIn_0_r_source_io_async_mem_6_last),
    .io_async_mem_7_id(bundleIn_0_r_source_io_async_mem_7_id),
    .io_async_mem_7_data(bundleIn_0_r_source_io_async_mem_7_data),
    .io_async_mem_7_resp(bundleIn_0_r_source_io_async_mem_7_resp),
    .io_async_mem_7_last(bundleIn_0_r_source_io_async_mem_7_last),
    .io_async_ridx(bundleIn_0_r_source_io_async_ridx),
    .io_async_widx(bundleIn_0_r_source_io_async_widx),
    .io_async_safe_ridx_valid(bundleIn_0_r_source_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleIn_0_r_source_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleIn_0_r_source_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleIn_0_r_source_io_async_safe_sink_reset_n)
  );
  AsyncQueueSource_1_inVCU118FPGATestHarness bundleIn_0_b_source ( // @[AsyncQueue.scala 216:24]
    .clock(bundleIn_0_b_source_clock),
    .reset(bundleIn_0_b_source_reset),
    .io_enq_ready(bundleIn_0_b_source_io_enq_ready),
    .io_enq_valid(bundleIn_0_b_source_io_enq_valid),
    .io_enq_bits_id(bundleIn_0_b_source_io_enq_bits_id),
    .io_enq_bits_resp(bundleIn_0_b_source_io_enq_bits_resp),
    .io_async_mem_0_id(bundleIn_0_b_source_io_async_mem_0_id),
    .io_async_mem_0_resp(bundleIn_0_b_source_io_async_mem_0_resp),
    .io_async_mem_1_id(bundleIn_0_b_source_io_async_mem_1_id),
    .io_async_mem_1_resp(bundleIn_0_b_source_io_async_mem_1_resp),
    .io_async_mem_2_id(bundleIn_0_b_source_io_async_mem_2_id),
    .io_async_mem_2_resp(bundleIn_0_b_source_io_async_mem_2_resp),
    .io_async_mem_3_id(bundleIn_0_b_source_io_async_mem_3_id),
    .io_async_mem_3_resp(bundleIn_0_b_source_io_async_mem_3_resp),
    .io_async_mem_4_id(bundleIn_0_b_source_io_async_mem_4_id),
    .io_async_mem_4_resp(bundleIn_0_b_source_io_async_mem_4_resp),
    .io_async_mem_5_id(bundleIn_0_b_source_io_async_mem_5_id),
    .io_async_mem_5_resp(bundleIn_0_b_source_io_async_mem_5_resp),
    .io_async_mem_6_id(bundleIn_0_b_source_io_async_mem_6_id),
    .io_async_mem_6_resp(bundleIn_0_b_source_io_async_mem_6_resp),
    .io_async_mem_7_id(bundleIn_0_b_source_io_async_mem_7_id),
    .io_async_mem_7_resp(bundleIn_0_b_source_io_async_mem_7_resp),
    .io_async_ridx(bundleIn_0_b_source_io_async_ridx),
    .io_async_widx(bundleIn_0_b_source_io_async_widx),
    .io_async_safe_ridx_valid(bundleIn_0_b_source_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleIn_0_b_source_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleIn_0_b_source_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleIn_0_b_source_io_async_safe_sink_reset_n)
  );
  assign auto_in_aw_ridx = bundleOut_0_aw_sink_io_async_ridx; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_aw_safe_ridx_valid = bundleOut_0_aw_sink_io_async_safe_ridx_valid; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_aw_safe_sink_reset_n = bundleOut_0_aw_sink_io_async_safe_sink_reset_n; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_w_ridx = bundleOut_0_w_sink_io_async_ridx; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_w_safe_ridx_valid = bundleOut_0_w_sink_io_async_safe_ridx_valid; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_w_safe_sink_reset_n = bundleOut_0_w_sink_io_async_safe_sink_reset_n; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_b_mem_0_id = bundleIn_0_b_source_io_async_mem_0_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_0_resp = bundleIn_0_b_source_io_async_mem_0_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_1_id = bundleIn_0_b_source_io_async_mem_1_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_1_resp = bundleIn_0_b_source_io_async_mem_1_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_2_id = bundleIn_0_b_source_io_async_mem_2_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_2_resp = bundleIn_0_b_source_io_async_mem_2_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_3_id = bundleIn_0_b_source_io_async_mem_3_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_3_resp = bundleIn_0_b_source_io_async_mem_3_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_4_id = bundleIn_0_b_source_io_async_mem_4_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_4_resp = bundleIn_0_b_source_io_async_mem_4_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_5_id = bundleIn_0_b_source_io_async_mem_5_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_5_resp = bundleIn_0_b_source_io_async_mem_5_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_6_id = bundleIn_0_b_source_io_async_mem_6_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_6_resp = bundleIn_0_b_source_io_async_mem_6_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_7_id = bundleIn_0_b_source_io_async_mem_7_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_mem_7_resp = bundleIn_0_b_source_io_async_mem_7_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_widx = bundleIn_0_b_source_io_async_widx; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_safe_widx_valid = bundleIn_0_b_source_io_async_safe_widx_valid; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_b_safe_source_reset_n = bundleIn_0_b_source_io_async_safe_source_reset_n; // @[Nodes.scala 1210:84 AsyncCrossing.scala 42:14]
  assign auto_in_ar_ridx = bundleOut_0_ar_sink_io_async_ridx; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_ar_safe_ridx_valid = bundleOut_0_ar_sink_io_async_safe_ridx_valid; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_ar_safe_sink_reset_n = bundleOut_0_ar_sink_io_async_safe_sink_reset_n; // @[Nodes.scala 1210:84 AsyncQueue.scala 208:19]
  assign auto_in_r_mem_0_id = bundleIn_0_r_source_io_async_mem_0_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_0_data = bundleIn_0_r_source_io_async_mem_0_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_0_resp = bundleIn_0_r_source_io_async_mem_0_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_0_last = bundleIn_0_r_source_io_async_mem_0_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_1_id = bundleIn_0_r_source_io_async_mem_1_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_1_data = bundleIn_0_r_source_io_async_mem_1_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_1_resp = bundleIn_0_r_source_io_async_mem_1_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_1_last = bundleIn_0_r_source_io_async_mem_1_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_2_id = bundleIn_0_r_source_io_async_mem_2_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_2_data = bundleIn_0_r_source_io_async_mem_2_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_2_resp = bundleIn_0_r_source_io_async_mem_2_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_2_last = bundleIn_0_r_source_io_async_mem_2_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_3_id = bundleIn_0_r_source_io_async_mem_3_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_3_data = bundleIn_0_r_source_io_async_mem_3_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_3_resp = bundleIn_0_r_source_io_async_mem_3_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_3_last = bundleIn_0_r_source_io_async_mem_3_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_4_id = bundleIn_0_r_source_io_async_mem_4_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_4_data = bundleIn_0_r_source_io_async_mem_4_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_4_resp = bundleIn_0_r_source_io_async_mem_4_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_4_last = bundleIn_0_r_source_io_async_mem_4_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_5_id = bundleIn_0_r_source_io_async_mem_5_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_5_data = bundleIn_0_r_source_io_async_mem_5_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_5_resp = bundleIn_0_r_source_io_async_mem_5_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_5_last = bundleIn_0_r_source_io_async_mem_5_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_6_id = bundleIn_0_r_source_io_async_mem_6_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_6_data = bundleIn_0_r_source_io_async_mem_6_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_6_resp = bundleIn_0_r_source_io_async_mem_6_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_6_last = bundleIn_0_r_source_io_async_mem_6_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_7_id = bundleIn_0_r_source_io_async_mem_7_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_7_data = bundleIn_0_r_source_io_async_mem_7_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_7_resp = bundleIn_0_r_source_io_async_mem_7_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_mem_7_last = bundleIn_0_r_source_io_async_mem_7_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_widx = bundleIn_0_r_source_io_async_widx; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_safe_widx_valid = bundleIn_0_r_source_io_async_safe_widx_valid; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_in_r_safe_source_reset_n = bundleIn_0_r_source_io_async_safe_source_reset_n; // @[Nodes.scala 1210:84 AsyncCrossing.scala 41:14]
  assign auto_out_aw_valid = bundleOut_0_aw_sink_io_deq_valid; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_aw_bits_id = bundleOut_0_aw_sink_io_deq_bits_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_aw_bits_addr = bundleOut_0_aw_sink_io_deq_bits_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_aw_bits_len = bundleOut_0_aw_sink_io_deq_bits_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_aw_bits_size = bundleOut_0_aw_sink_io_deq_bits_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_aw_bits_burst = bundleOut_0_aw_sink_io_deq_bits_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_aw_bits_lock = bundleOut_0_aw_sink_io_deq_bits_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_aw_bits_prot = bundleOut_0_aw_sink_io_deq_bits_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_aw_bits_qos = bundleOut_0_aw_sink_io_deq_bits_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 39:14]
  assign auto_out_w_valid = bundleOut_0_w_sink_io_deq_valid; // @[Nodes.scala 1207:84 AsyncCrossing.scala 40:14]
  assign auto_out_w_bits_data = bundleOut_0_w_sink_io_deq_bits_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 40:14]
  assign auto_out_w_bits_strb = bundleOut_0_w_sink_io_deq_bits_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 40:14]
  assign auto_out_w_bits_last = bundleOut_0_w_sink_io_deq_bits_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 40:14]
  assign auto_out_b_ready = bundleIn_0_b_source_io_enq_ready; // @[Nodes.scala 1207:84 AsyncQueue.scala 217:19]
  assign auto_out_ar_valid = bundleOut_0_ar_sink_io_deq_valid; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_ar_bits_id = bundleOut_0_ar_sink_io_deq_bits_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_ar_bits_addr = bundleOut_0_ar_sink_io_deq_bits_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_ar_bits_len = bundleOut_0_ar_sink_io_deq_bits_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_ar_bits_size = bundleOut_0_ar_sink_io_deq_bits_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_ar_bits_burst = bundleOut_0_ar_sink_io_deq_bits_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_ar_bits_lock = bundleOut_0_ar_sink_io_deq_bits_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_ar_bits_prot = bundleOut_0_ar_sink_io_deq_bits_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_ar_bits_qos = bundleOut_0_ar_sink_io_deq_bits_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 38:14]
  assign auto_out_r_ready = bundleIn_0_r_source_io_enq_ready; // @[Nodes.scala 1207:84 AsyncQueue.scala 217:19]
  assign bundleOut_0_ar_sink_clock = clock;
  assign bundleOut_0_ar_sink_reset = reset;
  assign bundleOut_0_ar_sink_io_deq_ready = auto_out_ar_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_ar_sink_io_async_mem_0_id = auto_in_ar_mem_0_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_0_addr = auto_in_ar_mem_0_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_0_len = auto_in_ar_mem_0_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_0_size = auto_in_ar_mem_0_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_0_burst = auto_in_ar_mem_0_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_0_lock = auto_in_ar_mem_0_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_0_cache = auto_in_ar_mem_0_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_0_prot = auto_in_ar_mem_0_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_0_qos = auto_in_ar_mem_0_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_id = auto_in_ar_mem_1_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_addr = auto_in_ar_mem_1_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_len = auto_in_ar_mem_1_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_size = auto_in_ar_mem_1_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_burst = auto_in_ar_mem_1_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_lock = auto_in_ar_mem_1_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_cache = auto_in_ar_mem_1_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_prot = auto_in_ar_mem_1_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_1_qos = auto_in_ar_mem_1_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_id = auto_in_ar_mem_2_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_addr = auto_in_ar_mem_2_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_len = auto_in_ar_mem_2_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_size = auto_in_ar_mem_2_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_burst = auto_in_ar_mem_2_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_lock = auto_in_ar_mem_2_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_cache = auto_in_ar_mem_2_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_prot = auto_in_ar_mem_2_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_2_qos = auto_in_ar_mem_2_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_id = auto_in_ar_mem_3_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_addr = auto_in_ar_mem_3_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_len = auto_in_ar_mem_3_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_size = auto_in_ar_mem_3_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_burst = auto_in_ar_mem_3_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_lock = auto_in_ar_mem_3_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_cache = auto_in_ar_mem_3_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_prot = auto_in_ar_mem_3_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_3_qos = auto_in_ar_mem_3_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_id = auto_in_ar_mem_4_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_addr = auto_in_ar_mem_4_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_len = auto_in_ar_mem_4_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_size = auto_in_ar_mem_4_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_burst = auto_in_ar_mem_4_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_lock = auto_in_ar_mem_4_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_cache = auto_in_ar_mem_4_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_prot = auto_in_ar_mem_4_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_4_qos = auto_in_ar_mem_4_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_id = auto_in_ar_mem_5_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_addr = auto_in_ar_mem_5_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_len = auto_in_ar_mem_5_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_size = auto_in_ar_mem_5_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_burst = auto_in_ar_mem_5_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_lock = auto_in_ar_mem_5_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_cache = auto_in_ar_mem_5_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_prot = auto_in_ar_mem_5_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_5_qos = auto_in_ar_mem_5_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_id = auto_in_ar_mem_6_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_addr = auto_in_ar_mem_6_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_len = auto_in_ar_mem_6_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_size = auto_in_ar_mem_6_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_burst = auto_in_ar_mem_6_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_lock = auto_in_ar_mem_6_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_cache = auto_in_ar_mem_6_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_prot = auto_in_ar_mem_6_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_6_qos = auto_in_ar_mem_6_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_id = auto_in_ar_mem_7_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_addr = auto_in_ar_mem_7_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_len = auto_in_ar_mem_7_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_size = auto_in_ar_mem_7_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_burst = auto_in_ar_mem_7_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_lock = auto_in_ar_mem_7_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_cache = auto_in_ar_mem_7_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_prot = auto_in_ar_mem_7_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_mem_7_qos = auto_in_ar_mem_7_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_widx = auto_in_ar_widx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_safe_widx_valid = auto_in_ar_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_sink_io_async_safe_source_reset_n = auto_in_ar_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_clock = clock;
  assign bundleOut_0_aw_sink_reset = reset;
  assign bundleOut_0_aw_sink_io_deq_ready = auto_out_aw_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_aw_sink_io_async_mem_0_id = auto_in_aw_mem_0_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_0_addr = auto_in_aw_mem_0_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_0_len = auto_in_aw_mem_0_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_0_size = auto_in_aw_mem_0_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_0_burst = auto_in_aw_mem_0_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_0_lock = auto_in_aw_mem_0_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_0_cache = auto_in_aw_mem_0_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_0_prot = auto_in_aw_mem_0_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_0_qos = auto_in_aw_mem_0_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_id = auto_in_aw_mem_1_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_addr = auto_in_aw_mem_1_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_len = auto_in_aw_mem_1_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_size = auto_in_aw_mem_1_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_burst = auto_in_aw_mem_1_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_lock = auto_in_aw_mem_1_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_cache = auto_in_aw_mem_1_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_prot = auto_in_aw_mem_1_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_1_qos = auto_in_aw_mem_1_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_id = auto_in_aw_mem_2_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_addr = auto_in_aw_mem_2_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_len = auto_in_aw_mem_2_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_size = auto_in_aw_mem_2_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_burst = auto_in_aw_mem_2_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_lock = auto_in_aw_mem_2_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_cache = auto_in_aw_mem_2_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_prot = auto_in_aw_mem_2_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_2_qos = auto_in_aw_mem_2_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_id = auto_in_aw_mem_3_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_addr = auto_in_aw_mem_3_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_len = auto_in_aw_mem_3_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_size = auto_in_aw_mem_3_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_burst = auto_in_aw_mem_3_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_lock = auto_in_aw_mem_3_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_cache = auto_in_aw_mem_3_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_prot = auto_in_aw_mem_3_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_3_qos = auto_in_aw_mem_3_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_id = auto_in_aw_mem_4_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_addr = auto_in_aw_mem_4_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_len = auto_in_aw_mem_4_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_size = auto_in_aw_mem_4_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_burst = auto_in_aw_mem_4_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_lock = auto_in_aw_mem_4_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_cache = auto_in_aw_mem_4_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_prot = auto_in_aw_mem_4_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_4_qos = auto_in_aw_mem_4_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_id = auto_in_aw_mem_5_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_addr = auto_in_aw_mem_5_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_len = auto_in_aw_mem_5_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_size = auto_in_aw_mem_5_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_burst = auto_in_aw_mem_5_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_lock = auto_in_aw_mem_5_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_cache = auto_in_aw_mem_5_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_prot = auto_in_aw_mem_5_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_5_qos = auto_in_aw_mem_5_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_id = auto_in_aw_mem_6_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_addr = auto_in_aw_mem_6_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_len = auto_in_aw_mem_6_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_size = auto_in_aw_mem_6_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_burst = auto_in_aw_mem_6_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_lock = auto_in_aw_mem_6_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_cache = auto_in_aw_mem_6_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_prot = auto_in_aw_mem_6_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_6_qos = auto_in_aw_mem_6_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_id = auto_in_aw_mem_7_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_addr = auto_in_aw_mem_7_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_len = auto_in_aw_mem_7_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_size = auto_in_aw_mem_7_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_burst = auto_in_aw_mem_7_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_lock = auto_in_aw_mem_7_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_cache = auto_in_aw_mem_7_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_prot = auto_in_aw_mem_7_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_mem_7_qos = auto_in_aw_mem_7_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_widx = auto_in_aw_widx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_safe_widx_valid = auto_in_aw_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_sink_io_async_safe_source_reset_n = auto_in_aw_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_clock = clock;
  assign bundleOut_0_w_sink_reset = reset;
  assign bundleOut_0_w_sink_io_deq_ready = auto_out_w_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_w_sink_io_async_mem_0_data = auto_in_w_mem_0_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_0_strb = auto_in_w_mem_0_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_0_last = auto_in_w_mem_0_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_1_data = auto_in_w_mem_1_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_1_strb = auto_in_w_mem_1_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_1_last = auto_in_w_mem_1_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_2_data = auto_in_w_mem_2_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_2_strb = auto_in_w_mem_2_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_2_last = auto_in_w_mem_2_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_3_data = auto_in_w_mem_3_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_3_strb = auto_in_w_mem_3_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_3_last = auto_in_w_mem_3_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_4_data = auto_in_w_mem_4_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_4_strb = auto_in_w_mem_4_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_4_last = auto_in_w_mem_4_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_5_data = auto_in_w_mem_5_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_5_strb = auto_in_w_mem_5_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_5_last = auto_in_w_mem_5_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_6_data = auto_in_w_mem_6_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_6_strb = auto_in_w_mem_6_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_6_last = auto_in_w_mem_6_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_7_data = auto_in_w_mem_7_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_7_strb = auto_in_w_mem_7_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_mem_7_last = auto_in_w_mem_7_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_widx = auto_in_w_widx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_safe_widx_valid = auto_in_w_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_sink_io_async_safe_source_reset_n = auto_in_w_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_r_source_clock = clock;
  assign bundleIn_0_r_source_reset = reset;
  assign bundleIn_0_r_source_io_enq_valid = auto_out_r_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_source_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_source_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_source_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_source_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_source_io_async_ridx = auto_in_r_ridx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_r_source_io_async_safe_ridx_valid = auto_in_r_safe_ridx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_r_source_io_async_safe_sink_reset_n = auto_in_r_safe_sink_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_b_source_clock = clock;
  assign bundleIn_0_b_source_reset = reset;
  assign bundleIn_0_b_source_io_enq_valid = auto_out_b_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_source_io_enq_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_source_io_enq_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_source_io_async_ridx = auto_in_b_ridx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_b_source_io_async_safe_ridx_valid = auto_in_b_safe_ridx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_b_source_io_async_safe_sink_reset_n = auto_in_b_safe_sink_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule
module XilinxVCU118MIGIsland_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_0_id,
  input  [31:0] auto_axi4in_xing_in_aw_mem_0_addr,
  input  [7:0]  auto_axi4in_xing_in_aw_mem_0_len,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_0_size,
  input  [1:0]  auto_axi4in_xing_in_aw_mem_0_burst,
  input         auto_axi4in_xing_in_aw_mem_0_lock,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_0_cache,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_0_prot,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_0_qos,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_1_id,
  input  [31:0] auto_axi4in_xing_in_aw_mem_1_addr,
  input  [7:0]  auto_axi4in_xing_in_aw_mem_1_len,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_1_size,
  input  [1:0]  auto_axi4in_xing_in_aw_mem_1_burst,
  input         auto_axi4in_xing_in_aw_mem_1_lock,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_1_cache,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_1_prot,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_1_qos,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_2_id,
  input  [31:0] auto_axi4in_xing_in_aw_mem_2_addr,
  input  [7:0]  auto_axi4in_xing_in_aw_mem_2_len,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_2_size,
  input  [1:0]  auto_axi4in_xing_in_aw_mem_2_burst,
  input         auto_axi4in_xing_in_aw_mem_2_lock,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_2_cache,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_2_prot,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_2_qos,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_3_id,
  input  [31:0] auto_axi4in_xing_in_aw_mem_3_addr,
  input  [7:0]  auto_axi4in_xing_in_aw_mem_3_len,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_3_size,
  input  [1:0]  auto_axi4in_xing_in_aw_mem_3_burst,
  input         auto_axi4in_xing_in_aw_mem_3_lock,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_3_cache,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_3_prot,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_3_qos,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_4_id,
  input  [31:0] auto_axi4in_xing_in_aw_mem_4_addr,
  input  [7:0]  auto_axi4in_xing_in_aw_mem_4_len,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_4_size,
  input  [1:0]  auto_axi4in_xing_in_aw_mem_4_burst,
  input         auto_axi4in_xing_in_aw_mem_4_lock,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_4_cache,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_4_prot,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_4_qos,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_5_id,
  input  [31:0] auto_axi4in_xing_in_aw_mem_5_addr,
  input  [7:0]  auto_axi4in_xing_in_aw_mem_5_len,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_5_size,
  input  [1:0]  auto_axi4in_xing_in_aw_mem_5_burst,
  input         auto_axi4in_xing_in_aw_mem_5_lock,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_5_cache,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_5_prot,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_5_qos,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_6_id,
  input  [31:0] auto_axi4in_xing_in_aw_mem_6_addr,
  input  [7:0]  auto_axi4in_xing_in_aw_mem_6_len,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_6_size,
  input  [1:0]  auto_axi4in_xing_in_aw_mem_6_burst,
  input         auto_axi4in_xing_in_aw_mem_6_lock,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_6_cache,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_6_prot,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_6_qos,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_7_id,
  input  [31:0] auto_axi4in_xing_in_aw_mem_7_addr,
  input  [7:0]  auto_axi4in_xing_in_aw_mem_7_len,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_7_size,
  input  [1:0]  auto_axi4in_xing_in_aw_mem_7_burst,
  input         auto_axi4in_xing_in_aw_mem_7_lock,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_7_cache,
  input  [2:0]  auto_axi4in_xing_in_aw_mem_7_prot,
  input  [3:0]  auto_axi4in_xing_in_aw_mem_7_qos,
  output [3:0]  auto_axi4in_xing_in_aw_ridx,
  input  [3:0]  auto_axi4in_xing_in_aw_widx,
  output        auto_axi4in_xing_in_aw_safe_ridx_valid,
  input         auto_axi4in_xing_in_aw_safe_widx_valid,
  input         auto_axi4in_xing_in_aw_safe_source_reset_n,
  output        auto_axi4in_xing_in_aw_safe_sink_reset_n,
  input  [63:0] auto_axi4in_xing_in_w_mem_0_data,
  input  [7:0]  auto_axi4in_xing_in_w_mem_0_strb,
  input         auto_axi4in_xing_in_w_mem_0_last,
  input  [63:0] auto_axi4in_xing_in_w_mem_1_data,
  input  [7:0]  auto_axi4in_xing_in_w_mem_1_strb,
  input         auto_axi4in_xing_in_w_mem_1_last,
  input  [63:0] auto_axi4in_xing_in_w_mem_2_data,
  input  [7:0]  auto_axi4in_xing_in_w_mem_2_strb,
  input         auto_axi4in_xing_in_w_mem_2_last,
  input  [63:0] auto_axi4in_xing_in_w_mem_3_data,
  input  [7:0]  auto_axi4in_xing_in_w_mem_3_strb,
  input         auto_axi4in_xing_in_w_mem_3_last,
  input  [63:0] auto_axi4in_xing_in_w_mem_4_data,
  input  [7:0]  auto_axi4in_xing_in_w_mem_4_strb,
  input         auto_axi4in_xing_in_w_mem_4_last,
  input  [63:0] auto_axi4in_xing_in_w_mem_5_data,
  input  [7:0]  auto_axi4in_xing_in_w_mem_5_strb,
  input         auto_axi4in_xing_in_w_mem_5_last,
  input  [63:0] auto_axi4in_xing_in_w_mem_6_data,
  input  [7:0]  auto_axi4in_xing_in_w_mem_6_strb,
  input         auto_axi4in_xing_in_w_mem_6_last,
  input  [63:0] auto_axi4in_xing_in_w_mem_7_data,
  input  [7:0]  auto_axi4in_xing_in_w_mem_7_strb,
  input         auto_axi4in_xing_in_w_mem_7_last,
  output [3:0]  auto_axi4in_xing_in_w_ridx,
  input  [3:0]  auto_axi4in_xing_in_w_widx,
  output        auto_axi4in_xing_in_w_safe_ridx_valid,
  input         auto_axi4in_xing_in_w_safe_widx_valid,
  input         auto_axi4in_xing_in_w_safe_source_reset_n,
  output        auto_axi4in_xing_in_w_safe_sink_reset_n,
  output [3:0]  auto_axi4in_xing_in_b_mem_0_id,
  output [1:0]  auto_axi4in_xing_in_b_mem_0_resp,
  output [3:0]  auto_axi4in_xing_in_b_mem_1_id,
  output [1:0]  auto_axi4in_xing_in_b_mem_1_resp,
  output [3:0]  auto_axi4in_xing_in_b_mem_2_id,
  output [1:0]  auto_axi4in_xing_in_b_mem_2_resp,
  output [3:0]  auto_axi4in_xing_in_b_mem_3_id,
  output [1:0]  auto_axi4in_xing_in_b_mem_3_resp,
  output [3:0]  auto_axi4in_xing_in_b_mem_4_id,
  output [1:0]  auto_axi4in_xing_in_b_mem_4_resp,
  output [3:0]  auto_axi4in_xing_in_b_mem_5_id,
  output [1:0]  auto_axi4in_xing_in_b_mem_5_resp,
  output [3:0]  auto_axi4in_xing_in_b_mem_6_id,
  output [1:0]  auto_axi4in_xing_in_b_mem_6_resp,
  output [3:0]  auto_axi4in_xing_in_b_mem_7_id,
  output [1:0]  auto_axi4in_xing_in_b_mem_7_resp,
  input  [3:0]  auto_axi4in_xing_in_b_ridx,
  output [3:0]  auto_axi4in_xing_in_b_widx,
  input         auto_axi4in_xing_in_b_safe_ridx_valid,
  output        auto_axi4in_xing_in_b_safe_widx_valid,
  output        auto_axi4in_xing_in_b_safe_source_reset_n,
  input         auto_axi4in_xing_in_b_safe_sink_reset_n,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_0_id,
  input  [31:0] auto_axi4in_xing_in_ar_mem_0_addr,
  input  [7:0]  auto_axi4in_xing_in_ar_mem_0_len,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_0_size,
  input  [1:0]  auto_axi4in_xing_in_ar_mem_0_burst,
  input         auto_axi4in_xing_in_ar_mem_0_lock,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_0_cache,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_0_prot,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_0_qos,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_1_id,
  input  [31:0] auto_axi4in_xing_in_ar_mem_1_addr,
  input  [7:0]  auto_axi4in_xing_in_ar_mem_1_len,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_1_size,
  input  [1:0]  auto_axi4in_xing_in_ar_mem_1_burst,
  input         auto_axi4in_xing_in_ar_mem_1_lock,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_1_cache,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_1_prot,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_1_qos,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_2_id,
  input  [31:0] auto_axi4in_xing_in_ar_mem_2_addr,
  input  [7:0]  auto_axi4in_xing_in_ar_mem_2_len,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_2_size,
  input  [1:0]  auto_axi4in_xing_in_ar_mem_2_burst,
  input         auto_axi4in_xing_in_ar_mem_2_lock,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_2_cache,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_2_prot,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_2_qos,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_3_id,
  input  [31:0] auto_axi4in_xing_in_ar_mem_3_addr,
  input  [7:0]  auto_axi4in_xing_in_ar_mem_3_len,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_3_size,
  input  [1:0]  auto_axi4in_xing_in_ar_mem_3_burst,
  input         auto_axi4in_xing_in_ar_mem_3_lock,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_3_cache,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_3_prot,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_3_qos,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_4_id,
  input  [31:0] auto_axi4in_xing_in_ar_mem_4_addr,
  input  [7:0]  auto_axi4in_xing_in_ar_mem_4_len,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_4_size,
  input  [1:0]  auto_axi4in_xing_in_ar_mem_4_burst,
  input         auto_axi4in_xing_in_ar_mem_4_lock,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_4_cache,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_4_prot,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_4_qos,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_5_id,
  input  [31:0] auto_axi4in_xing_in_ar_mem_5_addr,
  input  [7:0]  auto_axi4in_xing_in_ar_mem_5_len,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_5_size,
  input  [1:0]  auto_axi4in_xing_in_ar_mem_5_burst,
  input         auto_axi4in_xing_in_ar_mem_5_lock,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_5_cache,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_5_prot,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_5_qos,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_6_id,
  input  [31:0] auto_axi4in_xing_in_ar_mem_6_addr,
  input  [7:0]  auto_axi4in_xing_in_ar_mem_6_len,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_6_size,
  input  [1:0]  auto_axi4in_xing_in_ar_mem_6_burst,
  input         auto_axi4in_xing_in_ar_mem_6_lock,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_6_cache,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_6_prot,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_6_qos,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_7_id,
  input  [31:0] auto_axi4in_xing_in_ar_mem_7_addr,
  input  [7:0]  auto_axi4in_xing_in_ar_mem_7_len,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_7_size,
  input  [1:0]  auto_axi4in_xing_in_ar_mem_7_burst,
  input         auto_axi4in_xing_in_ar_mem_7_lock,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_7_cache,
  input  [2:0]  auto_axi4in_xing_in_ar_mem_7_prot,
  input  [3:0]  auto_axi4in_xing_in_ar_mem_7_qos,
  output [3:0]  auto_axi4in_xing_in_ar_ridx,
  input  [3:0]  auto_axi4in_xing_in_ar_widx,
  output        auto_axi4in_xing_in_ar_safe_ridx_valid,
  input         auto_axi4in_xing_in_ar_safe_widx_valid,
  input         auto_axi4in_xing_in_ar_safe_source_reset_n,
  output        auto_axi4in_xing_in_ar_safe_sink_reset_n,
  output [3:0]  auto_axi4in_xing_in_r_mem_0_id,
  output [63:0] auto_axi4in_xing_in_r_mem_0_data,
  output [1:0]  auto_axi4in_xing_in_r_mem_0_resp,
  output        auto_axi4in_xing_in_r_mem_0_last,
  output [3:0]  auto_axi4in_xing_in_r_mem_1_id,
  output [63:0] auto_axi4in_xing_in_r_mem_1_data,
  output [1:0]  auto_axi4in_xing_in_r_mem_1_resp,
  output        auto_axi4in_xing_in_r_mem_1_last,
  output [3:0]  auto_axi4in_xing_in_r_mem_2_id,
  output [63:0] auto_axi4in_xing_in_r_mem_2_data,
  output [1:0]  auto_axi4in_xing_in_r_mem_2_resp,
  output        auto_axi4in_xing_in_r_mem_2_last,
  output [3:0]  auto_axi4in_xing_in_r_mem_3_id,
  output [63:0] auto_axi4in_xing_in_r_mem_3_data,
  output [1:0]  auto_axi4in_xing_in_r_mem_3_resp,
  output        auto_axi4in_xing_in_r_mem_3_last,
  output [3:0]  auto_axi4in_xing_in_r_mem_4_id,
  output [63:0] auto_axi4in_xing_in_r_mem_4_data,
  output [1:0]  auto_axi4in_xing_in_r_mem_4_resp,
  output        auto_axi4in_xing_in_r_mem_4_last,
  output [3:0]  auto_axi4in_xing_in_r_mem_5_id,
  output [63:0] auto_axi4in_xing_in_r_mem_5_data,
  output [1:0]  auto_axi4in_xing_in_r_mem_5_resp,
  output        auto_axi4in_xing_in_r_mem_5_last,
  output [3:0]  auto_axi4in_xing_in_r_mem_6_id,
  output [63:0] auto_axi4in_xing_in_r_mem_6_data,
  output [1:0]  auto_axi4in_xing_in_r_mem_6_resp,
  output        auto_axi4in_xing_in_r_mem_6_last,
  output [3:0]  auto_axi4in_xing_in_r_mem_7_id,
  output [63:0] auto_axi4in_xing_in_r_mem_7_data,
  output [1:0]  auto_axi4in_xing_in_r_mem_7_resp,
  output        auto_axi4in_xing_in_r_mem_7_last,
  input  [3:0]  auto_axi4in_xing_in_r_ridx,
  output [3:0]  auto_axi4in_xing_in_r_widx,
  input         auto_axi4in_xing_in_r_safe_ridx_valid,
  output        auto_axi4in_xing_in_r_safe_widx_valid,
  output        auto_axi4in_xing_in_r_safe_source_reset_n,
  input         auto_axi4in_xing_in_r_safe_sink_reset_n,
  output [16:0] io_port_c0_ddr4_adr,
  output        io_port_c0_ddr4_bg,
  output [1:0]  io_port_c0_ddr4_ba,
  output        io_port_c0_ddr4_reset_n,
  output        io_port_c0_ddr4_act_n,
  output        io_port_c0_ddr4_ck_c,
  output        io_port_c0_ddr4_ck_t,
  output        io_port_c0_ddr4_cke,
  output        io_port_c0_ddr4_cs_n,
  output        io_port_c0_ddr4_odt,
  inout  [63:0] io_port_c0_ddr4_dq,
  inout  [7:0]  io_port_c0_ddr4_dqs_c,
  inout  [7:0]  io_port_c0_ddr4_dqs_t,
  inout  [7:0]  io_port_c0_ddr4_dm_dbi_n,
  input         io_port_c0_sys_clk_i,
  output        io_port_c0_ddr4_ui_clk,
  output        io_port_c0_ddr4_ui_clk_sync_rst,
  input         io_port_c0_ddr4_aresetn,
  input         io_port_sys_rst
);
  wire  axi4asink_clock; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_reset; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_0_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_aw_mem_0_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_aw_mem_0_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_0_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_aw_mem_0_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_mem_0_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_0_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_0_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_0_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_1_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_aw_mem_1_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_aw_mem_1_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_1_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_aw_mem_1_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_mem_1_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_1_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_1_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_1_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_2_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_aw_mem_2_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_aw_mem_2_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_2_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_aw_mem_2_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_mem_2_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_2_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_2_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_2_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_3_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_aw_mem_3_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_aw_mem_3_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_3_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_aw_mem_3_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_mem_3_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_3_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_3_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_3_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_4_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_aw_mem_4_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_aw_mem_4_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_4_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_aw_mem_4_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_mem_4_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_4_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_4_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_4_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_5_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_aw_mem_5_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_aw_mem_5_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_5_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_aw_mem_5_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_mem_5_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_5_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_5_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_5_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_6_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_aw_mem_6_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_aw_mem_6_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_6_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_aw_mem_6_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_mem_6_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_6_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_6_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_6_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_7_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_aw_mem_7_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_aw_mem_7_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_7_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_aw_mem_7_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_mem_7_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_7_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_aw_mem_7_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_mem_7_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_ridx; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_aw_widx; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_safe_ridx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_safe_widx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_safe_source_reset_n; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_aw_safe_sink_reset_n; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_w_mem_0_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_w_mem_0_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_mem_0_last; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_w_mem_1_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_w_mem_1_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_mem_1_last; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_w_mem_2_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_w_mem_2_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_mem_2_last; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_w_mem_3_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_w_mem_3_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_mem_3_last; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_w_mem_4_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_w_mem_4_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_mem_4_last; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_w_mem_5_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_w_mem_5_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_mem_5_last; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_w_mem_6_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_w_mem_6_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_mem_6_last; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_w_mem_7_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_w_mem_7_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_mem_7_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_w_ridx; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_w_widx; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_safe_ridx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_safe_widx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_safe_source_reset_n; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_w_safe_sink_reset_n; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_mem_0_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_b_mem_0_resp; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_mem_1_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_b_mem_1_resp; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_mem_2_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_b_mem_2_resp; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_mem_3_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_b_mem_3_resp; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_mem_4_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_b_mem_4_resp; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_mem_5_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_b_mem_5_resp; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_mem_6_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_b_mem_6_resp; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_mem_7_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_b_mem_7_resp; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_ridx; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_b_widx; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_b_safe_ridx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_b_safe_widx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_b_safe_source_reset_n; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_b_safe_sink_reset_n; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_0_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_ar_mem_0_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_ar_mem_0_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_0_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_ar_mem_0_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_mem_0_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_0_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_0_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_0_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_1_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_ar_mem_1_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_ar_mem_1_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_1_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_ar_mem_1_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_mem_1_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_1_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_1_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_1_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_2_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_ar_mem_2_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_ar_mem_2_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_2_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_ar_mem_2_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_mem_2_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_2_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_2_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_2_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_3_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_ar_mem_3_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_ar_mem_3_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_3_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_ar_mem_3_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_mem_3_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_3_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_3_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_3_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_4_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_ar_mem_4_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_ar_mem_4_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_4_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_ar_mem_4_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_mem_4_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_4_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_4_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_4_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_5_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_ar_mem_5_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_ar_mem_5_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_5_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_ar_mem_5_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_mem_5_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_5_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_5_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_5_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_6_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_ar_mem_6_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_ar_mem_6_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_6_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_ar_mem_6_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_mem_6_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_6_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_6_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_6_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_7_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_in_ar_mem_7_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_in_ar_mem_7_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_7_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_ar_mem_7_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_mem_7_lock; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_7_cache; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_in_ar_mem_7_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_mem_7_qos; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_ridx; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_ar_widx; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_safe_ridx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_safe_widx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_safe_source_reset_n; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_ar_safe_sink_reset_n; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_mem_0_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_r_mem_0_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_r_mem_0_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_mem_0_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_mem_1_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_r_mem_1_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_r_mem_1_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_mem_1_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_mem_2_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_r_mem_2_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_r_mem_2_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_mem_2_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_mem_3_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_r_mem_3_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_r_mem_3_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_mem_3_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_mem_4_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_r_mem_4_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_r_mem_4_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_mem_4_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_mem_5_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_r_mem_5_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_r_mem_5_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_mem_5_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_mem_6_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_r_mem_6_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_r_mem_6_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_mem_6_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_mem_7_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_in_r_mem_7_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_in_r_mem_7_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_mem_7_last; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_ridx; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_in_r_widx; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_safe_ridx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_safe_widx_valid; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_safe_source_reset_n; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_in_r_safe_sink_reset_n; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_aw_ready; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_aw_valid; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_out_aw_bits_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_out_aw_bits_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_out_aw_bits_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_out_aw_bits_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_out_aw_bits_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_aw_bits_lock; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_out_aw_bits_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_out_aw_bits_qos; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_w_ready; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_w_valid; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_out_w_bits_data; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_out_w_bits_strb; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_w_bits_last; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_b_ready; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_b_valid; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_out_b_bits_id; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_out_b_bits_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_ar_ready; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_ar_valid; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_out_ar_bits_id; // @[AsyncCrossing.scala 60:31]
  wire [31:0] axi4asink_auto_out_ar_bits_addr; // @[AsyncCrossing.scala 60:31]
  wire [7:0] axi4asink_auto_out_ar_bits_len; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_out_ar_bits_size; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_out_ar_bits_burst; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_ar_bits_lock; // @[AsyncCrossing.scala 60:31]
  wire [2:0] axi4asink_auto_out_ar_bits_prot; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_out_ar_bits_qos; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_r_ready; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_r_valid; // @[AsyncCrossing.scala 60:31]
  wire [3:0] axi4asink_auto_out_r_bits_id; // @[AsyncCrossing.scala 60:31]
  wire [63:0] axi4asink_auto_out_r_bits_data; // @[AsyncCrossing.scala 60:31]
  wire [1:0] axi4asink_auto_out_r_bits_resp; // @[AsyncCrossing.scala 60:31]
  wire  axi4asink_auto_out_r_bits_last; // @[AsyncCrossing.scala 60:31]
  wire [16:0] blackbox_c0_ddr4_adr; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_bg; // @[XilinxVCU118MIG.scala 51:26]
  wire [1:0] blackbox_c0_ddr4_ba; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_reset_n; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_act_n; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_ck_c; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_ck_t; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_cke; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_cs_n; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_odt; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_sys_clk_i; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_ui_clk; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_ui_clk_sync_rst; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_aresetn; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_init_calib_complete; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_sys_rst; // @[XilinxVCU118MIG.scala 51:26]
  wire [3:0] blackbox_c0_ddr4_s_axi_awid; // @[XilinxVCU118MIG.scala 51:26]
  wire [30:0] blackbox_c0_ddr4_s_axi_awaddr; // @[XilinxVCU118MIG.scala 51:26]
  wire [7:0] blackbox_c0_ddr4_s_axi_awlen; // @[XilinxVCU118MIG.scala 51:26]
  wire [2:0] blackbox_c0_ddr4_s_axi_awsize; // @[XilinxVCU118MIG.scala 51:26]
  wire [1:0] blackbox_c0_ddr4_s_axi_awburst; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_awlock; // @[XilinxVCU118MIG.scala 51:26]
  wire [3:0] blackbox_c0_ddr4_s_axi_awcache; // @[XilinxVCU118MIG.scala 51:26]
  wire [2:0] blackbox_c0_ddr4_s_axi_awprot; // @[XilinxVCU118MIG.scala 51:26]
  wire [3:0] blackbox_c0_ddr4_s_axi_awqos; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_awvalid; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_awready; // @[XilinxVCU118MIG.scala 51:26]
  wire [63:0] blackbox_c0_ddr4_s_axi_wdata; // @[XilinxVCU118MIG.scala 51:26]
  wire [7:0] blackbox_c0_ddr4_s_axi_wstrb; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_wlast; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_wvalid; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_wready; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_bready; // @[XilinxVCU118MIG.scala 51:26]
  wire [3:0] blackbox_c0_ddr4_s_axi_bid; // @[XilinxVCU118MIG.scala 51:26]
  wire [1:0] blackbox_c0_ddr4_s_axi_bresp; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_bvalid; // @[XilinxVCU118MIG.scala 51:26]
  wire [3:0] blackbox_c0_ddr4_s_axi_arid; // @[XilinxVCU118MIG.scala 51:26]
  wire [30:0] blackbox_c0_ddr4_s_axi_araddr; // @[XilinxVCU118MIG.scala 51:26]
  wire [7:0] blackbox_c0_ddr4_s_axi_arlen; // @[XilinxVCU118MIG.scala 51:26]
  wire [2:0] blackbox_c0_ddr4_s_axi_arsize; // @[XilinxVCU118MIG.scala 51:26]
  wire [1:0] blackbox_c0_ddr4_s_axi_arburst; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_arlock; // @[XilinxVCU118MIG.scala 51:26]
  wire [3:0] blackbox_c0_ddr4_s_axi_arcache; // @[XilinxVCU118MIG.scala 51:26]
  wire [2:0] blackbox_c0_ddr4_s_axi_arprot; // @[XilinxVCU118MIG.scala 51:26]
  wire [3:0] blackbox_c0_ddr4_s_axi_arqos; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_arvalid; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_arready; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_rready; // @[XilinxVCU118MIG.scala 51:26]
  wire [3:0] blackbox_c0_ddr4_s_axi_rid; // @[XilinxVCU118MIG.scala 51:26]
  wire [63:0] blackbox_c0_ddr4_s_axi_rdata; // @[XilinxVCU118MIG.scala 51:26]
  wire [1:0] blackbox_c0_ddr4_s_axi_rresp; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_rlast; // @[XilinxVCU118MIG.scala 51:26]
  wire  blackbox_c0_ddr4_s_axi_rvalid; // @[XilinxVCU118MIG.scala 51:26]
  wire [31:0] axi_async_aw_bits_addr = axi4asink_auto_out_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  wire [31:0] awaddr = axi_async_aw_bits_addr - 32'h80000000; // @[XilinxVCU118MIG.scala 82:41]
  wire [31:0] axi_async_ar_bits_addr = axi4asink_auto_out_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  wire [31:0] araddr = axi_async_ar_bits_addr - 32'h80000000; // @[XilinxVCU118MIG.scala 83:41]
  AXI4AsyncCrossingSink_inVCU118FPGATestHarness axi4asink ( // @[AsyncCrossing.scala 60:31]
    .clock(axi4asink_clock),
    .reset(axi4asink_reset),
    .auto_in_aw_mem_0_id(axi4asink_auto_in_aw_mem_0_id),
    .auto_in_aw_mem_0_addr(axi4asink_auto_in_aw_mem_0_addr),
    .auto_in_aw_mem_0_len(axi4asink_auto_in_aw_mem_0_len),
    .auto_in_aw_mem_0_size(axi4asink_auto_in_aw_mem_0_size),
    .auto_in_aw_mem_0_burst(axi4asink_auto_in_aw_mem_0_burst),
    .auto_in_aw_mem_0_lock(axi4asink_auto_in_aw_mem_0_lock),
    .auto_in_aw_mem_0_cache(axi4asink_auto_in_aw_mem_0_cache),
    .auto_in_aw_mem_0_prot(axi4asink_auto_in_aw_mem_0_prot),
    .auto_in_aw_mem_0_qos(axi4asink_auto_in_aw_mem_0_qos),
    .auto_in_aw_mem_1_id(axi4asink_auto_in_aw_mem_1_id),
    .auto_in_aw_mem_1_addr(axi4asink_auto_in_aw_mem_1_addr),
    .auto_in_aw_mem_1_len(axi4asink_auto_in_aw_mem_1_len),
    .auto_in_aw_mem_1_size(axi4asink_auto_in_aw_mem_1_size),
    .auto_in_aw_mem_1_burst(axi4asink_auto_in_aw_mem_1_burst),
    .auto_in_aw_mem_1_lock(axi4asink_auto_in_aw_mem_1_lock),
    .auto_in_aw_mem_1_cache(axi4asink_auto_in_aw_mem_1_cache),
    .auto_in_aw_mem_1_prot(axi4asink_auto_in_aw_mem_1_prot),
    .auto_in_aw_mem_1_qos(axi4asink_auto_in_aw_mem_1_qos),
    .auto_in_aw_mem_2_id(axi4asink_auto_in_aw_mem_2_id),
    .auto_in_aw_mem_2_addr(axi4asink_auto_in_aw_mem_2_addr),
    .auto_in_aw_mem_2_len(axi4asink_auto_in_aw_mem_2_len),
    .auto_in_aw_mem_2_size(axi4asink_auto_in_aw_mem_2_size),
    .auto_in_aw_mem_2_burst(axi4asink_auto_in_aw_mem_2_burst),
    .auto_in_aw_mem_2_lock(axi4asink_auto_in_aw_mem_2_lock),
    .auto_in_aw_mem_2_cache(axi4asink_auto_in_aw_mem_2_cache),
    .auto_in_aw_mem_2_prot(axi4asink_auto_in_aw_mem_2_prot),
    .auto_in_aw_mem_2_qos(axi4asink_auto_in_aw_mem_2_qos),
    .auto_in_aw_mem_3_id(axi4asink_auto_in_aw_mem_3_id),
    .auto_in_aw_mem_3_addr(axi4asink_auto_in_aw_mem_3_addr),
    .auto_in_aw_mem_3_len(axi4asink_auto_in_aw_mem_3_len),
    .auto_in_aw_mem_3_size(axi4asink_auto_in_aw_mem_3_size),
    .auto_in_aw_mem_3_burst(axi4asink_auto_in_aw_mem_3_burst),
    .auto_in_aw_mem_3_lock(axi4asink_auto_in_aw_mem_3_lock),
    .auto_in_aw_mem_3_cache(axi4asink_auto_in_aw_mem_3_cache),
    .auto_in_aw_mem_3_prot(axi4asink_auto_in_aw_mem_3_prot),
    .auto_in_aw_mem_3_qos(axi4asink_auto_in_aw_mem_3_qos),
    .auto_in_aw_mem_4_id(axi4asink_auto_in_aw_mem_4_id),
    .auto_in_aw_mem_4_addr(axi4asink_auto_in_aw_mem_4_addr),
    .auto_in_aw_mem_4_len(axi4asink_auto_in_aw_mem_4_len),
    .auto_in_aw_mem_4_size(axi4asink_auto_in_aw_mem_4_size),
    .auto_in_aw_mem_4_burst(axi4asink_auto_in_aw_mem_4_burst),
    .auto_in_aw_mem_4_lock(axi4asink_auto_in_aw_mem_4_lock),
    .auto_in_aw_mem_4_cache(axi4asink_auto_in_aw_mem_4_cache),
    .auto_in_aw_mem_4_prot(axi4asink_auto_in_aw_mem_4_prot),
    .auto_in_aw_mem_4_qos(axi4asink_auto_in_aw_mem_4_qos),
    .auto_in_aw_mem_5_id(axi4asink_auto_in_aw_mem_5_id),
    .auto_in_aw_mem_5_addr(axi4asink_auto_in_aw_mem_5_addr),
    .auto_in_aw_mem_5_len(axi4asink_auto_in_aw_mem_5_len),
    .auto_in_aw_mem_5_size(axi4asink_auto_in_aw_mem_5_size),
    .auto_in_aw_mem_5_burst(axi4asink_auto_in_aw_mem_5_burst),
    .auto_in_aw_mem_5_lock(axi4asink_auto_in_aw_mem_5_lock),
    .auto_in_aw_mem_5_cache(axi4asink_auto_in_aw_mem_5_cache),
    .auto_in_aw_mem_5_prot(axi4asink_auto_in_aw_mem_5_prot),
    .auto_in_aw_mem_5_qos(axi4asink_auto_in_aw_mem_5_qos),
    .auto_in_aw_mem_6_id(axi4asink_auto_in_aw_mem_6_id),
    .auto_in_aw_mem_6_addr(axi4asink_auto_in_aw_mem_6_addr),
    .auto_in_aw_mem_6_len(axi4asink_auto_in_aw_mem_6_len),
    .auto_in_aw_mem_6_size(axi4asink_auto_in_aw_mem_6_size),
    .auto_in_aw_mem_6_burst(axi4asink_auto_in_aw_mem_6_burst),
    .auto_in_aw_mem_6_lock(axi4asink_auto_in_aw_mem_6_lock),
    .auto_in_aw_mem_6_cache(axi4asink_auto_in_aw_mem_6_cache),
    .auto_in_aw_mem_6_prot(axi4asink_auto_in_aw_mem_6_prot),
    .auto_in_aw_mem_6_qos(axi4asink_auto_in_aw_mem_6_qos),
    .auto_in_aw_mem_7_id(axi4asink_auto_in_aw_mem_7_id),
    .auto_in_aw_mem_7_addr(axi4asink_auto_in_aw_mem_7_addr),
    .auto_in_aw_mem_7_len(axi4asink_auto_in_aw_mem_7_len),
    .auto_in_aw_mem_7_size(axi4asink_auto_in_aw_mem_7_size),
    .auto_in_aw_mem_7_burst(axi4asink_auto_in_aw_mem_7_burst),
    .auto_in_aw_mem_7_lock(axi4asink_auto_in_aw_mem_7_lock),
    .auto_in_aw_mem_7_cache(axi4asink_auto_in_aw_mem_7_cache),
    .auto_in_aw_mem_7_prot(axi4asink_auto_in_aw_mem_7_prot),
    .auto_in_aw_mem_7_qos(axi4asink_auto_in_aw_mem_7_qos),
    .auto_in_aw_ridx(axi4asink_auto_in_aw_ridx),
    .auto_in_aw_widx(axi4asink_auto_in_aw_widx),
    .auto_in_aw_safe_ridx_valid(axi4asink_auto_in_aw_safe_ridx_valid),
    .auto_in_aw_safe_widx_valid(axi4asink_auto_in_aw_safe_widx_valid),
    .auto_in_aw_safe_source_reset_n(axi4asink_auto_in_aw_safe_source_reset_n),
    .auto_in_aw_safe_sink_reset_n(axi4asink_auto_in_aw_safe_sink_reset_n),
    .auto_in_w_mem_0_data(axi4asink_auto_in_w_mem_0_data),
    .auto_in_w_mem_0_strb(axi4asink_auto_in_w_mem_0_strb),
    .auto_in_w_mem_0_last(axi4asink_auto_in_w_mem_0_last),
    .auto_in_w_mem_1_data(axi4asink_auto_in_w_mem_1_data),
    .auto_in_w_mem_1_strb(axi4asink_auto_in_w_mem_1_strb),
    .auto_in_w_mem_1_last(axi4asink_auto_in_w_mem_1_last),
    .auto_in_w_mem_2_data(axi4asink_auto_in_w_mem_2_data),
    .auto_in_w_mem_2_strb(axi4asink_auto_in_w_mem_2_strb),
    .auto_in_w_mem_2_last(axi4asink_auto_in_w_mem_2_last),
    .auto_in_w_mem_3_data(axi4asink_auto_in_w_mem_3_data),
    .auto_in_w_mem_3_strb(axi4asink_auto_in_w_mem_3_strb),
    .auto_in_w_mem_3_last(axi4asink_auto_in_w_mem_3_last),
    .auto_in_w_mem_4_data(axi4asink_auto_in_w_mem_4_data),
    .auto_in_w_mem_4_strb(axi4asink_auto_in_w_mem_4_strb),
    .auto_in_w_mem_4_last(axi4asink_auto_in_w_mem_4_last),
    .auto_in_w_mem_5_data(axi4asink_auto_in_w_mem_5_data),
    .auto_in_w_mem_5_strb(axi4asink_auto_in_w_mem_5_strb),
    .auto_in_w_mem_5_last(axi4asink_auto_in_w_mem_5_last),
    .auto_in_w_mem_6_data(axi4asink_auto_in_w_mem_6_data),
    .auto_in_w_mem_6_strb(axi4asink_auto_in_w_mem_6_strb),
    .auto_in_w_mem_6_last(axi4asink_auto_in_w_mem_6_last),
    .auto_in_w_mem_7_data(axi4asink_auto_in_w_mem_7_data),
    .auto_in_w_mem_7_strb(axi4asink_auto_in_w_mem_7_strb),
    .auto_in_w_mem_7_last(axi4asink_auto_in_w_mem_7_last),
    .auto_in_w_ridx(axi4asink_auto_in_w_ridx),
    .auto_in_w_widx(axi4asink_auto_in_w_widx),
    .auto_in_w_safe_ridx_valid(axi4asink_auto_in_w_safe_ridx_valid),
    .auto_in_w_safe_widx_valid(axi4asink_auto_in_w_safe_widx_valid),
    .auto_in_w_safe_source_reset_n(axi4asink_auto_in_w_safe_source_reset_n),
    .auto_in_w_safe_sink_reset_n(axi4asink_auto_in_w_safe_sink_reset_n),
    .auto_in_b_mem_0_id(axi4asink_auto_in_b_mem_0_id),
    .auto_in_b_mem_0_resp(axi4asink_auto_in_b_mem_0_resp),
    .auto_in_b_mem_1_id(axi4asink_auto_in_b_mem_1_id),
    .auto_in_b_mem_1_resp(axi4asink_auto_in_b_mem_1_resp),
    .auto_in_b_mem_2_id(axi4asink_auto_in_b_mem_2_id),
    .auto_in_b_mem_2_resp(axi4asink_auto_in_b_mem_2_resp),
    .auto_in_b_mem_3_id(axi4asink_auto_in_b_mem_3_id),
    .auto_in_b_mem_3_resp(axi4asink_auto_in_b_mem_3_resp),
    .auto_in_b_mem_4_id(axi4asink_auto_in_b_mem_4_id),
    .auto_in_b_mem_4_resp(axi4asink_auto_in_b_mem_4_resp),
    .auto_in_b_mem_5_id(axi4asink_auto_in_b_mem_5_id),
    .auto_in_b_mem_5_resp(axi4asink_auto_in_b_mem_5_resp),
    .auto_in_b_mem_6_id(axi4asink_auto_in_b_mem_6_id),
    .auto_in_b_mem_6_resp(axi4asink_auto_in_b_mem_6_resp),
    .auto_in_b_mem_7_id(axi4asink_auto_in_b_mem_7_id),
    .auto_in_b_mem_7_resp(axi4asink_auto_in_b_mem_7_resp),
    .auto_in_b_ridx(axi4asink_auto_in_b_ridx),
    .auto_in_b_widx(axi4asink_auto_in_b_widx),
    .auto_in_b_safe_ridx_valid(axi4asink_auto_in_b_safe_ridx_valid),
    .auto_in_b_safe_widx_valid(axi4asink_auto_in_b_safe_widx_valid),
    .auto_in_b_safe_source_reset_n(axi4asink_auto_in_b_safe_source_reset_n),
    .auto_in_b_safe_sink_reset_n(axi4asink_auto_in_b_safe_sink_reset_n),
    .auto_in_ar_mem_0_id(axi4asink_auto_in_ar_mem_0_id),
    .auto_in_ar_mem_0_addr(axi4asink_auto_in_ar_mem_0_addr),
    .auto_in_ar_mem_0_len(axi4asink_auto_in_ar_mem_0_len),
    .auto_in_ar_mem_0_size(axi4asink_auto_in_ar_mem_0_size),
    .auto_in_ar_mem_0_burst(axi4asink_auto_in_ar_mem_0_burst),
    .auto_in_ar_mem_0_lock(axi4asink_auto_in_ar_mem_0_lock),
    .auto_in_ar_mem_0_cache(axi4asink_auto_in_ar_mem_0_cache),
    .auto_in_ar_mem_0_prot(axi4asink_auto_in_ar_mem_0_prot),
    .auto_in_ar_mem_0_qos(axi4asink_auto_in_ar_mem_0_qos),
    .auto_in_ar_mem_1_id(axi4asink_auto_in_ar_mem_1_id),
    .auto_in_ar_mem_1_addr(axi4asink_auto_in_ar_mem_1_addr),
    .auto_in_ar_mem_1_len(axi4asink_auto_in_ar_mem_1_len),
    .auto_in_ar_mem_1_size(axi4asink_auto_in_ar_mem_1_size),
    .auto_in_ar_mem_1_burst(axi4asink_auto_in_ar_mem_1_burst),
    .auto_in_ar_mem_1_lock(axi4asink_auto_in_ar_mem_1_lock),
    .auto_in_ar_mem_1_cache(axi4asink_auto_in_ar_mem_1_cache),
    .auto_in_ar_mem_1_prot(axi4asink_auto_in_ar_mem_1_prot),
    .auto_in_ar_mem_1_qos(axi4asink_auto_in_ar_mem_1_qos),
    .auto_in_ar_mem_2_id(axi4asink_auto_in_ar_mem_2_id),
    .auto_in_ar_mem_2_addr(axi4asink_auto_in_ar_mem_2_addr),
    .auto_in_ar_mem_2_len(axi4asink_auto_in_ar_mem_2_len),
    .auto_in_ar_mem_2_size(axi4asink_auto_in_ar_mem_2_size),
    .auto_in_ar_mem_2_burst(axi4asink_auto_in_ar_mem_2_burst),
    .auto_in_ar_mem_2_lock(axi4asink_auto_in_ar_mem_2_lock),
    .auto_in_ar_mem_2_cache(axi4asink_auto_in_ar_mem_2_cache),
    .auto_in_ar_mem_2_prot(axi4asink_auto_in_ar_mem_2_prot),
    .auto_in_ar_mem_2_qos(axi4asink_auto_in_ar_mem_2_qos),
    .auto_in_ar_mem_3_id(axi4asink_auto_in_ar_mem_3_id),
    .auto_in_ar_mem_3_addr(axi4asink_auto_in_ar_mem_3_addr),
    .auto_in_ar_mem_3_len(axi4asink_auto_in_ar_mem_3_len),
    .auto_in_ar_mem_3_size(axi4asink_auto_in_ar_mem_3_size),
    .auto_in_ar_mem_3_burst(axi4asink_auto_in_ar_mem_3_burst),
    .auto_in_ar_mem_3_lock(axi4asink_auto_in_ar_mem_3_lock),
    .auto_in_ar_mem_3_cache(axi4asink_auto_in_ar_mem_3_cache),
    .auto_in_ar_mem_3_prot(axi4asink_auto_in_ar_mem_3_prot),
    .auto_in_ar_mem_3_qos(axi4asink_auto_in_ar_mem_3_qos),
    .auto_in_ar_mem_4_id(axi4asink_auto_in_ar_mem_4_id),
    .auto_in_ar_mem_4_addr(axi4asink_auto_in_ar_mem_4_addr),
    .auto_in_ar_mem_4_len(axi4asink_auto_in_ar_mem_4_len),
    .auto_in_ar_mem_4_size(axi4asink_auto_in_ar_mem_4_size),
    .auto_in_ar_mem_4_burst(axi4asink_auto_in_ar_mem_4_burst),
    .auto_in_ar_mem_4_lock(axi4asink_auto_in_ar_mem_4_lock),
    .auto_in_ar_mem_4_cache(axi4asink_auto_in_ar_mem_4_cache),
    .auto_in_ar_mem_4_prot(axi4asink_auto_in_ar_mem_4_prot),
    .auto_in_ar_mem_4_qos(axi4asink_auto_in_ar_mem_4_qos),
    .auto_in_ar_mem_5_id(axi4asink_auto_in_ar_mem_5_id),
    .auto_in_ar_mem_5_addr(axi4asink_auto_in_ar_mem_5_addr),
    .auto_in_ar_mem_5_len(axi4asink_auto_in_ar_mem_5_len),
    .auto_in_ar_mem_5_size(axi4asink_auto_in_ar_mem_5_size),
    .auto_in_ar_mem_5_burst(axi4asink_auto_in_ar_mem_5_burst),
    .auto_in_ar_mem_5_lock(axi4asink_auto_in_ar_mem_5_lock),
    .auto_in_ar_mem_5_cache(axi4asink_auto_in_ar_mem_5_cache),
    .auto_in_ar_mem_5_prot(axi4asink_auto_in_ar_mem_5_prot),
    .auto_in_ar_mem_5_qos(axi4asink_auto_in_ar_mem_5_qos),
    .auto_in_ar_mem_6_id(axi4asink_auto_in_ar_mem_6_id),
    .auto_in_ar_mem_6_addr(axi4asink_auto_in_ar_mem_6_addr),
    .auto_in_ar_mem_6_len(axi4asink_auto_in_ar_mem_6_len),
    .auto_in_ar_mem_6_size(axi4asink_auto_in_ar_mem_6_size),
    .auto_in_ar_mem_6_burst(axi4asink_auto_in_ar_mem_6_burst),
    .auto_in_ar_mem_6_lock(axi4asink_auto_in_ar_mem_6_lock),
    .auto_in_ar_mem_6_cache(axi4asink_auto_in_ar_mem_6_cache),
    .auto_in_ar_mem_6_prot(axi4asink_auto_in_ar_mem_6_prot),
    .auto_in_ar_mem_6_qos(axi4asink_auto_in_ar_mem_6_qos),
    .auto_in_ar_mem_7_id(axi4asink_auto_in_ar_mem_7_id),
    .auto_in_ar_mem_7_addr(axi4asink_auto_in_ar_mem_7_addr),
    .auto_in_ar_mem_7_len(axi4asink_auto_in_ar_mem_7_len),
    .auto_in_ar_mem_7_size(axi4asink_auto_in_ar_mem_7_size),
    .auto_in_ar_mem_7_burst(axi4asink_auto_in_ar_mem_7_burst),
    .auto_in_ar_mem_7_lock(axi4asink_auto_in_ar_mem_7_lock),
    .auto_in_ar_mem_7_cache(axi4asink_auto_in_ar_mem_7_cache),
    .auto_in_ar_mem_7_prot(axi4asink_auto_in_ar_mem_7_prot),
    .auto_in_ar_mem_7_qos(axi4asink_auto_in_ar_mem_7_qos),
    .auto_in_ar_ridx(axi4asink_auto_in_ar_ridx),
    .auto_in_ar_widx(axi4asink_auto_in_ar_widx),
    .auto_in_ar_safe_ridx_valid(axi4asink_auto_in_ar_safe_ridx_valid),
    .auto_in_ar_safe_widx_valid(axi4asink_auto_in_ar_safe_widx_valid),
    .auto_in_ar_safe_source_reset_n(axi4asink_auto_in_ar_safe_source_reset_n),
    .auto_in_ar_safe_sink_reset_n(axi4asink_auto_in_ar_safe_sink_reset_n),
    .auto_in_r_mem_0_id(axi4asink_auto_in_r_mem_0_id),
    .auto_in_r_mem_0_data(axi4asink_auto_in_r_mem_0_data),
    .auto_in_r_mem_0_resp(axi4asink_auto_in_r_mem_0_resp),
    .auto_in_r_mem_0_last(axi4asink_auto_in_r_mem_0_last),
    .auto_in_r_mem_1_id(axi4asink_auto_in_r_mem_1_id),
    .auto_in_r_mem_1_data(axi4asink_auto_in_r_mem_1_data),
    .auto_in_r_mem_1_resp(axi4asink_auto_in_r_mem_1_resp),
    .auto_in_r_mem_1_last(axi4asink_auto_in_r_mem_1_last),
    .auto_in_r_mem_2_id(axi4asink_auto_in_r_mem_2_id),
    .auto_in_r_mem_2_data(axi4asink_auto_in_r_mem_2_data),
    .auto_in_r_mem_2_resp(axi4asink_auto_in_r_mem_2_resp),
    .auto_in_r_mem_2_last(axi4asink_auto_in_r_mem_2_last),
    .auto_in_r_mem_3_id(axi4asink_auto_in_r_mem_3_id),
    .auto_in_r_mem_3_data(axi4asink_auto_in_r_mem_3_data),
    .auto_in_r_mem_3_resp(axi4asink_auto_in_r_mem_3_resp),
    .auto_in_r_mem_3_last(axi4asink_auto_in_r_mem_3_last),
    .auto_in_r_mem_4_id(axi4asink_auto_in_r_mem_4_id),
    .auto_in_r_mem_4_data(axi4asink_auto_in_r_mem_4_data),
    .auto_in_r_mem_4_resp(axi4asink_auto_in_r_mem_4_resp),
    .auto_in_r_mem_4_last(axi4asink_auto_in_r_mem_4_last),
    .auto_in_r_mem_5_id(axi4asink_auto_in_r_mem_5_id),
    .auto_in_r_mem_5_data(axi4asink_auto_in_r_mem_5_data),
    .auto_in_r_mem_5_resp(axi4asink_auto_in_r_mem_5_resp),
    .auto_in_r_mem_5_last(axi4asink_auto_in_r_mem_5_last),
    .auto_in_r_mem_6_id(axi4asink_auto_in_r_mem_6_id),
    .auto_in_r_mem_6_data(axi4asink_auto_in_r_mem_6_data),
    .auto_in_r_mem_6_resp(axi4asink_auto_in_r_mem_6_resp),
    .auto_in_r_mem_6_last(axi4asink_auto_in_r_mem_6_last),
    .auto_in_r_mem_7_id(axi4asink_auto_in_r_mem_7_id),
    .auto_in_r_mem_7_data(axi4asink_auto_in_r_mem_7_data),
    .auto_in_r_mem_7_resp(axi4asink_auto_in_r_mem_7_resp),
    .auto_in_r_mem_7_last(axi4asink_auto_in_r_mem_7_last),
    .auto_in_r_ridx(axi4asink_auto_in_r_ridx),
    .auto_in_r_widx(axi4asink_auto_in_r_widx),
    .auto_in_r_safe_ridx_valid(axi4asink_auto_in_r_safe_ridx_valid),
    .auto_in_r_safe_widx_valid(axi4asink_auto_in_r_safe_widx_valid),
    .auto_in_r_safe_source_reset_n(axi4asink_auto_in_r_safe_source_reset_n),
    .auto_in_r_safe_sink_reset_n(axi4asink_auto_in_r_safe_sink_reset_n),
    .auto_out_aw_ready(axi4asink_auto_out_aw_ready),
    .auto_out_aw_valid(axi4asink_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4asink_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4asink_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4asink_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4asink_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4asink_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(axi4asink_auto_out_aw_bits_lock),
    .auto_out_aw_bits_prot(axi4asink_auto_out_aw_bits_prot),
    .auto_out_aw_bits_qos(axi4asink_auto_out_aw_bits_qos),
    .auto_out_w_ready(axi4asink_auto_out_w_ready),
    .auto_out_w_valid(axi4asink_auto_out_w_valid),
    .auto_out_w_bits_data(axi4asink_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4asink_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4asink_auto_out_w_bits_last),
    .auto_out_b_ready(axi4asink_auto_out_b_ready),
    .auto_out_b_valid(axi4asink_auto_out_b_valid),
    .auto_out_b_bits_id(axi4asink_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4asink_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4asink_auto_out_ar_ready),
    .auto_out_ar_valid(axi4asink_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4asink_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4asink_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4asink_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4asink_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4asink_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(axi4asink_auto_out_ar_bits_lock),
    .auto_out_ar_bits_prot(axi4asink_auto_out_ar_bits_prot),
    .auto_out_ar_bits_qos(axi4asink_auto_out_ar_bits_qos),
    .auto_out_r_ready(axi4asink_auto_out_r_ready),
    .auto_out_r_valid(axi4asink_auto_out_r_valid),
    .auto_out_r_bits_id(axi4asink_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4asink_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4asink_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4asink_auto_out_r_bits_last)
  );
  vcu118mig blackbox ( // @[XilinxVCU118MIG.scala 51:26]
    .c0_ddr4_adr(blackbox_c0_ddr4_adr),
    .c0_ddr4_bg(blackbox_c0_ddr4_bg),
    .c0_ddr4_ba(blackbox_c0_ddr4_ba),
    .c0_ddr4_reset_n(blackbox_c0_ddr4_reset_n),
    .c0_ddr4_act_n(blackbox_c0_ddr4_act_n),
    .c0_ddr4_ck_c(blackbox_c0_ddr4_ck_c),
    .c0_ddr4_ck_t(blackbox_c0_ddr4_ck_t),
    .c0_ddr4_cke(blackbox_c0_ddr4_cke),
    .c0_ddr4_cs_n(blackbox_c0_ddr4_cs_n),
    .c0_ddr4_odt(blackbox_c0_ddr4_odt),
    .c0_ddr4_dq(io_port_c0_ddr4_dq),
    .c0_ddr4_dqs_c(io_port_c0_ddr4_dqs_c),
    .c0_ddr4_dqs_t(io_port_c0_ddr4_dqs_t),
    .c0_ddr4_dm_dbi_n(io_port_c0_ddr4_dm_dbi_n),
    .c0_sys_clk_i(blackbox_c0_sys_clk_i),
    .c0_ddr4_ui_clk(blackbox_c0_ddr4_ui_clk),
    .c0_ddr4_ui_clk_sync_rst(blackbox_c0_ddr4_ui_clk_sync_rst),
    .c0_ddr4_aresetn(blackbox_c0_ddr4_aresetn),
    .c0_init_calib_complete(blackbox_c0_init_calib_complete),
    .sys_rst(blackbox_sys_rst),
    .c0_ddr4_s_axi_awid(blackbox_c0_ddr4_s_axi_awid),
    .c0_ddr4_s_axi_awaddr(blackbox_c0_ddr4_s_axi_awaddr),
    .c0_ddr4_s_axi_awlen(blackbox_c0_ddr4_s_axi_awlen),
    .c0_ddr4_s_axi_awsize(blackbox_c0_ddr4_s_axi_awsize),
    .c0_ddr4_s_axi_awburst(blackbox_c0_ddr4_s_axi_awburst),
    .c0_ddr4_s_axi_awlock(blackbox_c0_ddr4_s_axi_awlock),
    .c0_ddr4_s_axi_awcache(blackbox_c0_ddr4_s_axi_awcache),
    .c0_ddr4_s_axi_awprot(blackbox_c0_ddr4_s_axi_awprot),
    .c0_ddr4_s_axi_awqos(blackbox_c0_ddr4_s_axi_awqos),
    .c0_ddr4_s_axi_awvalid(blackbox_c0_ddr4_s_axi_awvalid),
    .c0_ddr4_s_axi_awready(blackbox_c0_ddr4_s_axi_awready),
    .c0_ddr4_s_axi_wdata(blackbox_c0_ddr4_s_axi_wdata),
    .c0_ddr4_s_axi_wstrb(blackbox_c0_ddr4_s_axi_wstrb),
    .c0_ddr4_s_axi_wlast(blackbox_c0_ddr4_s_axi_wlast),
    .c0_ddr4_s_axi_wvalid(blackbox_c0_ddr4_s_axi_wvalid),
    .c0_ddr4_s_axi_wready(blackbox_c0_ddr4_s_axi_wready),
    .c0_ddr4_s_axi_bready(blackbox_c0_ddr4_s_axi_bready),
    .c0_ddr4_s_axi_bid(blackbox_c0_ddr4_s_axi_bid),
    .c0_ddr4_s_axi_bresp(blackbox_c0_ddr4_s_axi_bresp),
    .c0_ddr4_s_axi_bvalid(blackbox_c0_ddr4_s_axi_bvalid),
    .c0_ddr4_s_axi_arid(blackbox_c0_ddr4_s_axi_arid),
    .c0_ddr4_s_axi_araddr(blackbox_c0_ddr4_s_axi_araddr),
    .c0_ddr4_s_axi_arlen(blackbox_c0_ddr4_s_axi_arlen),
    .c0_ddr4_s_axi_arsize(blackbox_c0_ddr4_s_axi_arsize),
    .c0_ddr4_s_axi_arburst(blackbox_c0_ddr4_s_axi_arburst),
    .c0_ddr4_s_axi_arlock(blackbox_c0_ddr4_s_axi_arlock),
    .c0_ddr4_s_axi_arcache(blackbox_c0_ddr4_s_axi_arcache),
    .c0_ddr4_s_axi_arprot(blackbox_c0_ddr4_s_axi_arprot),
    .c0_ddr4_s_axi_arqos(blackbox_c0_ddr4_s_axi_arqos),
    .c0_ddr4_s_axi_arvalid(blackbox_c0_ddr4_s_axi_arvalid),
    .c0_ddr4_s_axi_arready(blackbox_c0_ddr4_s_axi_arready),
    .c0_ddr4_s_axi_rready(blackbox_c0_ddr4_s_axi_rready),
    .c0_ddr4_s_axi_rid(blackbox_c0_ddr4_s_axi_rid),
    .c0_ddr4_s_axi_rdata(blackbox_c0_ddr4_s_axi_rdata),
    .c0_ddr4_s_axi_rresp(blackbox_c0_ddr4_s_axi_rresp),
    .c0_ddr4_s_axi_rlast(blackbox_c0_ddr4_s_axi_rlast),
    .c0_ddr4_s_axi_rvalid(blackbox_c0_ddr4_s_axi_rvalid)
  );
  assign auto_axi4in_xing_in_aw_ridx = axi4asink_auto_in_aw_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_aw_safe_ridx_valid = axi4asink_auto_in_aw_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_aw_safe_sink_reset_n = axi4asink_auto_in_aw_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_w_ridx = axi4asink_auto_in_w_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_w_safe_ridx_valid = axi4asink_auto_in_w_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_w_safe_sink_reset_n = axi4asink_auto_in_w_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_0_id = axi4asink_auto_in_b_mem_0_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_0_resp = axi4asink_auto_in_b_mem_0_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_1_id = axi4asink_auto_in_b_mem_1_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_1_resp = axi4asink_auto_in_b_mem_1_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_2_id = axi4asink_auto_in_b_mem_2_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_2_resp = axi4asink_auto_in_b_mem_2_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_3_id = axi4asink_auto_in_b_mem_3_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_3_resp = axi4asink_auto_in_b_mem_3_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_4_id = axi4asink_auto_in_b_mem_4_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_4_resp = axi4asink_auto_in_b_mem_4_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_5_id = axi4asink_auto_in_b_mem_5_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_5_resp = axi4asink_auto_in_b_mem_5_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_6_id = axi4asink_auto_in_b_mem_6_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_6_resp = axi4asink_auto_in_b_mem_6_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_7_id = axi4asink_auto_in_b_mem_7_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_mem_7_resp = axi4asink_auto_in_b_mem_7_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_widx = axi4asink_auto_in_b_widx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_safe_widx_valid = axi4asink_auto_in_b_safe_widx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_b_safe_source_reset_n = axi4asink_auto_in_b_safe_source_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_ar_ridx = axi4asink_auto_in_ar_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_ar_safe_ridx_valid = axi4asink_auto_in_ar_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_ar_safe_sink_reset_n = axi4asink_auto_in_ar_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_0_id = axi4asink_auto_in_r_mem_0_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_0_data = axi4asink_auto_in_r_mem_0_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_0_resp = axi4asink_auto_in_r_mem_0_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_0_last = axi4asink_auto_in_r_mem_0_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_1_id = axi4asink_auto_in_r_mem_1_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_1_data = axi4asink_auto_in_r_mem_1_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_1_resp = axi4asink_auto_in_r_mem_1_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_1_last = axi4asink_auto_in_r_mem_1_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_2_id = axi4asink_auto_in_r_mem_2_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_2_data = axi4asink_auto_in_r_mem_2_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_2_resp = axi4asink_auto_in_r_mem_2_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_2_last = axi4asink_auto_in_r_mem_2_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_3_id = axi4asink_auto_in_r_mem_3_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_3_data = axi4asink_auto_in_r_mem_3_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_3_resp = axi4asink_auto_in_r_mem_3_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_3_last = axi4asink_auto_in_r_mem_3_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_4_id = axi4asink_auto_in_r_mem_4_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_4_data = axi4asink_auto_in_r_mem_4_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_4_resp = axi4asink_auto_in_r_mem_4_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_4_last = axi4asink_auto_in_r_mem_4_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_5_id = axi4asink_auto_in_r_mem_5_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_5_data = axi4asink_auto_in_r_mem_5_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_5_resp = axi4asink_auto_in_r_mem_5_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_5_last = axi4asink_auto_in_r_mem_5_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_6_id = axi4asink_auto_in_r_mem_6_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_6_data = axi4asink_auto_in_r_mem_6_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_6_resp = axi4asink_auto_in_r_mem_6_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_6_last = axi4asink_auto_in_r_mem_6_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_7_id = axi4asink_auto_in_r_mem_7_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_7_data = axi4asink_auto_in_r_mem_7_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_7_resp = axi4asink_auto_in_r_mem_7_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_mem_7_last = axi4asink_auto_in_r_mem_7_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_widx = axi4asink_auto_in_r_widx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_safe_widx_valid = axi4asink_auto_in_r_safe_widx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign auto_axi4in_xing_in_r_safe_source_reset_n = axi4asink_auto_in_r_safe_source_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign io_port_c0_ddr4_adr = blackbox_c0_ddr4_adr; // @[XilinxVCU118MIG.scala 63:33]
  assign io_port_c0_ddr4_bg = blackbox_c0_ddr4_bg; // @[XilinxVCU118MIG.scala 64:33]
  assign io_port_c0_ddr4_ba = blackbox_c0_ddr4_ba; // @[XilinxVCU118MIG.scala 65:33]
  assign io_port_c0_ddr4_reset_n = blackbox_c0_ddr4_reset_n; // @[XilinxVCU118MIG.scala 66:33]
  assign io_port_c0_ddr4_act_n = blackbox_c0_ddr4_act_n; // @[XilinxVCU118MIG.scala 67:33]
  assign io_port_c0_ddr4_ck_c = blackbox_c0_ddr4_ck_c; // @[XilinxVCU118MIG.scala 68:33]
  assign io_port_c0_ddr4_ck_t = blackbox_c0_ddr4_ck_t; // @[XilinxVCU118MIG.scala 69:33]
  assign io_port_c0_ddr4_cke = blackbox_c0_ddr4_cke; // @[XilinxVCU118MIG.scala 70:33]
  assign io_port_c0_ddr4_cs_n = blackbox_c0_ddr4_cs_n; // @[XilinxVCU118MIG.scala 71:33]
  assign io_port_c0_ddr4_odt = blackbox_c0_ddr4_odt; // @[XilinxVCU118MIG.scala 72:33]
  assign io_port_c0_ddr4_ui_clk = blackbox_c0_ddr4_ui_clk; // @[XilinxVCU118MIG.scala 78:33]
  assign io_port_c0_ddr4_ui_clk_sync_rst = blackbox_c0_ddr4_ui_clk_sync_rst; // @[XilinxVCU118MIG.scala 79:37]
  assign axi4asink_clock = clock;
  assign axi4asink_reset = reset;
  assign axi4asink_auto_in_aw_mem_0_id = auto_axi4in_xing_in_aw_mem_0_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_0_addr = auto_axi4in_xing_in_aw_mem_0_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_0_len = auto_axi4in_xing_in_aw_mem_0_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_0_size = auto_axi4in_xing_in_aw_mem_0_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_0_burst = auto_axi4in_xing_in_aw_mem_0_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_0_lock = auto_axi4in_xing_in_aw_mem_0_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_0_cache = auto_axi4in_xing_in_aw_mem_0_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_0_prot = auto_axi4in_xing_in_aw_mem_0_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_0_qos = auto_axi4in_xing_in_aw_mem_0_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_id = auto_axi4in_xing_in_aw_mem_1_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_addr = auto_axi4in_xing_in_aw_mem_1_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_len = auto_axi4in_xing_in_aw_mem_1_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_size = auto_axi4in_xing_in_aw_mem_1_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_burst = auto_axi4in_xing_in_aw_mem_1_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_lock = auto_axi4in_xing_in_aw_mem_1_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_cache = auto_axi4in_xing_in_aw_mem_1_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_prot = auto_axi4in_xing_in_aw_mem_1_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_1_qos = auto_axi4in_xing_in_aw_mem_1_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_id = auto_axi4in_xing_in_aw_mem_2_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_addr = auto_axi4in_xing_in_aw_mem_2_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_len = auto_axi4in_xing_in_aw_mem_2_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_size = auto_axi4in_xing_in_aw_mem_2_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_burst = auto_axi4in_xing_in_aw_mem_2_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_lock = auto_axi4in_xing_in_aw_mem_2_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_cache = auto_axi4in_xing_in_aw_mem_2_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_prot = auto_axi4in_xing_in_aw_mem_2_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_2_qos = auto_axi4in_xing_in_aw_mem_2_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_id = auto_axi4in_xing_in_aw_mem_3_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_addr = auto_axi4in_xing_in_aw_mem_3_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_len = auto_axi4in_xing_in_aw_mem_3_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_size = auto_axi4in_xing_in_aw_mem_3_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_burst = auto_axi4in_xing_in_aw_mem_3_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_lock = auto_axi4in_xing_in_aw_mem_3_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_cache = auto_axi4in_xing_in_aw_mem_3_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_prot = auto_axi4in_xing_in_aw_mem_3_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_3_qos = auto_axi4in_xing_in_aw_mem_3_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_id = auto_axi4in_xing_in_aw_mem_4_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_addr = auto_axi4in_xing_in_aw_mem_4_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_len = auto_axi4in_xing_in_aw_mem_4_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_size = auto_axi4in_xing_in_aw_mem_4_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_burst = auto_axi4in_xing_in_aw_mem_4_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_lock = auto_axi4in_xing_in_aw_mem_4_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_cache = auto_axi4in_xing_in_aw_mem_4_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_prot = auto_axi4in_xing_in_aw_mem_4_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_4_qos = auto_axi4in_xing_in_aw_mem_4_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_id = auto_axi4in_xing_in_aw_mem_5_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_addr = auto_axi4in_xing_in_aw_mem_5_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_len = auto_axi4in_xing_in_aw_mem_5_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_size = auto_axi4in_xing_in_aw_mem_5_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_burst = auto_axi4in_xing_in_aw_mem_5_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_lock = auto_axi4in_xing_in_aw_mem_5_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_cache = auto_axi4in_xing_in_aw_mem_5_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_prot = auto_axi4in_xing_in_aw_mem_5_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_5_qos = auto_axi4in_xing_in_aw_mem_5_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_id = auto_axi4in_xing_in_aw_mem_6_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_addr = auto_axi4in_xing_in_aw_mem_6_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_len = auto_axi4in_xing_in_aw_mem_6_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_size = auto_axi4in_xing_in_aw_mem_6_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_burst = auto_axi4in_xing_in_aw_mem_6_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_lock = auto_axi4in_xing_in_aw_mem_6_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_cache = auto_axi4in_xing_in_aw_mem_6_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_prot = auto_axi4in_xing_in_aw_mem_6_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_6_qos = auto_axi4in_xing_in_aw_mem_6_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_id = auto_axi4in_xing_in_aw_mem_7_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_addr = auto_axi4in_xing_in_aw_mem_7_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_len = auto_axi4in_xing_in_aw_mem_7_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_size = auto_axi4in_xing_in_aw_mem_7_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_burst = auto_axi4in_xing_in_aw_mem_7_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_lock = auto_axi4in_xing_in_aw_mem_7_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_cache = auto_axi4in_xing_in_aw_mem_7_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_prot = auto_axi4in_xing_in_aw_mem_7_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_mem_7_qos = auto_axi4in_xing_in_aw_mem_7_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_widx = auto_axi4in_xing_in_aw_widx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_safe_widx_valid = auto_axi4in_xing_in_aw_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_aw_safe_source_reset_n = auto_axi4in_xing_in_aw_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_0_data = auto_axi4in_xing_in_w_mem_0_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_0_strb = auto_axi4in_xing_in_w_mem_0_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_0_last = auto_axi4in_xing_in_w_mem_0_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_1_data = auto_axi4in_xing_in_w_mem_1_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_1_strb = auto_axi4in_xing_in_w_mem_1_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_1_last = auto_axi4in_xing_in_w_mem_1_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_2_data = auto_axi4in_xing_in_w_mem_2_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_2_strb = auto_axi4in_xing_in_w_mem_2_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_2_last = auto_axi4in_xing_in_w_mem_2_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_3_data = auto_axi4in_xing_in_w_mem_3_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_3_strb = auto_axi4in_xing_in_w_mem_3_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_3_last = auto_axi4in_xing_in_w_mem_3_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_4_data = auto_axi4in_xing_in_w_mem_4_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_4_strb = auto_axi4in_xing_in_w_mem_4_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_4_last = auto_axi4in_xing_in_w_mem_4_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_5_data = auto_axi4in_xing_in_w_mem_5_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_5_strb = auto_axi4in_xing_in_w_mem_5_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_5_last = auto_axi4in_xing_in_w_mem_5_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_6_data = auto_axi4in_xing_in_w_mem_6_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_6_strb = auto_axi4in_xing_in_w_mem_6_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_6_last = auto_axi4in_xing_in_w_mem_6_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_7_data = auto_axi4in_xing_in_w_mem_7_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_7_strb = auto_axi4in_xing_in_w_mem_7_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_mem_7_last = auto_axi4in_xing_in_w_mem_7_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_widx = auto_axi4in_xing_in_w_widx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_safe_widx_valid = auto_axi4in_xing_in_w_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_w_safe_source_reset_n = auto_axi4in_xing_in_w_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_b_ridx = auto_axi4in_xing_in_b_ridx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_b_safe_ridx_valid = auto_axi4in_xing_in_b_safe_ridx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_b_safe_sink_reset_n = auto_axi4in_xing_in_b_safe_sink_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_id = auto_axi4in_xing_in_ar_mem_0_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_addr = auto_axi4in_xing_in_ar_mem_0_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_len = auto_axi4in_xing_in_ar_mem_0_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_size = auto_axi4in_xing_in_ar_mem_0_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_burst = auto_axi4in_xing_in_ar_mem_0_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_lock = auto_axi4in_xing_in_ar_mem_0_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_cache = auto_axi4in_xing_in_ar_mem_0_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_prot = auto_axi4in_xing_in_ar_mem_0_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_0_qos = auto_axi4in_xing_in_ar_mem_0_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_id = auto_axi4in_xing_in_ar_mem_1_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_addr = auto_axi4in_xing_in_ar_mem_1_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_len = auto_axi4in_xing_in_ar_mem_1_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_size = auto_axi4in_xing_in_ar_mem_1_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_burst = auto_axi4in_xing_in_ar_mem_1_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_lock = auto_axi4in_xing_in_ar_mem_1_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_cache = auto_axi4in_xing_in_ar_mem_1_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_prot = auto_axi4in_xing_in_ar_mem_1_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_1_qos = auto_axi4in_xing_in_ar_mem_1_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_id = auto_axi4in_xing_in_ar_mem_2_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_addr = auto_axi4in_xing_in_ar_mem_2_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_len = auto_axi4in_xing_in_ar_mem_2_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_size = auto_axi4in_xing_in_ar_mem_2_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_burst = auto_axi4in_xing_in_ar_mem_2_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_lock = auto_axi4in_xing_in_ar_mem_2_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_cache = auto_axi4in_xing_in_ar_mem_2_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_prot = auto_axi4in_xing_in_ar_mem_2_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_2_qos = auto_axi4in_xing_in_ar_mem_2_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_id = auto_axi4in_xing_in_ar_mem_3_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_addr = auto_axi4in_xing_in_ar_mem_3_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_len = auto_axi4in_xing_in_ar_mem_3_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_size = auto_axi4in_xing_in_ar_mem_3_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_burst = auto_axi4in_xing_in_ar_mem_3_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_lock = auto_axi4in_xing_in_ar_mem_3_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_cache = auto_axi4in_xing_in_ar_mem_3_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_prot = auto_axi4in_xing_in_ar_mem_3_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_3_qos = auto_axi4in_xing_in_ar_mem_3_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_id = auto_axi4in_xing_in_ar_mem_4_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_addr = auto_axi4in_xing_in_ar_mem_4_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_len = auto_axi4in_xing_in_ar_mem_4_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_size = auto_axi4in_xing_in_ar_mem_4_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_burst = auto_axi4in_xing_in_ar_mem_4_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_lock = auto_axi4in_xing_in_ar_mem_4_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_cache = auto_axi4in_xing_in_ar_mem_4_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_prot = auto_axi4in_xing_in_ar_mem_4_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_4_qos = auto_axi4in_xing_in_ar_mem_4_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_id = auto_axi4in_xing_in_ar_mem_5_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_addr = auto_axi4in_xing_in_ar_mem_5_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_len = auto_axi4in_xing_in_ar_mem_5_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_size = auto_axi4in_xing_in_ar_mem_5_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_burst = auto_axi4in_xing_in_ar_mem_5_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_lock = auto_axi4in_xing_in_ar_mem_5_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_cache = auto_axi4in_xing_in_ar_mem_5_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_prot = auto_axi4in_xing_in_ar_mem_5_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_5_qos = auto_axi4in_xing_in_ar_mem_5_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_id = auto_axi4in_xing_in_ar_mem_6_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_addr = auto_axi4in_xing_in_ar_mem_6_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_len = auto_axi4in_xing_in_ar_mem_6_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_size = auto_axi4in_xing_in_ar_mem_6_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_burst = auto_axi4in_xing_in_ar_mem_6_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_lock = auto_axi4in_xing_in_ar_mem_6_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_cache = auto_axi4in_xing_in_ar_mem_6_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_prot = auto_axi4in_xing_in_ar_mem_6_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_6_qos = auto_axi4in_xing_in_ar_mem_6_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_id = auto_axi4in_xing_in_ar_mem_7_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_addr = auto_axi4in_xing_in_ar_mem_7_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_len = auto_axi4in_xing_in_ar_mem_7_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_size = auto_axi4in_xing_in_ar_mem_7_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_burst = auto_axi4in_xing_in_ar_mem_7_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_lock = auto_axi4in_xing_in_ar_mem_7_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_cache = auto_axi4in_xing_in_ar_mem_7_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_prot = auto_axi4in_xing_in_ar_mem_7_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_mem_7_qos = auto_axi4in_xing_in_ar_mem_7_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_widx = auto_axi4in_xing_in_ar_widx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_safe_widx_valid = auto_axi4in_xing_in_ar_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_ar_safe_source_reset_n = auto_axi4in_xing_in_ar_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_r_ridx = auto_axi4in_xing_in_r_ridx; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_r_safe_ridx_valid = auto_axi4in_xing_in_r_safe_ridx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_in_r_safe_sink_reset_n = auto_axi4in_xing_in_r_safe_sink_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign axi4asink_auto_out_aw_ready = blackbox_c0_ddr4_s_axi_awready; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 96:31]
  assign axi4asink_auto_out_w_ready = blackbox_c0_ddr4_s_axi_wready; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 103:31]
  assign axi4asink_auto_out_b_valid = blackbox_c0_ddr4_s_axi_bvalid; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 109:31]
  assign axi4asink_auto_out_b_bits_id = blackbox_c0_ddr4_s_axi_bid; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 107:31]
  assign axi4asink_auto_out_b_bits_resp = blackbox_c0_ddr4_s_axi_bresp; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 108:31]
  assign axi4asink_auto_out_ar_ready = blackbox_c0_ddr4_s_axi_arready; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 122:31]
  assign axi4asink_auto_out_r_valid = blackbox_c0_ddr4_s_axi_rvalid; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 130:31]
  assign axi4asink_auto_out_r_bits_id = blackbox_c0_ddr4_s_axi_rid; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 126:31]
  assign axi4asink_auto_out_r_bits_data = blackbox_c0_ddr4_s_axi_rdata; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 127:31]
  assign axi4asink_auto_out_r_bits_resp = blackbox_c0_ddr4_s_axi_rresp; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 128:31]
  assign axi4asink_auto_out_r_bits_last = blackbox_c0_ddr4_s_axi_rlast; // @[Nodes.scala 1210:84 XilinxVCU118MIG.scala 129:31]
  assign blackbox_c0_sys_clk_i = io_port_c0_sys_clk_i; // @[XilinxVCU118MIG.scala 76:33]
  assign blackbox_c0_ddr4_aresetn = io_port_c0_ddr4_aresetn; // @[XilinxVCU118MIG.scala 80:33]
  assign blackbox_sys_rst = io_port_sys_rst; // @[XilinxVCU118MIG.scala 134:31]
  assign blackbox_c0_ddr4_s_axi_awid = axi4asink_auto_out_aw_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_awaddr = awaddr[30:0]; // @[XilinxVCU118MIG.scala 87:39]
  assign blackbox_c0_ddr4_s_axi_awlen = axi4asink_auto_out_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_awsize = axi4asink_auto_out_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_awburst = axi4asink_auto_out_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_awlock = axi4asink_auto_out_aw_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_awcache = 4'h3; // @[XilinxVCU118MIG.scala 92:39]
  assign blackbox_c0_ddr4_s_axi_awprot = axi4asink_auto_out_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_awqos = axi4asink_auto_out_aw_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_awvalid = axi4asink_auto_out_aw_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_wdata = axi4asink_auto_out_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_wstrb = axi4asink_auto_out_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_wlast = axi4asink_auto_out_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_wvalid = axi4asink_auto_out_w_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_bready = axi4asink_auto_out_b_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_arid = axi4asink_auto_out_ar_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_araddr = araddr[30:0]; // @[XilinxVCU118MIG.scala 113:39]
  assign blackbox_c0_ddr4_s_axi_arlen = axi4asink_auto_out_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_arsize = axi4asink_auto_out_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_arburst = axi4asink_auto_out_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_arlock = axi4asink_auto_out_ar_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_arcache = 4'h3; // @[XilinxVCU118MIG.scala 118:39]
  assign blackbox_c0_ddr4_s_axi_arprot = axi4asink_auto_out_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_arqos = axi4asink_auto_out_ar_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_arvalid = axi4asink_auto_out_ar_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign blackbox_c0_ddr4_s_axi_rready = axi4asink_auto_out_r_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
endmodule
module AsyncQueueSource_2_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [3:0]  io_enq_bits_id,
  input  [31:0] io_enq_bits_addr,
  input  [7:0]  io_enq_bits_len,
  input  [2:0]  io_enq_bits_size,
  input  [1:0]  io_enq_bits_burst,
  input         io_enq_bits_lock,
  input  [3:0]  io_enq_bits_cache,
  input  [2:0]  io_enq_bits_prot,
  input  [3:0]  io_enq_bits_qos,
  output [3:0]  io_async_mem_0_id,
  output [31:0] io_async_mem_0_addr,
  output [7:0]  io_async_mem_0_len,
  output [2:0]  io_async_mem_0_size,
  output [1:0]  io_async_mem_0_burst,
  output        io_async_mem_0_lock,
  output [3:0]  io_async_mem_0_cache,
  output [2:0]  io_async_mem_0_prot,
  output [3:0]  io_async_mem_0_qos,
  output [3:0]  io_async_mem_1_id,
  output [31:0] io_async_mem_1_addr,
  output [7:0]  io_async_mem_1_len,
  output [2:0]  io_async_mem_1_size,
  output [1:0]  io_async_mem_1_burst,
  output        io_async_mem_1_lock,
  output [3:0]  io_async_mem_1_cache,
  output [2:0]  io_async_mem_1_prot,
  output [3:0]  io_async_mem_1_qos,
  output [3:0]  io_async_mem_2_id,
  output [31:0] io_async_mem_2_addr,
  output [7:0]  io_async_mem_2_len,
  output [2:0]  io_async_mem_2_size,
  output [1:0]  io_async_mem_2_burst,
  output        io_async_mem_2_lock,
  output [3:0]  io_async_mem_2_cache,
  output [2:0]  io_async_mem_2_prot,
  output [3:0]  io_async_mem_2_qos,
  output [3:0]  io_async_mem_3_id,
  output [31:0] io_async_mem_3_addr,
  output [7:0]  io_async_mem_3_len,
  output [2:0]  io_async_mem_3_size,
  output [1:0]  io_async_mem_3_burst,
  output        io_async_mem_3_lock,
  output [3:0]  io_async_mem_3_cache,
  output [2:0]  io_async_mem_3_prot,
  output [3:0]  io_async_mem_3_qos,
  output [3:0]  io_async_mem_4_id,
  output [31:0] io_async_mem_4_addr,
  output [7:0]  io_async_mem_4_len,
  output [2:0]  io_async_mem_4_size,
  output [1:0]  io_async_mem_4_burst,
  output        io_async_mem_4_lock,
  output [3:0]  io_async_mem_4_cache,
  output [2:0]  io_async_mem_4_prot,
  output [3:0]  io_async_mem_4_qos,
  output [3:0]  io_async_mem_5_id,
  output [31:0] io_async_mem_5_addr,
  output [7:0]  io_async_mem_5_len,
  output [2:0]  io_async_mem_5_size,
  output [1:0]  io_async_mem_5_burst,
  output        io_async_mem_5_lock,
  output [3:0]  io_async_mem_5_cache,
  output [2:0]  io_async_mem_5_prot,
  output [3:0]  io_async_mem_5_qos,
  output [3:0]  io_async_mem_6_id,
  output [31:0] io_async_mem_6_addr,
  output [7:0]  io_async_mem_6_len,
  output [2:0]  io_async_mem_6_size,
  output [1:0]  io_async_mem_6_burst,
  output        io_async_mem_6_lock,
  output [3:0]  io_async_mem_6_cache,
  output [2:0]  io_async_mem_6_prot,
  output [3:0]  io_async_mem_6_qos,
  output [3:0]  io_async_mem_7_id,
  output [31:0] io_async_mem_7_addr,
  output [7:0]  io_async_mem_7_len,
  output [2:0]  io_async_mem_7_size,
  output [1:0]  io_async_mem_7_burst,
  output        io_async_mem_7_lock,
  output [3:0]  io_async_mem_7_cache,
  output [2:0]  io_async_mem_7_prot,
  output [3:0]  io_async_mem_7_qos,
  input  [3:0]  io_async_ridx,
  output [3:0]  io_async_widx,
  input         io_async_safe_ridx_valid,
  output        io_async_safe_widx_valid,
  output        io_async_safe_source_reset_n,
  input         io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
`endif // RANDOMIZE_REG_INIT
  wire  ridx_ridx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  ridx_ridx_gray_reset; // @[ShiftReg.scala 45:23]
  wire [3:0] ridx_ridx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire [3:0] ridx_ridx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  source_valid_0_io_in; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_io_out; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_clock; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_reset; // @[AsyncQueue.scala 100:32]
  wire  source_valid_1_io_in; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_io_out; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_clock; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_reset; // @[AsyncQueue.scala 101:32]
  wire  sink_extend_io_in; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_io_out; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_clock; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_reset; // @[AsyncQueue.scala 103:30]
  wire  sink_valid_io_in; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_io_out; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_clock; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_reset; // @[AsyncQueue.scala 104:30]
  reg [3:0] mem_0_id; // @[AsyncQueue.scala 80:16]
  reg [31:0] mem_0_addr; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_0_len; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_0_size; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_0_burst; // @[AsyncQueue.scala 80:16]
  reg  mem_0_lock; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_0_cache; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_0_prot; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_0_qos; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_1_id; // @[AsyncQueue.scala 80:16]
  reg [31:0] mem_1_addr; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_1_len; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_1_size; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_1_burst; // @[AsyncQueue.scala 80:16]
  reg  mem_1_lock; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_1_cache; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_1_prot; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_1_qos; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_2_id; // @[AsyncQueue.scala 80:16]
  reg [31:0] mem_2_addr; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_2_len; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_2_size; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_2_burst; // @[AsyncQueue.scala 80:16]
  reg  mem_2_lock; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_2_cache; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_2_prot; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_2_qos; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_3_id; // @[AsyncQueue.scala 80:16]
  reg [31:0] mem_3_addr; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_3_len; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_3_size; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_3_burst; // @[AsyncQueue.scala 80:16]
  reg  mem_3_lock; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_3_cache; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_3_prot; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_3_qos; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_4_id; // @[AsyncQueue.scala 80:16]
  reg [31:0] mem_4_addr; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_4_len; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_4_size; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_4_burst; // @[AsyncQueue.scala 80:16]
  reg  mem_4_lock; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_4_cache; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_4_prot; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_4_qos; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_5_id; // @[AsyncQueue.scala 80:16]
  reg [31:0] mem_5_addr; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_5_len; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_5_size; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_5_burst; // @[AsyncQueue.scala 80:16]
  reg  mem_5_lock; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_5_cache; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_5_prot; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_5_qos; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_6_id; // @[AsyncQueue.scala 80:16]
  reg [31:0] mem_6_addr; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_6_len; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_6_size; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_6_burst; // @[AsyncQueue.scala 80:16]
  reg  mem_6_lock; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_6_cache; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_6_prot; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_6_qos; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_7_id; // @[AsyncQueue.scala 80:16]
  reg [31:0] mem_7_addr; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_7_len; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_7_size; // @[AsyncQueue.scala 80:16]
  reg [1:0] mem_7_burst; // @[AsyncQueue.scala 80:16]
  reg  mem_7_lock; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_7_cache; // @[AsyncQueue.scala 80:16]
  reg [2:0] mem_7_prot; // @[AsyncQueue.scala 80:16]
  reg [3:0] mem_7_qos; // @[AsyncQueue.scala 80:16]
  wire  _widx_T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  sink_ready = sink_valid_io_out;
  wire  _widx_T_2 = ~sink_ready; // @[AsyncQueue.scala 81:79]
  reg [3:0] widx_widx_bin; // @[AsyncQueue.scala 52:25]
  wire [3:0] _GEN_144 = {{3'd0}, _widx_T_1}; // @[AsyncQueue.scala 53:43]
  wire [3:0] _widx_incremented_T_1 = widx_widx_bin + _GEN_144; // @[AsyncQueue.scala 53:43]
  wire [3:0] widx_incremented = _widx_T_2 ? 4'h0 : _widx_incremented_T_1; // @[AsyncQueue.scala 53:23]
  wire [3:0] _GEN_145 = {{1'd0}, widx_incremented[3:1]}; // @[AsyncQueue.scala 54:17]
  wire [3:0] widx = widx_incremented ^ _GEN_145; // @[AsyncQueue.scala 54:17]
  wire [3:0] ridx = ridx_ridx_gray_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [3:0] _ready_T = ridx ^ 4'hc; // @[AsyncQueue.scala 83:44]
  wire [2:0] _index_T_2 = {io_async_widx[3], 2'h0}; // @[AsyncQueue.scala 85:93]
  wire [2:0] index = io_async_widx[2:0] ^ _index_T_2; // @[AsyncQueue.scala 85:64]
  reg  ready_reg; // @[AsyncQueue.scala 88:56]
  reg [3:0] widx_gray; // @[AsyncQueue.scala 91:55]
  AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness ridx_ridx_gray ( // @[ShiftReg.scala 45:23]
    .clock(ridx_ridx_gray_clock),
    .reset(ridx_ridx_gray_reset),
    .io_d(ridx_ridx_gray_io_d),
    .io_q(ridx_ridx_gray_io_q)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid_0 ( // @[AsyncQueue.scala 100:32]
    .io_in(source_valid_0_io_in),
    .io_out(source_valid_0_io_out),
    .clock(source_valid_0_clock),
    .reset(source_valid_0_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid_1 ( // @[AsyncQueue.scala 101:32]
    .io_in(source_valid_1_io_in),
    .io_out(source_valid_1_io_out),
    .clock(source_valid_1_clock),
    .reset(source_valid_1_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_extend ( // @[AsyncQueue.scala 103:30]
    .io_in(sink_extend_io_in),
    .io_out(sink_extend_io_out),
    .clock(sink_extend_clock),
    .reset(sink_extend_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid ( // @[AsyncQueue.scala 104:30]
    .io_in(sink_valid_io_in),
    .io_out(sink_valid_io_out),
    .clock(sink_valid_clock),
    .reset(sink_valid_reset)
  );
  assign io_enq_ready = ready_reg & sink_ready; // @[AsyncQueue.scala 89:29]
  assign io_async_mem_0_id = mem_0_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_addr = mem_0_addr; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_len = mem_0_len; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_size = mem_0_size; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_burst = mem_0_burst; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_lock = mem_0_lock; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_cache = mem_0_cache; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_prot = mem_0_prot; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_qos = mem_0_qos; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_id = mem_1_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_addr = mem_1_addr; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_len = mem_1_len; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_size = mem_1_size; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_burst = mem_1_burst; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_lock = mem_1_lock; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_cache = mem_1_cache; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_prot = mem_1_prot; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_qos = mem_1_qos; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_id = mem_2_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_addr = mem_2_addr; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_len = mem_2_len; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_size = mem_2_size; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_burst = mem_2_burst; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_lock = mem_2_lock; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_cache = mem_2_cache; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_prot = mem_2_prot; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_qos = mem_2_qos; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_id = mem_3_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_addr = mem_3_addr; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_len = mem_3_len; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_size = mem_3_size; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_burst = mem_3_burst; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_lock = mem_3_lock; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_cache = mem_3_cache; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_prot = mem_3_prot; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_qos = mem_3_qos; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_id = mem_4_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_addr = mem_4_addr; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_len = mem_4_len; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_size = mem_4_size; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_burst = mem_4_burst; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_lock = mem_4_lock; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_cache = mem_4_cache; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_prot = mem_4_prot; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_qos = mem_4_qos; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_id = mem_5_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_addr = mem_5_addr; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_len = mem_5_len; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_size = mem_5_size; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_burst = mem_5_burst; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_lock = mem_5_lock; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_cache = mem_5_cache; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_prot = mem_5_prot; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_qos = mem_5_qos; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_id = mem_6_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_addr = mem_6_addr; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_len = mem_6_len; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_size = mem_6_size; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_burst = mem_6_burst; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_lock = mem_6_lock; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_cache = mem_6_cache; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_prot = mem_6_prot; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_qos = mem_6_qos; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_id = mem_7_id; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_addr = mem_7_addr; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_len = mem_7_len; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_size = mem_7_size; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_burst = mem_7_burst; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_lock = mem_7_lock; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_cache = mem_7_cache; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_prot = mem_7_prot; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_qos = mem_7_qos; // @[AsyncQueue.scala 96:31]
  assign io_async_widx = widx_gray; // @[AsyncQueue.scala 92:17]
  assign io_async_safe_widx_valid = source_valid_1_io_out; // @[AsyncQueue.scala 117:20]
  assign io_async_safe_source_reset_n = ~reset; // @[AsyncQueue.scala 121:27]
  assign ridx_ridx_gray_clock = clock;
  assign ridx_ridx_gray_reset = reset;
  assign ridx_ridx_gray_io_d = io_async_ridx; // @[ShiftReg.scala 47:16]
  assign source_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 115:26]
  assign source_valid_0_clock = clock; // @[AsyncQueue.scala 110:26]
  assign source_valid_0_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 105:65]
  assign source_valid_1_io_in = source_valid_0_io_out; // @[AsyncQueue.scala 116:26]
  assign source_valid_1_clock = clock; // @[AsyncQueue.scala 111:26]
  assign source_valid_1_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 106:65]
  assign sink_extend_io_in = io_async_safe_ridx_valid; // @[AsyncQueue.scala 118:23]
  assign sink_extend_clock = clock; // @[AsyncQueue.scala 112:26]
  assign sink_extend_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 107:65]
  assign sink_valid_io_in = sink_extend_io_out; // @[AsyncQueue.scala 119:22]
  assign sink_valid_clock = clock; // @[AsyncQueue.scala 113:26]
  assign sink_valid_reset = reset; // @[AsyncQueue.scala 108:35]
  always @(posedge clock) begin
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_addr <= io_enq_bits_addr; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_len <= io_enq_bits_len; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_size <= io_enq_bits_size; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_burst <= io_enq_bits_burst; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_lock <= io_enq_bits_lock; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_cache <= io_enq_bits_cache; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_prot <= io_enq_bits_prot; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_qos <= io_enq_bits_qos; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_addr <= io_enq_bits_addr; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_len <= io_enq_bits_len; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_size <= io_enq_bits_size; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_burst <= io_enq_bits_burst; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_lock <= io_enq_bits_lock; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_cache <= io_enq_bits_cache; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_prot <= io_enq_bits_prot; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_qos <= io_enq_bits_qos; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_addr <= io_enq_bits_addr; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_len <= io_enq_bits_len; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_size <= io_enq_bits_size; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_burst <= io_enq_bits_burst; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_lock <= io_enq_bits_lock; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_cache <= io_enq_bits_cache; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_prot <= io_enq_bits_prot; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_qos <= io_enq_bits_qos; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_addr <= io_enq_bits_addr; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_len <= io_enq_bits_len; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_size <= io_enq_bits_size; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_burst <= io_enq_bits_burst; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_lock <= io_enq_bits_lock; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_cache <= io_enq_bits_cache; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_prot <= io_enq_bits_prot; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_qos <= io_enq_bits_qos; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_addr <= io_enq_bits_addr; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_len <= io_enq_bits_len; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_size <= io_enq_bits_size; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_burst <= io_enq_bits_burst; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_lock <= io_enq_bits_lock; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_cache <= io_enq_bits_cache; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_prot <= io_enq_bits_prot; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_qos <= io_enq_bits_qos; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_addr <= io_enq_bits_addr; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_len <= io_enq_bits_len; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_size <= io_enq_bits_size; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_burst <= io_enq_bits_burst; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_lock <= io_enq_bits_lock; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_cache <= io_enq_bits_cache; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_prot <= io_enq_bits_prot; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_qos <= io_enq_bits_qos; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_addr <= io_enq_bits_addr; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_len <= io_enq_bits_len; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_size <= io_enq_bits_size; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_burst <= io_enq_bits_burst; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_lock <= io_enq_bits_lock; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_cache <= io_enq_bits_cache; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_prot <= io_enq_bits_prot; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_qos <= io_enq_bits_qos; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_id <= io_enq_bits_id; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_addr <= io_enq_bits_addr; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_len <= io_enq_bits_len; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_size <= io_enq_bits_size; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_burst <= io_enq_bits_burst; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_lock <= io_enq_bits_lock; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_cache <= io_enq_bits_cache; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_prot <= io_enq_bits_prot; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_qos <= io_enq_bits_qos; // @[AsyncQueue.scala 86:37]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 53:23]
      widx_widx_bin <= 4'h0;
    end else if (_widx_T_2) begin
      widx_widx_bin <= 4'h0;
    end else begin
      widx_widx_bin <= _widx_incremented_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 83:26]
      ready_reg <= 1'h0;
    end else begin
      ready_reg <= sink_ready & widx != _ready_T;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 54:17]
      widx_gray <= 4'h0;
    end else begin
      widx_gray <= widx_incremented ^ _GEN_145;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  mem_0_id = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  mem_0_addr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_len = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  mem_0_size = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  mem_0_burst = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  mem_0_lock = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  mem_0_cache = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  mem_0_prot = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  mem_0_qos = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  mem_1_id = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  mem_1_addr = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  mem_1_len = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  mem_1_size = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  mem_1_burst = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  mem_1_lock = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  mem_1_cache = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  mem_1_prot = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  mem_1_qos = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  mem_2_id = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  mem_2_addr = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  mem_2_len = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  mem_2_size = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  mem_2_burst = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  mem_2_lock = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  mem_2_cache = _RAND_24[3:0];
  _RAND_25 = {1{`RANDOM}};
  mem_2_prot = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  mem_2_qos = _RAND_26[3:0];
  _RAND_27 = {1{`RANDOM}};
  mem_3_id = _RAND_27[3:0];
  _RAND_28 = {1{`RANDOM}};
  mem_3_addr = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  mem_3_len = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  mem_3_size = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  mem_3_burst = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  mem_3_lock = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  mem_3_cache = _RAND_33[3:0];
  _RAND_34 = {1{`RANDOM}};
  mem_3_prot = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  mem_3_qos = _RAND_35[3:0];
  _RAND_36 = {1{`RANDOM}};
  mem_4_id = _RAND_36[3:0];
  _RAND_37 = {1{`RANDOM}};
  mem_4_addr = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  mem_4_len = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  mem_4_size = _RAND_39[2:0];
  _RAND_40 = {1{`RANDOM}};
  mem_4_burst = _RAND_40[1:0];
  _RAND_41 = {1{`RANDOM}};
  mem_4_lock = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  mem_4_cache = _RAND_42[3:0];
  _RAND_43 = {1{`RANDOM}};
  mem_4_prot = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  mem_4_qos = _RAND_44[3:0];
  _RAND_45 = {1{`RANDOM}};
  mem_5_id = _RAND_45[3:0];
  _RAND_46 = {1{`RANDOM}};
  mem_5_addr = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  mem_5_len = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  mem_5_size = _RAND_48[2:0];
  _RAND_49 = {1{`RANDOM}};
  mem_5_burst = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  mem_5_lock = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  mem_5_cache = _RAND_51[3:0];
  _RAND_52 = {1{`RANDOM}};
  mem_5_prot = _RAND_52[2:0];
  _RAND_53 = {1{`RANDOM}};
  mem_5_qos = _RAND_53[3:0];
  _RAND_54 = {1{`RANDOM}};
  mem_6_id = _RAND_54[3:0];
  _RAND_55 = {1{`RANDOM}};
  mem_6_addr = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  mem_6_len = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  mem_6_size = _RAND_57[2:0];
  _RAND_58 = {1{`RANDOM}};
  mem_6_burst = _RAND_58[1:0];
  _RAND_59 = {1{`RANDOM}};
  mem_6_lock = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  mem_6_cache = _RAND_60[3:0];
  _RAND_61 = {1{`RANDOM}};
  mem_6_prot = _RAND_61[2:0];
  _RAND_62 = {1{`RANDOM}};
  mem_6_qos = _RAND_62[3:0];
  _RAND_63 = {1{`RANDOM}};
  mem_7_id = _RAND_63[3:0];
  _RAND_64 = {1{`RANDOM}};
  mem_7_addr = _RAND_64[31:0];
  _RAND_65 = {1{`RANDOM}};
  mem_7_len = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  mem_7_size = _RAND_66[2:0];
  _RAND_67 = {1{`RANDOM}};
  mem_7_burst = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  mem_7_lock = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  mem_7_cache = _RAND_69[3:0];
  _RAND_70 = {1{`RANDOM}};
  mem_7_prot = _RAND_70[2:0];
  _RAND_71 = {1{`RANDOM}};
  mem_7_qos = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  widx_widx_bin = _RAND_72[3:0];
  _RAND_73 = {1{`RANDOM}};
  ready_reg = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  widx_gray = _RAND_74[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    widx_widx_bin = 4'h0;
  end
  if (reset) begin
    ready_reg = 1'h0;
  end
  if (reset) begin
    widx_gray = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncQueueSource_4_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [63:0] io_enq_bits_data,
  input  [7:0]  io_enq_bits_strb,
  input         io_enq_bits_last,
  output [63:0] io_async_mem_0_data,
  output [7:0]  io_async_mem_0_strb,
  output        io_async_mem_0_last,
  output [63:0] io_async_mem_1_data,
  output [7:0]  io_async_mem_1_strb,
  output        io_async_mem_1_last,
  output [63:0] io_async_mem_2_data,
  output [7:0]  io_async_mem_2_strb,
  output        io_async_mem_2_last,
  output [63:0] io_async_mem_3_data,
  output [7:0]  io_async_mem_3_strb,
  output        io_async_mem_3_last,
  output [63:0] io_async_mem_4_data,
  output [7:0]  io_async_mem_4_strb,
  output        io_async_mem_4_last,
  output [63:0] io_async_mem_5_data,
  output [7:0]  io_async_mem_5_strb,
  output        io_async_mem_5_last,
  output [63:0] io_async_mem_6_data,
  output [7:0]  io_async_mem_6_strb,
  output        io_async_mem_6_last,
  output [63:0] io_async_mem_7_data,
  output [7:0]  io_async_mem_7_strb,
  output        io_async_mem_7_last,
  input  [3:0]  io_async_ridx,
  output [3:0]  io_async_widx,
  input         io_async_safe_ridx_valid,
  output        io_async_safe_widx_valid,
  output        io_async_safe_source_reset_n,
  input         io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
`endif // RANDOMIZE_REG_INIT
  wire  ridx_ridx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  ridx_ridx_gray_reset; // @[ShiftReg.scala 45:23]
  wire [3:0] ridx_ridx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire [3:0] ridx_ridx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  source_valid_0_io_in; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_io_out; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_clock; // @[AsyncQueue.scala 100:32]
  wire  source_valid_0_reset; // @[AsyncQueue.scala 100:32]
  wire  source_valid_1_io_in; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_io_out; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_clock; // @[AsyncQueue.scala 101:32]
  wire  source_valid_1_reset; // @[AsyncQueue.scala 101:32]
  wire  sink_extend_io_in; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_io_out; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_clock; // @[AsyncQueue.scala 103:30]
  wire  sink_extend_reset; // @[AsyncQueue.scala 103:30]
  wire  sink_valid_io_in; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_io_out; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_clock; // @[AsyncQueue.scala 104:30]
  wire  sink_valid_reset; // @[AsyncQueue.scala 104:30]
  reg [63:0] mem_0_data; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_0_strb; // @[AsyncQueue.scala 80:16]
  reg  mem_0_last; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_1_data; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_1_strb; // @[AsyncQueue.scala 80:16]
  reg  mem_1_last; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_2_data; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_2_strb; // @[AsyncQueue.scala 80:16]
  reg  mem_2_last; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_3_data; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_3_strb; // @[AsyncQueue.scala 80:16]
  reg  mem_3_last; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_4_data; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_4_strb; // @[AsyncQueue.scala 80:16]
  reg  mem_4_last; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_5_data; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_5_strb; // @[AsyncQueue.scala 80:16]
  reg  mem_5_last; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_6_data; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_6_strb; // @[AsyncQueue.scala 80:16]
  reg  mem_6_last; // @[AsyncQueue.scala 80:16]
  reg [63:0] mem_7_data; // @[AsyncQueue.scala 80:16]
  reg [7:0] mem_7_strb; // @[AsyncQueue.scala 80:16]
  reg  mem_7_last; // @[AsyncQueue.scala 80:16]
  wire  _widx_T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  sink_ready = sink_valid_io_out;
  wire  _widx_T_2 = ~sink_ready; // @[AsyncQueue.scala 81:79]
  reg [3:0] widx_widx_bin; // @[AsyncQueue.scala 52:25]
  wire [3:0] _GEN_48 = {{3'd0}, _widx_T_1}; // @[AsyncQueue.scala 53:43]
  wire [3:0] _widx_incremented_T_1 = widx_widx_bin + _GEN_48; // @[AsyncQueue.scala 53:43]
  wire [3:0] widx_incremented = _widx_T_2 ? 4'h0 : _widx_incremented_T_1; // @[AsyncQueue.scala 53:23]
  wire [3:0] _GEN_49 = {{1'd0}, widx_incremented[3:1]}; // @[AsyncQueue.scala 54:17]
  wire [3:0] widx = widx_incremented ^ _GEN_49; // @[AsyncQueue.scala 54:17]
  wire [3:0] ridx = ridx_ridx_gray_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [3:0] _ready_T = ridx ^ 4'hc; // @[AsyncQueue.scala 83:44]
  wire [2:0] _index_T_2 = {io_async_widx[3], 2'h0}; // @[AsyncQueue.scala 85:93]
  wire [2:0] index = io_async_widx[2:0] ^ _index_T_2; // @[AsyncQueue.scala 85:64]
  reg  ready_reg; // @[AsyncQueue.scala 88:56]
  reg [3:0] widx_gray; // @[AsyncQueue.scala 91:55]
  AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness ridx_ridx_gray ( // @[ShiftReg.scala 45:23]
    .clock(ridx_ridx_gray_clock),
    .reset(ridx_ridx_gray_reset),
    .io_d(ridx_ridx_gray_io_d),
    .io_q(ridx_ridx_gray_io_q)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid_0 ( // @[AsyncQueue.scala 100:32]
    .io_in(source_valid_0_io_in),
    .io_out(source_valid_0_io_out),
    .clock(source_valid_0_clock),
    .reset(source_valid_0_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid_1 ( // @[AsyncQueue.scala 101:32]
    .io_in(source_valid_1_io_in),
    .io_out(source_valid_1_io_out),
    .clock(source_valid_1_clock),
    .reset(source_valid_1_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_extend ( // @[AsyncQueue.scala 103:30]
    .io_in(sink_extend_io_in),
    .io_out(sink_extend_io_out),
    .clock(sink_extend_clock),
    .reset(sink_extend_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid ( // @[AsyncQueue.scala 104:30]
    .io_in(sink_valid_io_in),
    .io_out(sink_valid_io_out),
    .clock(sink_valid_clock),
    .reset(sink_valid_reset)
  );
  assign io_enq_ready = ready_reg & sink_ready; // @[AsyncQueue.scala 89:29]
  assign io_async_mem_0_data = mem_0_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_strb = mem_0_strb; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_0_last = mem_0_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_data = mem_1_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_strb = mem_1_strb; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_1_last = mem_1_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_data = mem_2_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_strb = mem_2_strb; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_2_last = mem_2_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_data = mem_3_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_strb = mem_3_strb; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_3_last = mem_3_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_data = mem_4_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_strb = mem_4_strb; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_4_last = mem_4_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_data = mem_5_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_strb = mem_5_strb; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_5_last = mem_5_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_data = mem_6_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_strb = mem_6_strb; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_6_last = mem_6_last; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_data = mem_7_data; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_strb = mem_7_strb; // @[AsyncQueue.scala 96:31]
  assign io_async_mem_7_last = mem_7_last; // @[AsyncQueue.scala 96:31]
  assign io_async_widx = widx_gray; // @[AsyncQueue.scala 92:17]
  assign io_async_safe_widx_valid = source_valid_1_io_out; // @[AsyncQueue.scala 117:20]
  assign io_async_safe_source_reset_n = ~reset; // @[AsyncQueue.scala 121:27]
  assign ridx_ridx_gray_clock = clock;
  assign ridx_ridx_gray_reset = reset;
  assign ridx_ridx_gray_io_d = io_async_ridx; // @[ShiftReg.scala 47:16]
  assign source_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 115:26]
  assign source_valid_0_clock = clock; // @[AsyncQueue.scala 110:26]
  assign source_valid_0_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 105:65]
  assign source_valid_1_io_in = source_valid_0_io_out; // @[AsyncQueue.scala 116:26]
  assign source_valid_1_clock = clock; // @[AsyncQueue.scala 111:26]
  assign source_valid_1_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 106:65]
  assign sink_extend_io_in = io_async_safe_ridx_valid; // @[AsyncQueue.scala 118:23]
  assign sink_extend_clock = clock; // @[AsyncQueue.scala 112:26]
  assign sink_extend_reset = reset | ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 107:65]
  assign sink_valid_io_in = sink_extend_io_out; // @[AsyncQueue.scala 119:22]
  assign sink_valid_clock = clock; // @[AsyncQueue.scala 113:26]
  assign sink_valid_reset = reset; // @[AsyncQueue.scala 108:35]
  always @(posedge clock) begin
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_strb <= io_enq_bits_strb; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h0 == index) begin // @[AsyncQueue.scala 86:37]
        mem_0_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_strb <= io_enq_bits_strb; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h1 == index) begin // @[AsyncQueue.scala 86:37]
        mem_1_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_strb <= io_enq_bits_strb; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h2 == index) begin // @[AsyncQueue.scala 86:37]
        mem_2_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_strb <= io_enq_bits_strb; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h3 == index) begin // @[AsyncQueue.scala 86:37]
        mem_3_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_strb <= io_enq_bits_strb; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h4 == index) begin // @[AsyncQueue.scala 86:37]
        mem_4_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_strb <= io_enq_bits_strb; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h5 == index) begin // @[AsyncQueue.scala 86:37]
        mem_5_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_strb <= io_enq_bits_strb; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h6 == index) begin // @[AsyncQueue.scala 86:37]
        mem_6_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_data <= io_enq_bits_data; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_strb <= io_enq_bits_strb; // @[AsyncQueue.scala 86:37]
      end
    end
    if (_widx_T_1) begin // @[AsyncQueue.scala 86:24]
      if (3'h7 == index) begin // @[AsyncQueue.scala 86:37]
        mem_7_last <= io_enq_bits_last; // @[AsyncQueue.scala 86:37]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 53:23]
      widx_widx_bin <= 4'h0;
    end else if (_widx_T_2) begin
      widx_widx_bin <= 4'h0;
    end else begin
      widx_widx_bin <= _widx_incremented_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 83:26]
      ready_reg <= 1'h0;
    end else begin
      ready_reg <= sink_ready & widx != _ready_T;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 54:17]
      widx_gray <= 4'h0;
    end else begin
      widx_gray <= widx_incremented ^ _GEN_49;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  mem_0_data = _RAND_0[63:0];
  _RAND_1 = {1{`RANDOM}};
  mem_0_strb = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_last = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  mem_1_data = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  mem_1_strb = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  mem_1_last = _RAND_5[0:0];
  _RAND_6 = {2{`RANDOM}};
  mem_2_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  mem_2_strb = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  mem_2_last = _RAND_8[0:0];
  _RAND_9 = {2{`RANDOM}};
  mem_3_data = _RAND_9[63:0];
  _RAND_10 = {1{`RANDOM}};
  mem_3_strb = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  mem_3_last = _RAND_11[0:0];
  _RAND_12 = {2{`RANDOM}};
  mem_4_data = _RAND_12[63:0];
  _RAND_13 = {1{`RANDOM}};
  mem_4_strb = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  mem_4_last = _RAND_14[0:0];
  _RAND_15 = {2{`RANDOM}};
  mem_5_data = _RAND_15[63:0];
  _RAND_16 = {1{`RANDOM}};
  mem_5_strb = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  mem_5_last = _RAND_17[0:0];
  _RAND_18 = {2{`RANDOM}};
  mem_6_data = _RAND_18[63:0];
  _RAND_19 = {1{`RANDOM}};
  mem_6_strb = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  mem_6_last = _RAND_20[0:0];
  _RAND_21 = {2{`RANDOM}};
  mem_7_data = _RAND_21[63:0];
  _RAND_22 = {1{`RANDOM}};
  mem_7_strb = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  mem_7_last = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  widx_widx_bin = _RAND_24[3:0];
  _RAND_25 = {1{`RANDOM}};
  ready_reg = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  widx_gray = _RAND_26[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    widx_widx_bin = 4'h0;
  end
  if (reset) begin
    ready_reg = 1'h0;
  end
  if (reset) begin
    widx_gray = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ClockCrossingReg_w71_inVCU118FPGATestHarness(
  input         clock,
  input  [70:0] io_d,
  output [70:0] io_q,
  input         io_en
);
`ifdef RANDOMIZE_REG_INIT
  reg [95:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [70:0] cdc_reg; // @[Reg.scala 16:16]
  assign io_q = cdc_reg; // @[SynchronizerReg.scala 202:8]
  always @(posedge clock) begin
    if (io_en) begin // @[Reg.scala 17:18]
      cdc_reg <= io_d; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {3{`RANDOM}};
  cdc_reg = _RAND_0[70:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncQueueSink_3_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  input         io_deq_ready,
  output        io_deq_valid,
  output [3:0]  io_deq_bits_id,
  output [63:0] io_deq_bits_data,
  output [1:0]  io_deq_bits_resp,
  output        io_deq_bits_last,
  input  [3:0]  io_async_mem_0_id,
  input  [63:0] io_async_mem_0_data,
  input  [1:0]  io_async_mem_0_resp,
  input         io_async_mem_0_last,
  input  [3:0]  io_async_mem_1_id,
  input  [63:0] io_async_mem_1_data,
  input  [1:0]  io_async_mem_1_resp,
  input         io_async_mem_1_last,
  input  [3:0]  io_async_mem_2_id,
  input  [63:0] io_async_mem_2_data,
  input  [1:0]  io_async_mem_2_resp,
  input         io_async_mem_2_last,
  input  [3:0]  io_async_mem_3_id,
  input  [63:0] io_async_mem_3_data,
  input  [1:0]  io_async_mem_3_resp,
  input         io_async_mem_3_last,
  input  [3:0]  io_async_mem_4_id,
  input  [63:0] io_async_mem_4_data,
  input  [1:0]  io_async_mem_4_resp,
  input         io_async_mem_4_last,
  input  [3:0]  io_async_mem_5_id,
  input  [63:0] io_async_mem_5_data,
  input  [1:0]  io_async_mem_5_resp,
  input         io_async_mem_5_last,
  input  [3:0]  io_async_mem_6_id,
  input  [63:0] io_async_mem_6_data,
  input  [1:0]  io_async_mem_6_resp,
  input         io_async_mem_6_last,
  input  [3:0]  io_async_mem_7_id,
  input  [63:0] io_async_mem_7_data,
  input  [1:0]  io_async_mem_7_resp,
  input         io_async_mem_7_last,
  output [3:0]  io_async_ridx,
  input  [3:0]  io_async_widx,
  output        io_async_safe_ridx_valid,
  input         io_async_safe_widx_valid,
  input         io_async_safe_source_reset_n,
  output        io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  widx_widx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  widx_widx_gray_reset; // @[ShiftReg.scala 45:23]
  wire [3:0] widx_widx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire [3:0] widx_widx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  io_deq_bits_deq_bits_reg_clock; // @[SynchronizerReg.scala 207:25]
  wire [70:0] io_deq_bits_deq_bits_reg_io_d; // @[SynchronizerReg.scala 207:25]
  wire [70:0] io_deq_bits_deq_bits_reg_io_q; // @[SynchronizerReg.scala 207:25]
  wire  io_deq_bits_deq_bits_reg_io_en; // @[SynchronizerReg.scala 207:25]
  wire  sink_valid_0_io_in; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_io_out; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_clock; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_reset; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_1_io_in; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_io_out; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_clock; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_reset; // @[AsyncQueue.scala 169:33]
  wire  source_extend_io_in; // @[AsyncQueue.scala 171:31]
  wire  source_extend_io_out; // @[AsyncQueue.scala 171:31]
  wire  source_extend_clock; // @[AsyncQueue.scala 171:31]
  wire  source_extend_reset; // @[AsyncQueue.scala 171:31]
  wire  source_valid_io_in; // @[AsyncQueue.scala 172:31]
  wire  source_valid_io_out; // @[AsyncQueue.scala 172:31]
  wire  source_valid_clock; // @[AsyncQueue.scala 172:31]
  wire  source_valid_reset; // @[AsyncQueue.scala 172:31]
  wire  _ridx_T_1 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  source_ready = source_valid_io_out;
  wire  _ridx_T_2 = ~source_ready; // @[AsyncQueue.scala 144:79]
  reg [3:0] ridx_ridx_bin; // @[AsyncQueue.scala 52:25]
  wire [3:0] _GEN_32 = {{3'd0}, _ridx_T_1}; // @[AsyncQueue.scala 53:43]
  wire [3:0] _ridx_incremented_T_1 = ridx_ridx_bin + _GEN_32; // @[AsyncQueue.scala 53:43]
  wire [3:0] ridx_incremented = _ridx_T_2 ? 4'h0 : _ridx_incremented_T_1; // @[AsyncQueue.scala 53:23]
  wire [3:0] _GEN_33 = {{1'd0}, ridx_incremented[3:1]}; // @[AsyncQueue.scala 54:17]
  wire [3:0] ridx = ridx_incremented ^ _GEN_33; // @[AsyncQueue.scala 54:17]
  wire [3:0] widx = widx_widx_gray_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [2:0] _index_T_2 = {ridx[3], 2'h0}; // @[AsyncQueue.scala 152:75]
  wire [2:0] index = ridx[2:0] ^ _index_T_2; // @[AsyncQueue.scala 152:55]
  wire [1:0] _GEN_1 = 3'h1 == index ? io_async_mem_1_resp : io_async_mem_0_resp; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_2 = 3'h2 == index ? io_async_mem_2_resp : _GEN_1; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_3 = 3'h3 == index ? io_async_mem_3_resp : _GEN_2; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_4 = 3'h4 == index ? io_async_mem_4_resp : _GEN_3; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_5 = 3'h5 == index ? io_async_mem_5_resp : _GEN_4; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_6 = 3'h6 == index ? io_async_mem_6_resp : _GEN_5; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_7 = 3'h7 == index ? io_async_mem_7_resp : _GEN_6; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_9 = 3'h1 == index ? io_async_mem_1_last : io_async_mem_0_last; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_10 = 3'h2 == index ? io_async_mem_2_last : _GEN_9; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_11 = 3'h3 == index ? io_async_mem_3_last : _GEN_10; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_12 = 3'h4 == index ? io_async_mem_4_last : _GEN_11; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_13 = 3'h5 == index ? io_async_mem_5_last : _GEN_12; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_14 = 3'h6 == index ? io_async_mem_6_last : _GEN_13; // @[SynchronizerReg.scala 209:{24,24}]
  wire  _GEN_15 = 3'h7 == index ? io_async_mem_7_last : _GEN_14; // @[SynchronizerReg.scala 209:{24,24}]
  wire [2:0] io_deq_bits_deq_bits_reg_io_d_lo = {_GEN_7,_GEN_15}; // @[SynchronizerReg.scala 209:24]
  wire [3:0] _GEN_17 = 3'h1 == index ? io_async_mem_1_id : io_async_mem_0_id; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_18 = 3'h2 == index ? io_async_mem_2_id : _GEN_17; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_19 = 3'h3 == index ? io_async_mem_3_id : _GEN_18; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_20 = 3'h4 == index ? io_async_mem_4_id : _GEN_19; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_21 = 3'h5 == index ? io_async_mem_5_id : _GEN_20; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_22 = 3'h6 == index ? io_async_mem_6_id : _GEN_21; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_23 = 3'h7 == index ? io_async_mem_7_id : _GEN_22; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_25 = 3'h1 == index ? io_async_mem_1_data : io_async_mem_0_data; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_26 = 3'h2 == index ? io_async_mem_2_data : _GEN_25; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_27 = 3'h3 == index ? io_async_mem_3_data : _GEN_26; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_28 = 3'h4 == index ? io_async_mem_4_data : _GEN_27; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_29 = 3'h5 == index ? io_async_mem_5_data : _GEN_28; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_30 = 3'h6 == index ? io_async_mem_6_data : _GEN_29; // @[SynchronizerReg.scala 209:{24,24}]
  wire [63:0] _GEN_31 = 3'h7 == index ? io_async_mem_7_data : _GEN_30; // @[SynchronizerReg.scala 209:{24,24}]
  wire [67:0] io_deq_bits_deq_bits_reg_io_d_hi = {_GEN_23,_GEN_31}; // @[SynchronizerReg.scala 209:24]
  wire [70:0] _io_deq_bits_WIRE_1 = io_deq_bits_deq_bits_reg_io_q;
  reg  valid_reg; // @[AsyncQueue.scala 161:56]
  reg [3:0] ridx_gray; // @[AsyncQueue.scala 164:55]
  AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness widx_widx_gray ( // @[ShiftReg.scala 45:23]
    .clock(widx_widx_gray_clock),
    .reset(widx_widx_gray_reset),
    .io_d(widx_widx_gray_io_d),
    .io_q(widx_widx_gray_io_q)
  );
  ClockCrossingReg_w71_inVCU118FPGATestHarness io_deq_bits_deq_bits_reg ( // @[SynchronizerReg.scala 207:25]
    .clock(io_deq_bits_deq_bits_reg_clock),
    .io_d(io_deq_bits_deq_bits_reg_io_d),
    .io_q(io_deq_bits_deq_bits_reg_io_q),
    .io_en(io_deq_bits_deq_bits_reg_io_en)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid_0 ( // @[AsyncQueue.scala 168:33]
    .io_in(sink_valid_0_io_in),
    .io_out(sink_valid_0_io_out),
    .clock(sink_valid_0_clock),
    .reset(sink_valid_0_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid_1 ( // @[AsyncQueue.scala 169:33]
    .io_in(sink_valid_1_io_in),
    .io_out(sink_valid_1_io_out),
    .clock(sink_valid_1_clock),
    .reset(sink_valid_1_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_extend ( // @[AsyncQueue.scala 171:31]
    .io_in(source_extend_io_in),
    .io_out(source_extend_io_out),
    .clock(source_extend_clock),
    .reset(source_extend_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid ( // @[AsyncQueue.scala 172:31]
    .io_in(source_valid_io_in),
    .io_out(source_valid_io_out),
    .clock(source_valid_clock),
    .reset(source_valid_reset)
  );
  assign io_deq_valid = valid_reg & source_ready; // @[AsyncQueue.scala 162:29]
  assign io_deq_bits_id = _io_deq_bits_WIRE_1[70:67]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_data = _io_deq_bits_WIRE_1[66:3]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_resp = _io_deq_bits_WIRE_1[2:1]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_last = _io_deq_bits_WIRE_1[0]; // @[SynchronizerReg.scala 211:26]
  assign io_async_ridx = ridx_gray; // @[AsyncQueue.scala 165:17]
  assign io_async_safe_ridx_valid = sink_valid_1_io_out; // @[AsyncQueue.scala 185:20]
  assign io_async_safe_sink_reset_n = ~reset; // @[AsyncQueue.scala 189:25]
  assign widx_widx_gray_clock = clock;
  assign widx_widx_gray_reset = reset;
  assign widx_widx_gray_io_d = io_async_widx; // @[ShiftReg.scala 47:16]
  assign io_deq_bits_deq_bits_reg_clock = clock;
  assign io_deq_bits_deq_bits_reg_io_d = {io_deq_bits_deq_bits_reg_io_d_hi,io_deq_bits_deq_bits_reg_io_d_lo}; // @[SynchronizerReg.scala 209:24]
  assign io_deq_bits_deq_bits_reg_io_en = source_ready & ridx != widx; // @[AsyncQueue.scala 146:28]
  assign sink_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 183:24]
  assign sink_valid_0_clock = clock; // @[AsyncQueue.scala 178:25]
  assign sink_valid_0_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 173:66]
  assign sink_valid_1_io_in = sink_valid_0_io_out; // @[AsyncQueue.scala 184:24]
  assign sink_valid_1_clock = clock; // @[AsyncQueue.scala 179:25]
  assign sink_valid_1_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 174:66]
  assign source_extend_io_in = io_async_safe_widx_valid; // @[AsyncQueue.scala 186:25]
  assign source_extend_clock = clock; // @[AsyncQueue.scala 180:25]
  assign source_extend_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 175:66]
  assign source_valid_io_in = source_extend_io_out; // @[AsyncQueue.scala 187:24]
  assign source_valid_clock = clock; // @[AsyncQueue.scala 181:25]
  assign source_valid_reset = reset; // @[AsyncQueue.scala 176:34]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 53:23]
      ridx_ridx_bin <= 4'h0;
    end else if (_ridx_T_2) begin
      ridx_ridx_bin <= 4'h0;
    end else begin
      ridx_ridx_bin <= _ridx_incremented_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 146:28]
      valid_reg <= 1'h0;
    end else begin
      valid_reg <= source_ready & ridx != widx;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 54:17]
      ridx_gray <= 4'h0;
    end else begin
      ridx_gray <= ridx_incremented ^ _GEN_33;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ridx_ridx_bin = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ridx_gray = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ridx_ridx_bin = 4'h0;
  end
  if (reset) begin
    valid_reg = 1'h0;
  end
  if (reset) begin
    ridx_gray = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ClockCrossingReg_w6_inVCU118FPGATestHarness(
  input        clock,
  input  [5:0] io_d,
  output [5:0] io_q,
  input        io_en
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [5:0] cdc_reg; // @[Reg.scala 16:16]
  assign io_q = cdc_reg; // @[SynchronizerReg.scala 202:8]
  always @(posedge clock) begin
    if (io_en) begin // @[Reg.scala 17:18]
      cdc_reg <= io_d; // @[Reg.scala 17:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cdc_reg = _RAND_0[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AsyncQueueSink_4_inVCU118FPGATestHarness(
  input        clock,
  input        reset,
  input        io_deq_ready,
  output       io_deq_valid,
  output [3:0] io_deq_bits_id,
  output [1:0] io_deq_bits_resp,
  input  [3:0] io_async_mem_0_id,
  input  [1:0] io_async_mem_0_resp,
  input  [3:0] io_async_mem_1_id,
  input  [1:0] io_async_mem_1_resp,
  input  [3:0] io_async_mem_2_id,
  input  [1:0] io_async_mem_2_resp,
  input  [3:0] io_async_mem_3_id,
  input  [1:0] io_async_mem_3_resp,
  input  [3:0] io_async_mem_4_id,
  input  [1:0] io_async_mem_4_resp,
  input  [3:0] io_async_mem_5_id,
  input  [1:0] io_async_mem_5_resp,
  input  [3:0] io_async_mem_6_id,
  input  [1:0] io_async_mem_6_resp,
  input  [3:0] io_async_mem_7_id,
  input  [1:0] io_async_mem_7_resp,
  output [3:0] io_async_ridx,
  input  [3:0] io_async_widx,
  output       io_async_safe_ridx_valid,
  input        io_async_safe_widx_valid,
  input        io_async_safe_source_reset_n,
  output       io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  widx_widx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  widx_widx_gray_reset; // @[ShiftReg.scala 45:23]
  wire [3:0] widx_widx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire [3:0] widx_widx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  io_deq_bits_deq_bits_reg_clock; // @[SynchronizerReg.scala 207:25]
  wire [5:0] io_deq_bits_deq_bits_reg_io_d; // @[SynchronizerReg.scala 207:25]
  wire [5:0] io_deq_bits_deq_bits_reg_io_q; // @[SynchronizerReg.scala 207:25]
  wire  io_deq_bits_deq_bits_reg_io_en; // @[SynchronizerReg.scala 207:25]
  wire  sink_valid_0_io_in; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_io_out; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_clock; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_reset; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_1_io_in; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_io_out; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_clock; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_reset; // @[AsyncQueue.scala 169:33]
  wire  source_extend_io_in; // @[AsyncQueue.scala 171:31]
  wire  source_extend_io_out; // @[AsyncQueue.scala 171:31]
  wire  source_extend_clock; // @[AsyncQueue.scala 171:31]
  wire  source_extend_reset; // @[AsyncQueue.scala 171:31]
  wire  source_valid_io_in; // @[AsyncQueue.scala 172:31]
  wire  source_valid_io_out; // @[AsyncQueue.scala 172:31]
  wire  source_valid_clock; // @[AsyncQueue.scala 172:31]
  wire  source_valid_reset; // @[AsyncQueue.scala 172:31]
  wire  _ridx_T_1 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire  source_ready = source_valid_io_out;
  wire  _ridx_T_2 = ~source_ready; // @[AsyncQueue.scala 144:79]
  reg [3:0] ridx_ridx_bin; // @[AsyncQueue.scala 52:25]
  wire [3:0] _GEN_16 = {{3'd0}, _ridx_T_1}; // @[AsyncQueue.scala 53:43]
  wire [3:0] _ridx_incremented_T_1 = ridx_ridx_bin + _GEN_16; // @[AsyncQueue.scala 53:43]
  wire [3:0] ridx_incremented = _ridx_T_2 ? 4'h0 : _ridx_incremented_T_1; // @[AsyncQueue.scala 53:23]
  wire [3:0] _GEN_17 = {{1'd0}, ridx_incremented[3:1]}; // @[AsyncQueue.scala 54:17]
  wire [3:0] ridx = ridx_incremented ^ _GEN_17; // @[AsyncQueue.scala 54:17]
  wire [3:0] widx = widx_widx_gray_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire [2:0] _index_T_2 = {ridx[3], 2'h0}; // @[AsyncQueue.scala 152:75]
  wire [2:0] index = ridx[2:0] ^ _index_T_2; // @[AsyncQueue.scala 152:55]
  wire [3:0] _GEN_1 = 3'h1 == index ? io_async_mem_1_id : io_async_mem_0_id; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_2 = 3'h2 == index ? io_async_mem_2_id : _GEN_1; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_3 = 3'h3 == index ? io_async_mem_3_id : _GEN_2; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_4 = 3'h4 == index ? io_async_mem_4_id : _GEN_3; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_5 = 3'h5 == index ? io_async_mem_5_id : _GEN_4; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_6 = 3'h6 == index ? io_async_mem_6_id : _GEN_5; // @[SynchronizerReg.scala 209:{24,24}]
  wire [3:0] _GEN_7 = 3'h7 == index ? io_async_mem_7_id : _GEN_6; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_9 = 3'h1 == index ? io_async_mem_1_resp : io_async_mem_0_resp; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_10 = 3'h2 == index ? io_async_mem_2_resp : _GEN_9; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_11 = 3'h3 == index ? io_async_mem_3_resp : _GEN_10; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_12 = 3'h4 == index ? io_async_mem_4_resp : _GEN_11; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_13 = 3'h5 == index ? io_async_mem_5_resp : _GEN_12; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_14 = 3'h6 == index ? io_async_mem_6_resp : _GEN_13; // @[SynchronizerReg.scala 209:{24,24}]
  wire [1:0] _GEN_15 = 3'h7 == index ? io_async_mem_7_resp : _GEN_14; // @[SynchronizerReg.scala 209:{24,24}]
  wire [5:0] _io_deq_bits_WIRE_1 = io_deq_bits_deq_bits_reg_io_q;
  reg  valid_reg; // @[AsyncQueue.scala 161:56]
  reg [3:0] ridx_gray; // @[AsyncQueue.scala 164:55]
  AsyncResetSynchronizerShiftReg_w4_d3_i0_inVCU118FPGATestHarness widx_widx_gray ( // @[ShiftReg.scala 45:23]
    .clock(widx_widx_gray_clock),
    .reset(widx_widx_gray_reset),
    .io_d(widx_widx_gray_io_d),
    .io_q(widx_widx_gray_io_q)
  );
  ClockCrossingReg_w6_inVCU118FPGATestHarness io_deq_bits_deq_bits_reg ( // @[SynchronizerReg.scala 207:25]
    .clock(io_deq_bits_deq_bits_reg_clock),
    .io_d(io_deq_bits_deq_bits_reg_io_d),
    .io_q(io_deq_bits_deq_bits_reg_io_q),
    .io_en(io_deq_bits_deq_bits_reg_io_en)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid_0 ( // @[AsyncQueue.scala 168:33]
    .io_in(sink_valid_0_io_in),
    .io_out(sink_valid_0_io_out),
    .clock(sink_valid_0_clock),
    .reset(sink_valid_0_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness sink_valid_1 ( // @[AsyncQueue.scala 169:33]
    .io_in(sink_valid_1_io_in),
    .io_out(sink_valid_1_io_out),
    .clock(sink_valid_1_clock),
    .reset(sink_valid_1_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_extend ( // @[AsyncQueue.scala 171:31]
    .io_in(source_extend_io_in),
    .io_out(source_extend_io_out),
    .clock(source_extend_clock),
    .reset(source_extend_reset)
  );
  AsyncValidSync_inVCU118FPGATestHarness source_valid ( // @[AsyncQueue.scala 172:31]
    .io_in(source_valid_io_in),
    .io_out(source_valid_io_out),
    .clock(source_valid_clock),
    .reset(source_valid_reset)
  );
  assign io_deq_valid = valid_reg & source_ready; // @[AsyncQueue.scala 162:29]
  assign io_deq_bits_id = _io_deq_bits_WIRE_1[5:2]; // @[SynchronizerReg.scala 211:26]
  assign io_deq_bits_resp = _io_deq_bits_WIRE_1[1:0]; // @[SynchronizerReg.scala 211:26]
  assign io_async_ridx = ridx_gray; // @[AsyncQueue.scala 165:17]
  assign io_async_safe_ridx_valid = sink_valid_1_io_out; // @[AsyncQueue.scala 185:20]
  assign io_async_safe_sink_reset_n = ~reset; // @[AsyncQueue.scala 189:25]
  assign widx_widx_gray_clock = clock;
  assign widx_widx_gray_reset = reset;
  assign widx_widx_gray_io_d = io_async_widx; // @[ShiftReg.scala 47:16]
  assign io_deq_bits_deq_bits_reg_clock = clock;
  assign io_deq_bits_deq_bits_reg_io_d = {_GEN_7,_GEN_15}; // @[SynchronizerReg.scala 209:24]
  assign io_deq_bits_deq_bits_reg_io_en = source_ready & ridx != widx; // @[AsyncQueue.scala 146:28]
  assign sink_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 183:24]
  assign sink_valid_0_clock = clock; // @[AsyncQueue.scala 178:25]
  assign sink_valid_0_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 173:66]
  assign sink_valid_1_io_in = sink_valid_0_io_out; // @[AsyncQueue.scala 184:24]
  assign sink_valid_1_clock = clock; // @[AsyncQueue.scala 179:25]
  assign sink_valid_1_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 174:66]
  assign source_extend_io_in = io_async_safe_widx_valid; // @[AsyncQueue.scala 186:25]
  assign source_extend_clock = clock; // @[AsyncQueue.scala 180:25]
  assign source_extend_reset = reset | ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 175:66]
  assign source_valid_io_in = source_extend_io_out; // @[AsyncQueue.scala 187:24]
  assign source_valid_clock = clock; // @[AsyncQueue.scala 181:25]
  assign source_valid_reset = reset; // @[AsyncQueue.scala 176:34]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 53:23]
      ridx_ridx_bin <= 4'h0;
    end else if (_ridx_T_2) begin
      ridx_ridx_bin <= 4'h0;
    end else begin
      ridx_ridx_bin <= _ridx_incremented_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 146:28]
      valid_reg <= 1'h0;
    end else begin
      valid_reg <= source_ready & ridx != widx;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[AsyncQueue.scala 54:17]
      ridx_gray <= 4'h0;
    end else begin
      ridx_gray <= ridx_incremented ^ _GEN_17;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ridx_ridx_bin = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ridx_gray = _RAND_2[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ridx_ridx_bin = 4'h0;
  end
  if (reset) begin
    valid_reg = 1'h0;
  end
  if (reset) begin
    ridx_gray = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AXI4AsyncCrossingSource_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  input  [3:0]  auto_in_aw_bits_qos,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input  [3:0]  auto_in_ar_bits_qos,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_last,
  output [3:0]  auto_out_aw_mem_0_id,
  output [31:0] auto_out_aw_mem_0_addr,
  output [7:0]  auto_out_aw_mem_0_len,
  output [2:0]  auto_out_aw_mem_0_size,
  output [1:0]  auto_out_aw_mem_0_burst,
  output        auto_out_aw_mem_0_lock,
  output [3:0]  auto_out_aw_mem_0_cache,
  output [2:0]  auto_out_aw_mem_0_prot,
  output [3:0]  auto_out_aw_mem_0_qos,
  output [3:0]  auto_out_aw_mem_1_id,
  output [31:0] auto_out_aw_mem_1_addr,
  output [7:0]  auto_out_aw_mem_1_len,
  output [2:0]  auto_out_aw_mem_1_size,
  output [1:0]  auto_out_aw_mem_1_burst,
  output        auto_out_aw_mem_1_lock,
  output [3:0]  auto_out_aw_mem_1_cache,
  output [2:0]  auto_out_aw_mem_1_prot,
  output [3:0]  auto_out_aw_mem_1_qos,
  output [3:0]  auto_out_aw_mem_2_id,
  output [31:0] auto_out_aw_mem_2_addr,
  output [7:0]  auto_out_aw_mem_2_len,
  output [2:0]  auto_out_aw_mem_2_size,
  output [1:0]  auto_out_aw_mem_2_burst,
  output        auto_out_aw_mem_2_lock,
  output [3:0]  auto_out_aw_mem_2_cache,
  output [2:0]  auto_out_aw_mem_2_prot,
  output [3:0]  auto_out_aw_mem_2_qos,
  output [3:0]  auto_out_aw_mem_3_id,
  output [31:0] auto_out_aw_mem_3_addr,
  output [7:0]  auto_out_aw_mem_3_len,
  output [2:0]  auto_out_aw_mem_3_size,
  output [1:0]  auto_out_aw_mem_3_burst,
  output        auto_out_aw_mem_3_lock,
  output [3:0]  auto_out_aw_mem_3_cache,
  output [2:0]  auto_out_aw_mem_3_prot,
  output [3:0]  auto_out_aw_mem_3_qos,
  output [3:0]  auto_out_aw_mem_4_id,
  output [31:0] auto_out_aw_mem_4_addr,
  output [7:0]  auto_out_aw_mem_4_len,
  output [2:0]  auto_out_aw_mem_4_size,
  output [1:0]  auto_out_aw_mem_4_burst,
  output        auto_out_aw_mem_4_lock,
  output [3:0]  auto_out_aw_mem_4_cache,
  output [2:0]  auto_out_aw_mem_4_prot,
  output [3:0]  auto_out_aw_mem_4_qos,
  output [3:0]  auto_out_aw_mem_5_id,
  output [31:0] auto_out_aw_mem_5_addr,
  output [7:0]  auto_out_aw_mem_5_len,
  output [2:0]  auto_out_aw_mem_5_size,
  output [1:0]  auto_out_aw_mem_5_burst,
  output        auto_out_aw_mem_5_lock,
  output [3:0]  auto_out_aw_mem_5_cache,
  output [2:0]  auto_out_aw_mem_5_prot,
  output [3:0]  auto_out_aw_mem_5_qos,
  output [3:0]  auto_out_aw_mem_6_id,
  output [31:0] auto_out_aw_mem_6_addr,
  output [7:0]  auto_out_aw_mem_6_len,
  output [2:0]  auto_out_aw_mem_6_size,
  output [1:0]  auto_out_aw_mem_6_burst,
  output        auto_out_aw_mem_6_lock,
  output [3:0]  auto_out_aw_mem_6_cache,
  output [2:0]  auto_out_aw_mem_6_prot,
  output [3:0]  auto_out_aw_mem_6_qos,
  output [3:0]  auto_out_aw_mem_7_id,
  output [31:0] auto_out_aw_mem_7_addr,
  output [7:0]  auto_out_aw_mem_7_len,
  output [2:0]  auto_out_aw_mem_7_size,
  output [1:0]  auto_out_aw_mem_7_burst,
  output        auto_out_aw_mem_7_lock,
  output [3:0]  auto_out_aw_mem_7_cache,
  output [2:0]  auto_out_aw_mem_7_prot,
  output [3:0]  auto_out_aw_mem_7_qos,
  input  [3:0]  auto_out_aw_ridx,
  output [3:0]  auto_out_aw_widx,
  input         auto_out_aw_safe_ridx_valid,
  output        auto_out_aw_safe_widx_valid,
  output        auto_out_aw_safe_source_reset_n,
  input         auto_out_aw_safe_sink_reset_n,
  output [63:0] auto_out_w_mem_0_data,
  output [7:0]  auto_out_w_mem_0_strb,
  output        auto_out_w_mem_0_last,
  output [63:0] auto_out_w_mem_1_data,
  output [7:0]  auto_out_w_mem_1_strb,
  output        auto_out_w_mem_1_last,
  output [63:0] auto_out_w_mem_2_data,
  output [7:0]  auto_out_w_mem_2_strb,
  output        auto_out_w_mem_2_last,
  output [63:0] auto_out_w_mem_3_data,
  output [7:0]  auto_out_w_mem_3_strb,
  output        auto_out_w_mem_3_last,
  output [63:0] auto_out_w_mem_4_data,
  output [7:0]  auto_out_w_mem_4_strb,
  output        auto_out_w_mem_4_last,
  output [63:0] auto_out_w_mem_5_data,
  output [7:0]  auto_out_w_mem_5_strb,
  output        auto_out_w_mem_5_last,
  output [63:0] auto_out_w_mem_6_data,
  output [7:0]  auto_out_w_mem_6_strb,
  output        auto_out_w_mem_6_last,
  output [63:0] auto_out_w_mem_7_data,
  output [7:0]  auto_out_w_mem_7_strb,
  output        auto_out_w_mem_7_last,
  input  [3:0]  auto_out_w_ridx,
  output [3:0]  auto_out_w_widx,
  input         auto_out_w_safe_ridx_valid,
  output        auto_out_w_safe_widx_valid,
  output        auto_out_w_safe_source_reset_n,
  input         auto_out_w_safe_sink_reset_n,
  input  [3:0]  auto_out_b_mem_0_id,
  input  [1:0]  auto_out_b_mem_0_resp,
  input  [3:0]  auto_out_b_mem_1_id,
  input  [1:0]  auto_out_b_mem_1_resp,
  input  [3:0]  auto_out_b_mem_2_id,
  input  [1:0]  auto_out_b_mem_2_resp,
  input  [3:0]  auto_out_b_mem_3_id,
  input  [1:0]  auto_out_b_mem_3_resp,
  input  [3:0]  auto_out_b_mem_4_id,
  input  [1:0]  auto_out_b_mem_4_resp,
  input  [3:0]  auto_out_b_mem_5_id,
  input  [1:0]  auto_out_b_mem_5_resp,
  input  [3:0]  auto_out_b_mem_6_id,
  input  [1:0]  auto_out_b_mem_6_resp,
  input  [3:0]  auto_out_b_mem_7_id,
  input  [1:0]  auto_out_b_mem_7_resp,
  output [3:0]  auto_out_b_ridx,
  input  [3:0]  auto_out_b_widx,
  output        auto_out_b_safe_ridx_valid,
  input         auto_out_b_safe_widx_valid,
  input         auto_out_b_safe_source_reset_n,
  output        auto_out_b_safe_sink_reset_n,
  output [3:0]  auto_out_ar_mem_0_id,
  output [31:0] auto_out_ar_mem_0_addr,
  output [7:0]  auto_out_ar_mem_0_len,
  output [2:0]  auto_out_ar_mem_0_size,
  output [1:0]  auto_out_ar_mem_0_burst,
  output        auto_out_ar_mem_0_lock,
  output [3:0]  auto_out_ar_mem_0_cache,
  output [2:0]  auto_out_ar_mem_0_prot,
  output [3:0]  auto_out_ar_mem_0_qos,
  output [3:0]  auto_out_ar_mem_1_id,
  output [31:0] auto_out_ar_mem_1_addr,
  output [7:0]  auto_out_ar_mem_1_len,
  output [2:0]  auto_out_ar_mem_1_size,
  output [1:0]  auto_out_ar_mem_1_burst,
  output        auto_out_ar_mem_1_lock,
  output [3:0]  auto_out_ar_mem_1_cache,
  output [2:0]  auto_out_ar_mem_1_prot,
  output [3:0]  auto_out_ar_mem_1_qos,
  output [3:0]  auto_out_ar_mem_2_id,
  output [31:0] auto_out_ar_mem_2_addr,
  output [7:0]  auto_out_ar_mem_2_len,
  output [2:0]  auto_out_ar_mem_2_size,
  output [1:0]  auto_out_ar_mem_2_burst,
  output        auto_out_ar_mem_2_lock,
  output [3:0]  auto_out_ar_mem_2_cache,
  output [2:0]  auto_out_ar_mem_2_prot,
  output [3:0]  auto_out_ar_mem_2_qos,
  output [3:0]  auto_out_ar_mem_3_id,
  output [31:0] auto_out_ar_mem_3_addr,
  output [7:0]  auto_out_ar_mem_3_len,
  output [2:0]  auto_out_ar_mem_3_size,
  output [1:0]  auto_out_ar_mem_3_burst,
  output        auto_out_ar_mem_3_lock,
  output [3:0]  auto_out_ar_mem_3_cache,
  output [2:0]  auto_out_ar_mem_3_prot,
  output [3:0]  auto_out_ar_mem_3_qos,
  output [3:0]  auto_out_ar_mem_4_id,
  output [31:0] auto_out_ar_mem_4_addr,
  output [7:0]  auto_out_ar_mem_4_len,
  output [2:0]  auto_out_ar_mem_4_size,
  output [1:0]  auto_out_ar_mem_4_burst,
  output        auto_out_ar_mem_4_lock,
  output [3:0]  auto_out_ar_mem_4_cache,
  output [2:0]  auto_out_ar_mem_4_prot,
  output [3:0]  auto_out_ar_mem_4_qos,
  output [3:0]  auto_out_ar_mem_5_id,
  output [31:0] auto_out_ar_mem_5_addr,
  output [7:0]  auto_out_ar_mem_5_len,
  output [2:0]  auto_out_ar_mem_5_size,
  output [1:0]  auto_out_ar_mem_5_burst,
  output        auto_out_ar_mem_5_lock,
  output [3:0]  auto_out_ar_mem_5_cache,
  output [2:0]  auto_out_ar_mem_5_prot,
  output [3:0]  auto_out_ar_mem_5_qos,
  output [3:0]  auto_out_ar_mem_6_id,
  output [31:0] auto_out_ar_mem_6_addr,
  output [7:0]  auto_out_ar_mem_6_len,
  output [2:0]  auto_out_ar_mem_6_size,
  output [1:0]  auto_out_ar_mem_6_burst,
  output        auto_out_ar_mem_6_lock,
  output [3:0]  auto_out_ar_mem_6_cache,
  output [2:0]  auto_out_ar_mem_6_prot,
  output [3:0]  auto_out_ar_mem_6_qos,
  output [3:0]  auto_out_ar_mem_7_id,
  output [31:0] auto_out_ar_mem_7_addr,
  output [7:0]  auto_out_ar_mem_7_len,
  output [2:0]  auto_out_ar_mem_7_size,
  output [1:0]  auto_out_ar_mem_7_burst,
  output        auto_out_ar_mem_7_lock,
  output [3:0]  auto_out_ar_mem_7_cache,
  output [2:0]  auto_out_ar_mem_7_prot,
  output [3:0]  auto_out_ar_mem_7_qos,
  input  [3:0]  auto_out_ar_ridx,
  output [3:0]  auto_out_ar_widx,
  input         auto_out_ar_safe_ridx_valid,
  output        auto_out_ar_safe_widx_valid,
  output        auto_out_ar_safe_source_reset_n,
  input         auto_out_ar_safe_sink_reset_n,
  input  [3:0]  auto_out_r_mem_0_id,
  input  [63:0] auto_out_r_mem_0_data,
  input  [1:0]  auto_out_r_mem_0_resp,
  input         auto_out_r_mem_0_last,
  input  [3:0]  auto_out_r_mem_1_id,
  input  [63:0] auto_out_r_mem_1_data,
  input  [1:0]  auto_out_r_mem_1_resp,
  input         auto_out_r_mem_1_last,
  input  [3:0]  auto_out_r_mem_2_id,
  input  [63:0] auto_out_r_mem_2_data,
  input  [1:0]  auto_out_r_mem_2_resp,
  input         auto_out_r_mem_2_last,
  input  [3:0]  auto_out_r_mem_3_id,
  input  [63:0] auto_out_r_mem_3_data,
  input  [1:0]  auto_out_r_mem_3_resp,
  input         auto_out_r_mem_3_last,
  input  [3:0]  auto_out_r_mem_4_id,
  input  [63:0] auto_out_r_mem_4_data,
  input  [1:0]  auto_out_r_mem_4_resp,
  input         auto_out_r_mem_4_last,
  input  [3:0]  auto_out_r_mem_5_id,
  input  [63:0] auto_out_r_mem_5_data,
  input  [1:0]  auto_out_r_mem_5_resp,
  input         auto_out_r_mem_5_last,
  input  [3:0]  auto_out_r_mem_6_id,
  input  [63:0] auto_out_r_mem_6_data,
  input  [1:0]  auto_out_r_mem_6_resp,
  input         auto_out_r_mem_6_last,
  input  [3:0]  auto_out_r_mem_7_id,
  input  [63:0] auto_out_r_mem_7_data,
  input  [1:0]  auto_out_r_mem_7_resp,
  input         auto_out_r_mem_7_last,
  output [3:0]  auto_out_r_ridx,
  input  [3:0]  auto_out_r_widx,
  output        auto_out_r_safe_ridx_valid,
  input         auto_out_r_safe_widx_valid,
  input         auto_out_r_safe_source_reset_n,
  output        auto_out_r_safe_sink_reset_n
);
  wire  bundleOut_0_ar_source_clock; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_reset; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_enq_ready; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_enq_valid; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_enq_bits_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_enq_bits_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_enq_bits_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_enq_bits_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_enq_bits_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_enq_bits_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_enq_bits_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_enq_bits_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_enq_bits_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_0_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_async_mem_0_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_async_mem_0_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_0_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_async_mem_0_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_mem_0_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_0_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_0_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_0_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_1_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_async_mem_1_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_async_mem_1_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_1_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_async_mem_1_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_mem_1_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_1_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_1_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_1_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_2_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_async_mem_2_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_async_mem_2_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_2_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_async_mem_2_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_mem_2_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_2_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_2_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_2_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_3_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_async_mem_3_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_async_mem_3_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_3_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_async_mem_3_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_mem_3_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_3_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_3_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_3_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_4_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_async_mem_4_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_async_mem_4_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_4_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_async_mem_4_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_mem_4_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_4_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_4_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_4_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_5_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_async_mem_5_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_async_mem_5_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_5_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_async_mem_5_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_mem_5_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_5_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_5_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_5_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_6_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_async_mem_6_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_async_mem_6_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_6_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_async_mem_6_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_mem_6_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_6_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_6_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_6_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_7_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_ar_source_io_async_mem_7_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_ar_source_io_async_mem_7_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_7_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_ar_source_io_async_mem_7_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_mem_7_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_7_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_ar_source_io_async_mem_7_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_mem_7_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_ridx; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_ar_source_io_async_widx; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_ar_source_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_clock; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_reset; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_enq_ready; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_enq_valid; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_enq_bits_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_enq_bits_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_enq_bits_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_enq_bits_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_enq_bits_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_enq_bits_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_enq_bits_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_enq_bits_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_enq_bits_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_0_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_async_mem_0_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_async_mem_0_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_0_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_async_mem_0_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_mem_0_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_0_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_0_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_0_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_1_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_async_mem_1_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_async_mem_1_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_1_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_async_mem_1_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_mem_1_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_1_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_1_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_1_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_2_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_async_mem_2_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_async_mem_2_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_2_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_async_mem_2_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_mem_2_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_2_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_2_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_2_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_3_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_async_mem_3_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_async_mem_3_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_3_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_async_mem_3_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_mem_3_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_3_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_3_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_3_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_4_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_async_mem_4_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_async_mem_4_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_4_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_async_mem_4_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_mem_4_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_4_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_4_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_4_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_5_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_async_mem_5_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_async_mem_5_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_5_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_async_mem_5_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_mem_5_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_5_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_5_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_5_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_6_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_async_mem_6_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_async_mem_6_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_6_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_async_mem_6_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_mem_6_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_6_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_6_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_6_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_7_id; // @[AsyncQueue.scala 216:24]
  wire [31:0] bundleOut_0_aw_source_io_async_mem_7_addr; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_aw_source_io_async_mem_7_len; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_7_size; // @[AsyncQueue.scala 216:24]
  wire [1:0] bundleOut_0_aw_source_io_async_mem_7_burst; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_mem_7_lock; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_7_cache; // @[AsyncQueue.scala 216:24]
  wire [2:0] bundleOut_0_aw_source_io_async_mem_7_prot; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_mem_7_qos; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_ridx; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_aw_source_io_async_widx; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_aw_source_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_clock; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_reset; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_enq_ready; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_enq_valid; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_enq_bits_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_enq_bits_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_enq_bits_last; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_async_mem_0_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_async_mem_0_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_mem_0_last; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_async_mem_1_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_async_mem_1_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_mem_1_last; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_async_mem_2_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_async_mem_2_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_mem_2_last; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_async_mem_3_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_async_mem_3_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_mem_3_last; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_async_mem_4_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_async_mem_4_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_mem_4_last; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_async_mem_5_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_async_mem_5_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_mem_5_last; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_async_mem_6_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_async_mem_6_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_mem_6_last; // @[AsyncQueue.scala 216:24]
  wire [63:0] bundleOut_0_w_source_io_async_mem_7_data; // @[AsyncQueue.scala 216:24]
  wire [7:0] bundleOut_0_w_source_io_async_mem_7_strb; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_mem_7_last; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_w_source_io_async_ridx; // @[AsyncQueue.scala 216:24]
  wire [3:0] bundleOut_0_w_source_io_async_widx; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleOut_0_w_source_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24]
  wire  bundleIn_0_r_sink_clock; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_reset; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_deq_ready; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_deq_valid; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_deq_bits_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_deq_bits_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_deq_bits_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_deq_bits_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_mem_0_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_async_mem_0_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_async_mem_0_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_mem_0_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_mem_1_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_async_mem_1_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_async_mem_1_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_mem_1_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_mem_2_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_async_mem_2_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_async_mem_2_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_mem_2_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_mem_3_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_async_mem_3_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_async_mem_3_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_mem_3_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_mem_4_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_async_mem_4_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_async_mem_4_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_mem_4_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_mem_5_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_async_mem_5_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_async_mem_5_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_mem_5_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_mem_6_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_async_mem_6_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_async_mem_6_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_mem_6_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_mem_7_id; // @[AsyncQueue.scala 207:22]
  wire [63:0] bundleIn_0_r_sink_io_async_mem_7_data; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_r_sink_io_async_mem_7_resp; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_mem_7_last; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_ridx; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_r_sink_io_async_widx; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_r_sink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_b_sink_clock; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_b_sink_reset; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_b_sink_io_deq_ready; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_b_sink_io_deq_valid; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_deq_bits_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_deq_bits_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_mem_0_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_async_mem_0_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_mem_1_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_async_mem_1_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_mem_2_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_async_mem_2_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_mem_3_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_async_mem_3_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_mem_4_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_async_mem_4_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_mem_5_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_async_mem_5_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_mem_6_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_async_mem_6_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_mem_7_id; // @[AsyncQueue.scala 207:22]
  wire [1:0] bundleIn_0_b_sink_io_async_mem_7_resp; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_ridx; // @[AsyncQueue.scala 207:22]
  wire [3:0] bundleIn_0_b_sink_io_async_widx; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_b_sink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_b_sink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_b_sink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22]
  wire  bundleIn_0_b_sink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22]
  AsyncQueueSource_2_inVCU118FPGATestHarness bundleOut_0_ar_source ( // @[AsyncQueue.scala 216:24]
    .clock(bundleOut_0_ar_source_clock),
    .reset(bundleOut_0_ar_source_reset),
    .io_enq_ready(bundleOut_0_ar_source_io_enq_ready),
    .io_enq_valid(bundleOut_0_ar_source_io_enq_valid),
    .io_enq_bits_id(bundleOut_0_ar_source_io_enq_bits_id),
    .io_enq_bits_addr(bundleOut_0_ar_source_io_enq_bits_addr),
    .io_enq_bits_len(bundleOut_0_ar_source_io_enq_bits_len),
    .io_enq_bits_size(bundleOut_0_ar_source_io_enq_bits_size),
    .io_enq_bits_burst(bundleOut_0_ar_source_io_enq_bits_burst),
    .io_enq_bits_lock(bundleOut_0_ar_source_io_enq_bits_lock),
    .io_enq_bits_cache(bundleOut_0_ar_source_io_enq_bits_cache),
    .io_enq_bits_prot(bundleOut_0_ar_source_io_enq_bits_prot),
    .io_enq_bits_qos(bundleOut_0_ar_source_io_enq_bits_qos),
    .io_async_mem_0_id(bundleOut_0_ar_source_io_async_mem_0_id),
    .io_async_mem_0_addr(bundleOut_0_ar_source_io_async_mem_0_addr),
    .io_async_mem_0_len(bundleOut_0_ar_source_io_async_mem_0_len),
    .io_async_mem_0_size(bundleOut_0_ar_source_io_async_mem_0_size),
    .io_async_mem_0_burst(bundleOut_0_ar_source_io_async_mem_0_burst),
    .io_async_mem_0_lock(bundleOut_0_ar_source_io_async_mem_0_lock),
    .io_async_mem_0_cache(bundleOut_0_ar_source_io_async_mem_0_cache),
    .io_async_mem_0_prot(bundleOut_0_ar_source_io_async_mem_0_prot),
    .io_async_mem_0_qos(bundleOut_0_ar_source_io_async_mem_0_qos),
    .io_async_mem_1_id(bundleOut_0_ar_source_io_async_mem_1_id),
    .io_async_mem_1_addr(bundleOut_0_ar_source_io_async_mem_1_addr),
    .io_async_mem_1_len(bundleOut_0_ar_source_io_async_mem_1_len),
    .io_async_mem_1_size(bundleOut_0_ar_source_io_async_mem_1_size),
    .io_async_mem_1_burst(bundleOut_0_ar_source_io_async_mem_1_burst),
    .io_async_mem_1_lock(bundleOut_0_ar_source_io_async_mem_1_lock),
    .io_async_mem_1_cache(bundleOut_0_ar_source_io_async_mem_1_cache),
    .io_async_mem_1_prot(bundleOut_0_ar_source_io_async_mem_1_prot),
    .io_async_mem_1_qos(bundleOut_0_ar_source_io_async_mem_1_qos),
    .io_async_mem_2_id(bundleOut_0_ar_source_io_async_mem_2_id),
    .io_async_mem_2_addr(bundleOut_0_ar_source_io_async_mem_2_addr),
    .io_async_mem_2_len(bundleOut_0_ar_source_io_async_mem_2_len),
    .io_async_mem_2_size(bundleOut_0_ar_source_io_async_mem_2_size),
    .io_async_mem_2_burst(bundleOut_0_ar_source_io_async_mem_2_burst),
    .io_async_mem_2_lock(bundleOut_0_ar_source_io_async_mem_2_lock),
    .io_async_mem_2_cache(bundleOut_0_ar_source_io_async_mem_2_cache),
    .io_async_mem_2_prot(bundleOut_0_ar_source_io_async_mem_2_prot),
    .io_async_mem_2_qos(bundleOut_0_ar_source_io_async_mem_2_qos),
    .io_async_mem_3_id(bundleOut_0_ar_source_io_async_mem_3_id),
    .io_async_mem_3_addr(bundleOut_0_ar_source_io_async_mem_3_addr),
    .io_async_mem_3_len(bundleOut_0_ar_source_io_async_mem_3_len),
    .io_async_mem_3_size(bundleOut_0_ar_source_io_async_mem_3_size),
    .io_async_mem_3_burst(bundleOut_0_ar_source_io_async_mem_3_burst),
    .io_async_mem_3_lock(bundleOut_0_ar_source_io_async_mem_3_lock),
    .io_async_mem_3_cache(bundleOut_0_ar_source_io_async_mem_3_cache),
    .io_async_mem_3_prot(bundleOut_0_ar_source_io_async_mem_3_prot),
    .io_async_mem_3_qos(bundleOut_0_ar_source_io_async_mem_3_qos),
    .io_async_mem_4_id(bundleOut_0_ar_source_io_async_mem_4_id),
    .io_async_mem_4_addr(bundleOut_0_ar_source_io_async_mem_4_addr),
    .io_async_mem_4_len(bundleOut_0_ar_source_io_async_mem_4_len),
    .io_async_mem_4_size(bundleOut_0_ar_source_io_async_mem_4_size),
    .io_async_mem_4_burst(bundleOut_0_ar_source_io_async_mem_4_burst),
    .io_async_mem_4_lock(bundleOut_0_ar_source_io_async_mem_4_lock),
    .io_async_mem_4_cache(bundleOut_0_ar_source_io_async_mem_4_cache),
    .io_async_mem_4_prot(bundleOut_0_ar_source_io_async_mem_4_prot),
    .io_async_mem_4_qos(bundleOut_0_ar_source_io_async_mem_4_qos),
    .io_async_mem_5_id(bundleOut_0_ar_source_io_async_mem_5_id),
    .io_async_mem_5_addr(bundleOut_0_ar_source_io_async_mem_5_addr),
    .io_async_mem_5_len(bundleOut_0_ar_source_io_async_mem_5_len),
    .io_async_mem_5_size(bundleOut_0_ar_source_io_async_mem_5_size),
    .io_async_mem_5_burst(bundleOut_0_ar_source_io_async_mem_5_burst),
    .io_async_mem_5_lock(bundleOut_0_ar_source_io_async_mem_5_lock),
    .io_async_mem_5_cache(bundleOut_0_ar_source_io_async_mem_5_cache),
    .io_async_mem_5_prot(bundleOut_0_ar_source_io_async_mem_5_prot),
    .io_async_mem_5_qos(bundleOut_0_ar_source_io_async_mem_5_qos),
    .io_async_mem_6_id(bundleOut_0_ar_source_io_async_mem_6_id),
    .io_async_mem_6_addr(bundleOut_0_ar_source_io_async_mem_6_addr),
    .io_async_mem_6_len(bundleOut_0_ar_source_io_async_mem_6_len),
    .io_async_mem_6_size(bundleOut_0_ar_source_io_async_mem_6_size),
    .io_async_mem_6_burst(bundleOut_0_ar_source_io_async_mem_6_burst),
    .io_async_mem_6_lock(bundleOut_0_ar_source_io_async_mem_6_lock),
    .io_async_mem_6_cache(bundleOut_0_ar_source_io_async_mem_6_cache),
    .io_async_mem_6_prot(bundleOut_0_ar_source_io_async_mem_6_prot),
    .io_async_mem_6_qos(bundleOut_0_ar_source_io_async_mem_6_qos),
    .io_async_mem_7_id(bundleOut_0_ar_source_io_async_mem_7_id),
    .io_async_mem_7_addr(bundleOut_0_ar_source_io_async_mem_7_addr),
    .io_async_mem_7_len(bundleOut_0_ar_source_io_async_mem_7_len),
    .io_async_mem_7_size(bundleOut_0_ar_source_io_async_mem_7_size),
    .io_async_mem_7_burst(bundleOut_0_ar_source_io_async_mem_7_burst),
    .io_async_mem_7_lock(bundleOut_0_ar_source_io_async_mem_7_lock),
    .io_async_mem_7_cache(bundleOut_0_ar_source_io_async_mem_7_cache),
    .io_async_mem_7_prot(bundleOut_0_ar_source_io_async_mem_7_prot),
    .io_async_mem_7_qos(bundleOut_0_ar_source_io_async_mem_7_qos),
    .io_async_ridx(bundleOut_0_ar_source_io_async_ridx),
    .io_async_widx(bundleOut_0_ar_source_io_async_widx),
    .io_async_safe_ridx_valid(bundleOut_0_ar_source_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleOut_0_ar_source_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleOut_0_ar_source_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleOut_0_ar_source_io_async_safe_sink_reset_n)
  );
  AsyncQueueSource_2_inVCU118FPGATestHarness bundleOut_0_aw_source ( // @[AsyncQueue.scala 216:24]
    .clock(bundleOut_0_aw_source_clock),
    .reset(bundleOut_0_aw_source_reset),
    .io_enq_ready(bundleOut_0_aw_source_io_enq_ready),
    .io_enq_valid(bundleOut_0_aw_source_io_enq_valid),
    .io_enq_bits_id(bundleOut_0_aw_source_io_enq_bits_id),
    .io_enq_bits_addr(bundleOut_0_aw_source_io_enq_bits_addr),
    .io_enq_bits_len(bundleOut_0_aw_source_io_enq_bits_len),
    .io_enq_bits_size(bundleOut_0_aw_source_io_enq_bits_size),
    .io_enq_bits_burst(bundleOut_0_aw_source_io_enq_bits_burst),
    .io_enq_bits_lock(bundleOut_0_aw_source_io_enq_bits_lock),
    .io_enq_bits_cache(bundleOut_0_aw_source_io_enq_bits_cache),
    .io_enq_bits_prot(bundleOut_0_aw_source_io_enq_bits_prot),
    .io_enq_bits_qos(bundleOut_0_aw_source_io_enq_bits_qos),
    .io_async_mem_0_id(bundleOut_0_aw_source_io_async_mem_0_id),
    .io_async_mem_0_addr(bundleOut_0_aw_source_io_async_mem_0_addr),
    .io_async_mem_0_len(bundleOut_0_aw_source_io_async_mem_0_len),
    .io_async_mem_0_size(bundleOut_0_aw_source_io_async_mem_0_size),
    .io_async_mem_0_burst(bundleOut_0_aw_source_io_async_mem_0_burst),
    .io_async_mem_0_lock(bundleOut_0_aw_source_io_async_mem_0_lock),
    .io_async_mem_0_cache(bundleOut_0_aw_source_io_async_mem_0_cache),
    .io_async_mem_0_prot(bundleOut_0_aw_source_io_async_mem_0_prot),
    .io_async_mem_0_qos(bundleOut_0_aw_source_io_async_mem_0_qos),
    .io_async_mem_1_id(bundleOut_0_aw_source_io_async_mem_1_id),
    .io_async_mem_1_addr(bundleOut_0_aw_source_io_async_mem_1_addr),
    .io_async_mem_1_len(bundleOut_0_aw_source_io_async_mem_1_len),
    .io_async_mem_1_size(bundleOut_0_aw_source_io_async_mem_1_size),
    .io_async_mem_1_burst(bundleOut_0_aw_source_io_async_mem_1_burst),
    .io_async_mem_1_lock(bundleOut_0_aw_source_io_async_mem_1_lock),
    .io_async_mem_1_cache(bundleOut_0_aw_source_io_async_mem_1_cache),
    .io_async_mem_1_prot(bundleOut_0_aw_source_io_async_mem_1_prot),
    .io_async_mem_1_qos(bundleOut_0_aw_source_io_async_mem_1_qos),
    .io_async_mem_2_id(bundleOut_0_aw_source_io_async_mem_2_id),
    .io_async_mem_2_addr(bundleOut_0_aw_source_io_async_mem_2_addr),
    .io_async_mem_2_len(bundleOut_0_aw_source_io_async_mem_2_len),
    .io_async_mem_2_size(bundleOut_0_aw_source_io_async_mem_2_size),
    .io_async_mem_2_burst(bundleOut_0_aw_source_io_async_mem_2_burst),
    .io_async_mem_2_lock(bundleOut_0_aw_source_io_async_mem_2_lock),
    .io_async_mem_2_cache(bundleOut_0_aw_source_io_async_mem_2_cache),
    .io_async_mem_2_prot(bundleOut_0_aw_source_io_async_mem_2_prot),
    .io_async_mem_2_qos(bundleOut_0_aw_source_io_async_mem_2_qos),
    .io_async_mem_3_id(bundleOut_0_aw_source_io_async_mem_3_id),
    .io_async_mem_3_addr(bundleOut_0_aw_source_io_async_mem_3_addr),
    .io_async_mem_3_len(bundleOut_0_aw_source_io_async_mem_3_len),
    .io_async_mem_3_size(bundleOut_0_aw_source_io_async_mem_3_size),
    .io_async_mem_3_burst(bundleOut_0_aw_source_io_async_mem_3_burst),
    .io_async_mem_3_lock(bundleOut_0_aw_source_io_async_mem_3_lock),
    .io_async_mem_3_cache(bundleOut_0_aw_source_io_async_mem_3_cache),
    .io_async_mem_3_prot(bundleOut_0_aw_source_io_async_mem_3_prot),
    .io_async_mem_3_qos(bundleOut_0_aw_source_io_async_mem_3_qos),
    .io_async_mem_4_id(bundleOut_0_aw_source_io_async_mem_4_id),
    .io_async_mem_4_addr(bundleOut_0_aw_source_io_async_mem_4_addr),
    .io_async_mem_4_len(bundleOut_0_aw_source_io_async_mem_4_len),
    .io_async_mem_4_size(bundleOut_0_aw_source_io_async_mem_4_size),
    .io_async_mem_4_burst(bundleOut_0_aw_source_io_async_mem_4_burst),
    .io_async_mem_4_lock(bundleOut_0_aw_source_io_async_mem_4_lock),
    .io_async_mem_4_cache(bundleOut_0_aw_source_io_async_mem_4_cache),
    .io_async_mem_4_prot(bundleOut_0_aw_source_io_async_mem_4_prot),
    .io_async_mem_4_qos(bundleOut_0_aw_source_io_async_mem_4_qos),
    .io_async_mem_5_id(bundleOut_0_aw_source_io_async_mem_5_id),
    .io_async_mem_5_addr(bundleOut_0_aw_source_io_async_mem_5_addr),
    .io_async_mem_5_len(bundleOut_0_aw_source_io_async_mem_5_len),
    .io_async_mem_5_size(bundleOut_0_aw_source_io_async_mem_5_size),
    .io_async_mem_5_burst(bundleOut_0_aw_source_io_async_mem_5_burst),
    .io_async_mem_5_lock(bundleOut_0_aw_source_io_async_mem_5_lock),
    .io_async_mem_5_cache(bundleOut_0_aw_source_io_async_mem_5_cache),
    .io_async_mem_5_prot(bundleOut_0_aw_source_io_async_mem_5_prot),
    .io_async_mem_5_qos(bundleOut_0_aw_source_io_async_mem_5_qos),
    .io_async_mem_6_id(bundleOut_0_aw_source_io_async_mem_6_id),
    .io_async_mem_6_addr(bundleOut_0_aw_source_io_async_mem_6_addr),
    .io_async_mem_6_len(bundleOut_0_aw_source_io_async_mem_6_len),
    .io_async_mem_6_size(bundleOut_0_aw_source_io_async_mem_6_size),
    .io_async_mem_6_burst(bundleOut_0_aw_source_io_async_mem_6_burst),
    .io_async_mem_6_lock(bundleOut_0_aw_source_io_async_mem_6_lock),
    .io_async_mem_6_cache(bundleOut_0_aw_source_io_async_mem_6_cache),
    .io_async_mem_6_prot(bundleOut_0_aw_source_io_async_mem_6_prot),
    .io_async_mem_6_qos(bundleOut_0_aw_source_io_async_mem_6_qos),
    .io_async_mem_7_id(bundleOut_0_aw_source_io_async_mem_7_id),
    .io_async_mem_7_addr(bundleOut_0_aw_source_io_async_mem_7_addr),
    .io_async_mem_7_len(bundleOut_0_aw_source_io_async_mem_7_len),
    .io_async_mem_7_size(bundleOut_0_aw_source_io_async_mem_7_size),
    .io_async_mem_7_burst(bundleOut_0_aw_source_io_async_mem_7_burst),
    .io_async_mem_7_lock(bundleOut_0_aw_source_io_async_mem_7_lock),
    .io_async_mem_7_cache(bundleOut_0_aw_source_io_async_mem_7_cache),
    .io_async_mem_7_prot(bundleOut_0_aw_source_io_async_mem_7_prot),
    .io_async_mem_7_qos(bundleOut_0_aw_source_io_async_mem_7_qos),
    .io_async_ridx(bundleOut_0_aw_source_io_async_ridx),
    .io_async_widx(bundleOut_0_aw_source_io_async_widx),
    .io_async_safe_ridx_valid(bundleOut_0_aw_source_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleOut_0_aw_source_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleOut_0_aw_source_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleOut_0_aw_source_io_async_safe_sink_reset_n)
  );
  AsyncQueueSource_4_inVCU118FPGATestHarness bundleOut_0_w_source ( // @[AsyncQueue.scala 216:24]
    .clock(bundleOut_0_w_source_clock),
    .reset(bundleOut_0_w_source_reset),
    .io_enq_ready(bundleOut_0_w_source_io_enq_ready),
    .io_enq_valid(bundleOut_0_w_source_io_enq_valid),
    .io_enq_bits_data(bundleOut_0_w_source_io_enq_bits_data),
    .io_enq_bits_strb(bundleOut_0_w_source_io_enq_bits_strb),
    .io_enq_bits_last(bundleOut_0_w_source_io_enq_bits_last),
    .io_async_mem_0_data(bundleOut_0_w_source_io_async_mem_0_data),
    .io_async_mem_0_strb(bundleOut_0_w_source_io_async_mem_0_strb),
    .io_async_mem_0_last(bundleOut_0_w_source_io_async_mem_0_last),
    .io_async_mem_1_data(bundleOut_0_w_source_io_async_mem_1_data),
    .io_async_mem_1_strb(bundleOut_0_w_source_io_async_mem_1_strb),
    .io_async_mem_1_last(bundleOut_0_w_source_io_async_mem_1_last),
    .io_async_mem_2_data(bundleOut_0_w_source_io_async_mem_2_data),
    .io_async_mem_2_strb(bundleOut_0_w_source_io_async_mem_2_strb),
    .io_async_mem_2_last(bundleOut_0_w_source_io_async_mem_2_last),
    .io_async_mem_3_data(bundleOut_0_w_source_io_async_mem_3_data),
    .io_async_mem_3_strb(bundleOut_0_w_source_io_async_mem_3_strb),
    .io_async_mem_3_last(bundleOut_0_w_source_io_async_mem_3_last),
    .io_async_mem_4_data(bundleOut_0_w_source_io_async_mem_4_data),
    .io_async_mem_4_strb(bundleOut_0_w_source_io_async_mem_4_strb),
    .io_async_mem_4_last(bundleOut_0_w_source_io_async_mem_4_last),
    .io_async_mem_5_data(bundleOut_0_w_source_io_async_mem_5_data),
    .io_async_mem_5_strb(bundleOut_0_w_source_io_async_mem_5_strb),
    .io_async_mem_5_last(bundleOut_0_w_source_io_async_mem_5_last),
    .io_async_mem_6_data(bundleOut_0_w_source_io_async_mem_6_data),
    .io_async_mem_6_strb(bundleOut_0_w_source_io_async_mem_6_strb),
    .io_async_mem_6_last(bundleOut_0_w_source_io_async_mem_6_last),
    .io_async_mem_7_data(bundleOut_0_w_source_io_async_mem_7_data),
    .io_async_mem_7_strb(bundleOut_0_w_source_io_async_mem_7_strb),
    .io_async_mem_7_last(bundleOut_0_w_source_io_async_mem_7_last),
    .io_async_ridx(bundleOut_0_w_source_io_async_ridx),
    .io_async_widx(bundleOut_0_w_source_io_async_widx),
    .io_async_safe_ridx_valid(bundleOut_0_w_source_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleOut_0_w_source_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleOut_0_w_source_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleOut_0_w_source_io_async_safe_sink_reset_n)
  );
  AsyncQueueSink_3_inVCU118FPGATestHarness bundleIn_0_r_sink ( // @[AsyncQueue.scala 207:22]
    .clock(bundleIn_0_r_sink_clock),
    .reset(bundleIn_0_r_sink_reset),
    .io_deq_ready(bundleIn_0_r_sink_io_deq_ready),
    .io_deq_valid(bundleIn_0_r_sink_io_deq_valid),
    .io_deq_bits_id(bundleIn_0_r_sink_io_deq_bits_id),
    .io_deq_bits_data(bundleIn_0_r_sink_io_deq_bits_data),
    .io_deq_bits_resp(bundleIn_0_r_sink_io_deq_bits_resp),
    .io_deq_bits_last(bundleIn_0_r_sink_io_deq_bits_last),
    .io_async_mem_0_id(bundleIn_0_r_sink_io_async_mem_0_id),
    .io_async_mem_0_data(bundleIn_0_r_sink_io_async_mem_0_data),
    .io_async_mem_0_resp(bundleIn_0_r_sink_io_async_mem_0_resp),
    .io_async_mem_0_last(bundleIn_0_r_sink_io_async_mem_0_last),
    .io_async_mem_1_id(bundleIn_0_r_sink_io_async_mem_1_id),
    .io_async_mem_1_data(bundleIn_0_r_sink_io_async_mem_1_data),
    .io_async_mem_1_resp(bundleIn_0_r_sink_io_async_mem_1_resp),
    .io_async_mem_1_last(bundleIn_0_r_sink_io_async_mem_1_last),
    .io_async_mem_2_id(bundleIn_0_r_sink_io_async_mem_2_id),
    .io_async_mem_2_data(bundleIn_0_r_sink_io_async_mem_2_data),
    .io_async_mem_2_resp(bundleIn_0_r_sink_io_async_mem_2_resp),
    .io_async_mem_2_last(bundleIn_0_r_sink_io_async_mem_2_last),
    .io_async_mem_3_id(bundleIn_0_r_sink_io_async_mem_3_id),
    .io_async_mem_3_data(bundleIn_0_r_sink_io_async_mem_3_data),
    .io_async_mem_3_resp(bundleIn_0_r_sink_io_async_mem_3_resp),
    .io_async_mem_3_last(bundleIn_0_r_sink_io_async_mem_3_last),
    .io_async_mem_4_id(bundleIn_0_r_sink_io_async_mem_4_id),
    .io_async_mem_4_data(bundleIn_0_r_sink_io_async_mem_4_data),
    .io_async_mem_4_resp(bundleIn_0_r_sink_io_async_mem_4_resp),
    .io_async_mem_4_last(bundleIn_0_r_sink_io_async_mem_4_last),
    .io_async_mem_5_id(bundleIn_0_r_sink_io_async_mem_5_id),
    .io_async_mem_5_data(bundleIn_0_r_sink_io_async_mem_5_data),
    .io_async_mem_5_resp(bundleIn_0_r_sink_io_async_mem_5_resp),
    .io_async_mem_5_last(bundleIn_0_r_sink_io_async_mem_5_last),
    .io_async_mem_6_id(bundleIn_0_r_sink_io_async_mem_6_id),
    .io_async_mem_6_data(bundleIn_0_r_sink_io_async_mem_6_data),
    .io_async_mem_6_resp(bundleIn_0_r_sink_io_async_mem_6_resp),
    .io_async_mem_6_last(bundleIn_0_r_sink_io_async_mem_6_last),
    .io_async_mem_7_id(bundleIn_0_r_sink_io_async_mem_7_id),
    .io_async_mem_7_data(bundleIn_0_r_sink_io_async_mem_7_data),
    .io_async_mem_7_resp(bundleIn_0_r_sink_io_async_mem_7_resp),
    .io_async_mem_7_last(bundleIn_0_r_sink_io_async_mem_7_last),
    .io_async_ridx(bundleIn_0_r_sink_io_async_ridx),
    .io_async_widx(bundleIn_0_r_sink_io_async_widx),
    .io_async_safe_ridx_valid(bundleIn_0_r_sink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleIn_0_r_sink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleIn_0_r_sink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleIn_0_r_sink_io_async_safe_sink_reset_n)
  );
  AsyncQueueSink_4_inVCU118FPGATestHarness bundleIn_0_b_sink ( // @[AsyncQueue.scala 207:22]
    .clock(bundleIn_0_b_sink_clock),
    .reset(bundleIn_0_b_sink_reset),
    .io_deq_ready(bundleIn_0_b_sink_io_deq_ready),
    .io_deq_valid(bundleIn_0_b_sink_io_deq_valid),
    .io_deq_bits_id(bundleIn_0_b_sink_io_deq_bits_id),
    .io_deq_bits_resp(bundleIn_0_b_sink_io_deq_bits_resp),
    .io_async_mem_0_id(bundleIn_0_b_sink_io_async_mem_0_id),
    .io_async_mem_0_resp(bundleIn_0_b_sink_io_async_mem_0_resp),
    .io_async_mem_1_id(bundleIn_0_b_sink_io_async_mem_1_id),
    .io_async_mem_1_resp(bundleIn_0_b_sink_io_async_mem_1_resp),
    .io_async_mem_2_id(bundleIn_0_b_sink_io_async_mem_2_id),
    .io_async_mem_2_resp(bundleIn_0_b_sink_io_async_mem_2_resp),
    .io_async_mem_3_id(bundleIn_0_b_sink_io_async_mem_3_id),
    .io_async_mem_3_resp(bundleIn_0_b_sink_io_async_mem_3_resp),
    .io_async_mem_4_id(bundleIn_0_b_sink_io_async_mem_4_id),
    .io_async_mem_4_resp(bundleIn_0_b_sink_io_async_mem_4_resp),
    .io_async_mem_5_id(bundleIn_0_b_sink_io_async_mem_5_id),
    .io_async_mem_5_resp(bundleIn_0_b_sink_io_async_mem_5_resp),
    .io_async_mem_6_id(bundleIn_0_b_sink_io_async_mem_6_id),
    .io_async_mem_6_resp(bundleIn_0_b_sink_io_async_mem_6_resp),
    .io_async_mem_7_id(bundleIn_0_b_sink_io_async_mem_7_id),
    .io_async_mem_7_resp(bundleIn_0_b_sink_io_async_mem_7_resp),
    .io_async_ridx(bundleIn_0_b_sink_io_async_ridx),
    .io_async_widx(bundleIn_0_b_sink_io_async_widx),
    .io_async_safe_ridx_valid(bundleIn_0_b_sink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(bundleIn_0_b_sink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(bundleIn_0_b_sink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(bundleIn_0_b_sink_io_async_safe_sink_reset_n)
  );
  assign auto_in_aw_ready = bundleOut_0_aw_source_io_enq_ready; // @[Nodes.scala 1210:84 AsyncQueue.scala 217:19]
  assign auto_in_w_ready = bundleOut_0_w_source_io_enq_ready; // @[Nodes.scala 1210:84 AsyncQueue.scala 217:19]
  assign auto_in_b_valid = bundleIn_0_b_sink_io_deq_valid; // @[Nodes.scala 1210:84 AsyncCrossing.scala 27:14]
  assign auto_in_b_bits_id = bundleIn_0_b_sink_io_deq_bits_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 27:14]
  assign auto_in_b_bits_resp = bundleIn_0_b_sink_io_deq_bits_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 27:14]
  assign auto_in_ar_ready = bundleOut_0_ar_source_io_enq_ready; // @[Nodes.scala 1210:84 AsyncQueue.scala 217:19]
  assign auto_in_r_valid = bundleIn_0_r_sink_io_deq_valid; // @[Nodes.scala 1210:84 AsyncCrossing.scala 26:14]
  assign auto_in_r_bits_id = bundleIn_0_r_sink_io_deq_bits_id; // @[Nodes.scala 1210:84 AsyncCrossing.scala 26:14]
  assign auto_in_r_bits_data = bundleIn_0_r_sink_io_deq_bits_data; // @[Nodes.scala 1210:84 AsyncCrossing.scala 26:14]
  assign auto_in_r_bits_resp = bundleIn_0_r_sink_io_deq_bits_resp; // @[Nodes.scala 1210:84 AsyncCrossing.scala 26:14]
  assign auto_in_r_bits_last = bundleIn_0_r_sink_io_deq_bits_last; // @[Nodes.scala 1210:84 AsyncCrossing.scala 26:14]
  assign auto_out_aw_mem_0_id = bundleOut_0_aw_source_io_async_mem_0_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_0_addr = bundleOut_0_aw_source_io_async_mem_0_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_0_len = bundleOut_0_aw_source_io_async_mem_0_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_0_size = bundleOut_0_aw_source_io_async_mem_0_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_0_burst = bundleOut_0_aw_source_io_async_mem_0_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_0_lock = bundleOut_0_aw_source_io_async_mem_0_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_0_cache = bundleOut_0_aw_source_io_async_mem_0_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_0_prot = bundleOut_0_aw_source_io_async_mem_0_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_0_qos = bundleOut_0_aw_source_io_async_mem_0_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_id = bundleOut_0_aw_source_io_async_mem_1_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_addr = bundleOut_0_aw_source_io_async_mem_1_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_len = bundleOut_0_aw_source_io_async_mem_1_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_size = bundleOut_0_aw_source_io_async_mem_1_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_burst = bundleOut_0_aw_source_io_async_mem_1_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_lock = bundleOut_0_aw_source_io_async_mem_1_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_cache = bundleOut_0_aw_source_io_async_mem_1_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_prot = bundleOut_0_aw_source_io_async_mem_1_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_1_qos = bundleOut_0_aw_source_io_async_mem_1_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_id = bundleOut_0_aw_source_io_async_mem_2_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_addr = bundleOut_0_aw_source_io_async_mem_2_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_len = bundleOut_0_aw_source_io_async_mem_2_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_size = bundleOut_0_aw_source_io_async_mem_2_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_burst = bundleOut_0_aw_source_io_async_mem_2_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_lock = bundleOut_0_aw_source_io_async_mem_2_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_cache = bundleOut_0_aw_source_io_async_mem_2_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_prot = bundleOut_0_aw_source_io_async_mem_2_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_2_qos = bundleOut_0_aw_source_io_async_mem_2_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_id = bundleOut_0_aw_source_io_async_mem_3_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_addr = bundleOut_0_aw_source_io_async_mem_3_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_len = bundleOut_0_aw_source_io_async_mem_3_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_size = bundleOut_0_aw_source_io_async_mem_3_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_burst = bundleOut_0_aw_source_io_async_mem_3_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_lock = bundleOut_0_aw_source_io_async_mem_3_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_cache = bundleOut_0_aw_source_io_async_mem_3_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_prot = bundleOut_0_aw_source_io_async_mem_3_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_3_qos = bundleOut_0_aw_source_io_async_mem_3_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_id = bundleOut_0_aw_source_io_async_mem_4_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_addr = bundleOut_0_aw_source_io_async_mem_4_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_len = bundleOut_0_aw_source_io_async_mem_4_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_size = bundleOut_0_aw_source_io_async_mem_4_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_burst = bundleOut_0_aw_source_io_async_mem_4_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_lock = bundleOut_0_aw_source_io_async_mem_4_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_cache = bundleOut_0_aw_source_io_async_mem_4_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_prot = bundleOut_0_aw_source_io_async_mem_4_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_4_qos = bundleOut_0_aw_source_io_async_mem_4_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_id = bundleOut_0_aw_source_io_async_mem_5_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_addr = bundleOut_0_aw_source_io_async_mem_5_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_len = bundleOut_0_aw_source_io_async_mem_5_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_size = bundleOut_0_aw_source_io_async_mem_5_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_burst = bundleOut_0_aw_source_io_async_mem_5_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_lock = bundleOut_0_aw_source_io_async_mem_5_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_cache = bundleOut_0_aw_source_io_async_mem_5_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_prot = bundleOut_0_aw_source_io_async_mem_5_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_5_qos = bundleOut_0_aw_source_io_async_mem_5_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_id = bundleOut_0_aw_source_io_async_mem_6_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_addr = bundleOut_0_aw_source_io_async_mem_6_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_len = bundleOut_0_aw_source_io_async_mem_6_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_size = bundleOut_0_aw_source_io_async_mem_6_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_burst = bundleOut_0_aw_source_io_async_mem_6_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_lock = bundleOut_0_aw_source_io_async_mem_6_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_cache = bundleOut_0_aw_source_io_async_mem_6_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_prot = bundleOut_0_aw_source_io_async_mem_6_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_6_qos = bundleOut_0_aw_source_io_async_mem_6_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_id = bundleOut_0_aw_source_io_async_mem_7_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_addr = bundleOut_0_aw_source_io_async_mem_7_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_len = bundleOut_0_aw_source_io_async_mem_7_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_size = bundleOut_0_aw_source_io_async_mem_7_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_burst = bundleOut_0_aw_source_io_async_mem_7_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_lock = bundleOut_0_aw_source_io_async_mem_7_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_cache = bundleOut_0_aw_source_io_async_mem_7_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_prot = bundleOut_0_aw_source_io_async_mem_7_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_mem_7_qos = bundleOut_0_aw_source_io_async_mem_7_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_widx = bundleOut_0_aw_source_io_async_widx; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_safe_widx_valid = bundleOut_0_aw_source_io_async_safe_widx_valid; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_aw_safe_source_reset_n = bundleOut_0_aw_source_io_async_safe_source_reset_n; // @[Nodes.scala 1207:84 AsyncCrossing.scala 24:14]
  assign auto_out_w_mem_0_data = bundleOut_0_w_source_io_async_mem_0_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_0_strb = bundleOut_0_w_source_io_async_mem_0_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_0_last = bundleOut_0_w_source_io_async_mem_0_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_1_data = bundleOut_0_w_source_io_async_mem_1_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_1_strb = bundleOut_0_w_source_io_async_mem_1_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_1_last = bundleOut_0_w_source_io_async_mem_1_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_2_data = bundleOut_0_w_source_io_async_mem_2_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_2_strb = bundleOut_0_w_source_io_async_mem_2_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_2_last = bundleOut_0_w_source_io_async_mem_2_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_3_data = bundleOut_0_w_source_io_async_mem_3_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_3_strb = bundleOut_0_w_source_io_async_mem_3_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_3_last = bundleOut_0_w_source_io_async_mem_3_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_4_data = bundleOut_0_w_source_io_async_mem_4_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_4_strb = bundleOut_0_w_source_io_async_mem_4_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_4_last = bundleOut_0_w_source_io_async_mem_4_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_5_data = bundleOut_0_w_source_io_async_mem_5_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_5_strb = bundleOut_0_w_source_io_async_mem_5_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_5_last = bundleOut_0_w_source_io_async_mem_5_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_6_data = bundleOut_0_w_source_io_async_mem_6_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_6_strb = bundleOut_0_w_source_io_async_mem_6_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_6_last = bundleOut_0_w_source_io_async_mem_6_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_7_data = bundleOut_0_w_source_io_async_mem_7_data; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_7_strb = bundleOut_0_w_source_io_async_mem_7_strb; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_mem_7_last = bundleOut_0_w_source_io_async_mem_7_last; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_widx = bundleOut_0_w_source_io_async_widx; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_safe_widx_valid = bundleOut_0_w_source_io_async_safe_widx_valid; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_w_safe_source_reset_n = bundleOut_0_w_source_io_async_safe_source_reset_n; // @[Nodes.scala 1207:84 AsyncCrossing.scala 25:14]
  assign auto_out_b_ridx = bundleIn_0_b_sink_io_async_ridx; // @[Nodes.scala 1207:84 AsyncQueue.scala 208:19]
  assign auto_out_b_safe_ridx_valid = bundleIn_0_b_sink_io_async_safe_ridx_valid; // @[Nodes.scala 1207:84 AsyncQueue.scala 208:19]
  assign auto_out_b_safe_sink_reset_n = bundleIn_0_b_sink_io_async_safe_sink_reset_n; // @[Nodes.scala 1207:84 AsyncQueue.scala 208:19]
  assign auto_out_ar_mem_0_id = bundleOut_0_ar_source_io_async_mem_0_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_0_addr = bundleOut_0_ar_source_io_async_mem_0_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_0_len = bundleOut_0_ar_source_io_async_mem_0_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_0_size = bundleOut_0_ar_source_io_async_mem_0_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_0_burst = bundleOut_0_ar_source_io_async_mem_0_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_0_lock = bundleOut_0_ar_source_io_async_mem_0_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_0_cache = bundleOut_0_ar_source_io_async_mem_0_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_0_prot = bundleOut_0_ar_source_io_async_mem_0_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_0_qos = bundleOut_0_ar_source_io_async_mem_0_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_id = bundleOut_0_ar_source_io_async_mem_1_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_addr = bundleOut_0_ar_source_io_async_mem_1_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_len = bundleOut_0_ar_source_io_async_mem_1_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_size = bundleOut_0_ar_source_io_async_mem_1_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_burst = bundleOut_0_ar_source_io_async_mem_1_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_lock = bundleOut_0_ar_source_io_async_mem_1_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_cache = bundleOut_0_ar_source_io_async_mem_1_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_prot = bundleOut_0_ar_source_io_async_mem_1_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_1_qos = bundleOut_0_ar_source_io_async_mem_1_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_id = bundleOut_0_ar_source_io_async_mem_2_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_addr = bundleOut_0_ar_source_io_async_mem_2_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_len = bundleOut_0_ar_source_io_async_mem_2_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_size = bundleOut_0_ar_source_io_async_mem_2_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_burst = bundleOut_0_ar_source_io_async_mem_2_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_lock = bundleOut_0_ar_source_io_async_mem_2_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_cache = bundleOut_0_ar_source_io_async_mem_2_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_prot = bundleOut_0_ar_source_io_async_mem_2_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_2_qos = bundleOut_0_ar_source_io_async_mem_2_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_id = bundleOut_0_ar_source_io_async_mem_3_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_addr = bundleOut_0_ar_source_io_async_mem_3_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_len = bundleOut_0_ar_source_io_async_mem_3_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_size = bundleOut_0_ar_source_io_async_mem_3_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_burst = bundleOut_0_ar_source_io_async_mem_3_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_lock = bundleOut_0_ar_source_io_async_mem_3_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_cache = bundleOut_0_ar_source_io_async_mem_3_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_prot = bundleOut_0_ar_source_io_async_mem_3_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_3_qos = bundleOut_0_ar_source_io_async_mem_3_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_id = bundleOut_0_ar_source_io_async_mem_4_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_addr = bundleOut_0_ar_source_io_async_mem_4_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_len = bundleOut_0_ar_source_io_async_mem_4_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_size = bundleOut_0_ar_source_io_async_mem_4_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_burst = bundleOut_0_ar_source_io_async_mem_4_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_lock = bundleOut_0_ar_source_io_async_mem_4_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_cache = bundleOut_0_ar_source_io_async_mem_4_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_prot = bundleOut_0_ar_source_io_async_mem_4_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_4_qos = bundleOut_0_ar_source_io_async_mem_4_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_id = bundleOut_0_ar_source_io_async_mem_5_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_addr = bundleOut_0_ar_source_io_async_mem_5_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_len = bundleOut_0_ar_source_io_async_mem_5_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_size = bundleOut_0_ar_source_io_async_mem_5_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_burst = bundleOut_0_ar_source_io_async_mem_5_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_lock = bundleOut_0_ar_source_io_async_mem_5_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_cache = bundleOut_0_ar_source_io_async_mem_5_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_prot = bundleOut_0_ar_source_io_async_mem_5_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_5_qos = bundleOut_0_ar_source_io_async_mem_5_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_id = bundleOut_0_ar_source_io_async_mem_6_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_addr = bundleOut_0_ar_source_io_async_mem_6_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_len = bundleOut_0_ar_source_io_async_mem_6_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_size = bundleOut_0_ar_source_io_async_mem_6_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_burst = bundleOut_0_ar_source_io_async_mem_6_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_lock = bundleOut_0_ar_source_io_async_mem_6_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_cache = bundleOut_0_ar_source_io_async_mem_6_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_prot = bundleOut_0_ar_source_io_async_mem_6_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_6_qos = bundleOut_0_ar_source_io_async_mem_6_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_id = bundleOut_0_ar_source_io_async_mem_7_id; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_addr = bundleOut_0_ar_source_io_async_mem_7_addr; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_len = bundleOut_0_ar_source_io_async_mem_7_len; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_size = bundleOut_0_ar_source_io_async_mem_7_size; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_burst = bundleOut_0_ar_source_io_async_mem_7_burst; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_lock = bundleOut_0_ar_source_io_async_mem_7_lock; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_cache = bundleOut_0_ar_source_io_async_mem_7_cache; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_prot = bundleOut_0_ar_source_io_async_mem_7_prot; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_mem_7_qos = bundleOut_0_ar_source_io_async_mem_7_qos; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_widx = bundleOut_0_ar_source_io_async_widx; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_safe_widx_valid = bundleOut_0_ar_source_io_async_safe_widx_valid; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_ar_safe_source_reset_n = bundleOut_0_ar_source_io_async_safe_source_reset_n; // @[Nodes.scala 1207:84 AsyncCrossing.scala 23:14]
  assign auto_out_r_ridx = bundleIn_0_r_sink_io_async_ridx; // @[Nodes.scala 1207:84 AsyncQueue.scala 208:19]
  assign auto_out_r_safe_ridx_valid = bundleIn_0_r_sink_io_async_safe_ridx_valid; // @[Nodes.scala 1207:84 AsyncQueue.scala 208:19]
  assign auto_out_r_safe_sink_reset_n = bundleIn_0_r_sink_io_async_safe_sink_reset_n; // @[Nodes.scala 1207:84 AsyncQueue.scala 208:19]
  assign bundleOut_0_ar_source_clock = clock;
  assign bundleOut_0_ar_source_reset = reset;
  assign bundleOut_0_ar_source_io_enq_valid = auto_in_ar_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_enq_bits_qos = auto_in_ar_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_ar_source_io_async_ridx = auto_out_ar_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_ar_source_io_async_safe_ridx_valid = auto_out_ar_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_ar_source_io_async_safe_sink_reset_n = auto_out_ar_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_aw_source_clock = clock;
  assign bundleOut_0_aw_source_reset = reset;
  assign bundleOut_0_aw_source_io_enq_valid = auto_in_aw_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_enq_bits_qos = auto_in_aw_bits_qos; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_aw_source_io_async_ridx = auto_out_aw_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_aw_source_io_async_safe_ridx_valid = auto_out_aw_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_aw_source_io_async_safe_sink_reset_n = auto_out_aw_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_w_source_clock = clock;
  assign bundleOut_0_w_source_reset = reset;
  assign bundleOut_0_w_source_io_enq_valid = auto_in_w_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_source_io_enq_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_source_io_enq_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_source_io_enq_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleOut_0_w_source_io_async_ridx = auto_out_w_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_w_source_io_async_safe_ridx_valid = auto_out_w_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleOut_0_w_source_io_async_safe_sink_reset_n = auto_out_w_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_clock = clock;
  assign bundleIn_0_r_sink_reset = reset;
  assign bundleIn_0_r_sink_io_deq_ready = auto_in_r_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_r_sink_io_async_mem_0_id = auto_out_r_mem_0_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_0_data = auto_out_r_mem_0_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_0_resp = auto_out_r_mem_0_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_0_last = auto_out_r_mem_0_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_1_id = auto_out_r_mem_1_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_1_data = auto_out_r_mem_1_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_1_resp = auto_out_r_mem_1_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_1_last = auto_out_r_mem_1_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_2_id = auto_out_r_mem_2_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_2_data = auto_out_r_mem_2_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_2_resp = auto_out_r_mem_2_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_2_last = auto_out_r_mem_2_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_3_id = auto_out_r_mem_3_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_3_data = auto_out_r_mem_3_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_3_resp = auto_out_r_mem_3_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_3_last = auto_out_r_mem_3_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_4_id = auto_out_r_mem_4_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_4_data = auto_out_r_mem_4_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_4_resp = auto_out_r_mem_4_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_4_last = auto_out_r_mem_4_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_5_id = auto_out_r_mem_5_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_5_data = auto_out_r_mem_5_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_5_resp = auto_out_r_mem_5_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_5_last = auto_out_r_mem_5_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_6_id = auto_out_r_mem_6_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_6_data = auto_out_r_mem_6_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_6_resp = auto_out_r_mem_6_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_6_last = auto_out_r_mem_6_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_7_id = auto_out_r_mem_7_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_7_data = auto_out_r_mem_7_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_7_resp = auto_out_r_mem_7_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_mem_7_last = auto_out_r_mem_7_last; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_widx = auto_out_r_widx; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_safe_widx_valid = auto_out_r_safe_widx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_r_sink_io_async_safe_source_reset_n = auto_out_r_safe_source_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_clock = clock;
  assign bundleIn_0_b_sink_reset = reset;
  assign bundleIn_0_b_sink_io_deq_ready = auto_in_b_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign bundleIn_0_b_sink_io_async_mem_0_id = auto_out_b_mem_0_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_0_resp = auto_out_b_mem_0_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_1_id = auto_out_b_mem_1_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_1_resp = auto_out_b_mem_1_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_2_id = auto_out_b_mem_2_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_2_resp = auto_out_b_mem_2_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_3_id = auto_out_b_mem_3_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_3_resp = auto_out_b_mem_3_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_4_id = auto_out_b_mem_4_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_4_resp = auto_out_b_mem_4_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_5_id = auto_out_b_mem_5_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_5_resp = auto_out_b_mem_5_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_6_id = auto_out_b_mem_6_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_6_resp = auto_out_b_mem_6_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_7_id = auto_out_b_mem_7_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_mem_7_resp = auto_out_b_mem_7_resp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_widx = auto_out_b_widx; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_safe_widx_valid = auto_out_b_safe_widx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign bundleIn_0_b_sink_io_async_safe_source_reset_n = auto_out_b_safe_source_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
endmodule
module XilinxVCU118MIG_inVCU118FPGATestHarness(
  input         clock,
  input         reset,
  output        auto_buffer_in_a_ready,
  input         auto_buffer_in_a_valid,
  input  [2:0]  auto_buffer_in_a_bits_opcode,
  input  [3:0]  auto_buffer_in_a_bits_size,
  input  [3:0]  auto_buffer_in_a_bits_source,
  input  [31:0] auto_buffer_in_a_bits_address,
  input  [7:0]  auto_buffer_in_a_bits_mask,
  input  [63:0] auto_buffer_in_a_bits_data,
  input         auto_buffer_in_d_ready,
  output        auto_buffer_in_d_valid,
  output [2:0]  auto_buffer_in_d_bits_opcode,
  output [1:0]  auto_buffer_in_d_bits_param,
  output [3:0]  auto_buffer_in_d_bits_size,
  output [3:0]  auto_buffer_in_d_bits_source,
  output        auto_buffer_in_d_bits_sink,
  output        auto_buffer_in_d_bits_denied,
  output [63:0] auto_buffer_in_d_bits_data,
  output        auto_buffer_in_d_bits_corrupt,
  output [16:0] io_port_c0_ddr4_adr,
  output        io_port_c0_ddr4_bg,
  output [1:0]  io_port_c0_ddr4_ba,
  output        io_port_c0_ddr4_reset_n,
  output        io_port_c0_ddr4_act_n,
  output        io_port_c0_ddr4_ck_c,
  output        io_port_c0_ddr4_ck_t,
  output        io_port_c0_ddr4_cke,
  output        io_port_c0_ddr4_cs_n,
  output        io_port_c0_ddr4_odt,
  inout  [63:0] io_port_c0_ddr4_dq,
  inout  [7:0]  io_port_c0_ddr4_dqs_c,
  inout  [7:0]  io_port_c0_ddr4_dqs_t,
  inout  [7:0]  io_port_c0_ddr4_dm_dbi_n,
  input         io_port_c0_sys_clk_i,
  output        io_port_c0_ddr4_ui_clk,
  output        io_port_c0_ddr4_ui_clk_sync_rst,
  input         io_port_c0_ddr4_aresetn,
  input         io_port_sys_rst
);
  wire  buffer_clock; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_reset; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_in_a_ready; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_in_a_valid; // @[XilinxVCU118MIG.scala 142:27]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[XilinxVCU118MIG.scala 142:27]
  wire [3:0] buffer_auto_in_a_bits_size; // @[XilinxVCU118MIG.scala 142:27]
  wire [3:0] buffer_auto_in_a_bits_source; // @[XilinxVCU118MIG.scala 142:27]
  wire [31:0] buffer_auto_in_a_bits_address; // @[XilinxVCU118MIG.scala 142:27]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[XilinxVCU118MIG.scala 142:27]
  wire [63:0] buffer_auto_in_a_bits_data; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_in_d_ready; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_in_d_valid; // @[XilinxVCU118MIG.scala 142:27]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[XilinxVCU118MIG.scala 142:27]
  wire [1:0] buffer_auto_in_d_bits_param; // @[XilinxVCU118MIG.scala 142:27]
  wire [3:0] buffer_auto_in_d_bits_size; // @[XilinxVCU118MIG.scala 142:27]
  wire [3:0] buffer_auto_in_d_bits_source; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_in_d_bits_sink; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_in_d_bits_denied; // @[XilinxVCU118MIG.scala 142:27]
  wire [63:0] buffer_auto_in_d_bits_data; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_in_d_bits_corrupt; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_out_a_ready; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_out_a_valid; // @[XilinxVCU118MIG.scala 142:27]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[XilinxVCU118MIG.scala 142:27]
  wire [3:0] buffer_auto_out_a_bits_size; // @[XilinxVCU118MIG.scala 142:27]
  wire [3:0] buffer_auto_out_a_bits_source; // @[XilinxVCU118MIG.scala 142:27]
  wire [31:0] buffer_auto_out_a_bits_address; // @[XilinxVCU118MIG.scala 142:27]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[XilinxVCU118MIG.scala 142:27]
  wire [63:0] buffer_auto_out_a_bits_data; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_out_d_ready; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_out_d_valid; // @[XilinxVCU118MIG.scala 142:27]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[XilinxVCU118MIG.scala 142:27]
  wire [3:0] buffer_auto_out_d_bits_size; // @[XilinxVCU118MIG.scala 142:27]
  wire [3:0] buffer_auto_out_d_bits_source; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_out_d_bits_denied; // @[XilinxVCU118MIG.scala 142:27]
  wire [63:0] buffer_auto_out_d_bits_data; // @[XilinxVCU118MIG.scala 142:27]
  wire  buffer_auto_out_d_bits_corrupt; // @[XilinxVCU118MIG.scala 142:27]
  wire  toaxi4_clock; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_reset; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_in_a_ready; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_in_a_valid; // @[XilinxVCU118MIG.scala 143:27]
  wire [2:0] toaxi4_auto_in_a_bits_opcode; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_in_a_bits_size; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_in_a_bits_source; // @[XilinxVCU118MIG.scala 143:27]
  wire [31:0] toaxi4_auto_in_a_bits_address; // @[XilinxVCU118MIG.scala 143:27]
  wire [7:0] toaxi4_auto_in_a_bits_mask; // @[XilinxVCU118MIG.scala 143:27]
  wire [63:0] toaxi4_auto_in_a_bits_data; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_in_d_ready; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_in_d_valid; // @[XilinxVCU118MIG.scala 143:27]
  wire [2:0] toaxi4_auto_in_d_bits_opcode; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_in_d_bits_size; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_in_d_bits_source; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_in_d_bits_denied; // @[XilinxVCU118MIG.scala 143:27]
  wire [63:0] toaxi4_auto_in_d_bits_data; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_in_d_bits_corrupt; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_aw_ready; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_aw_valid; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_aw_bits_id; // @[XilinxVCU118MIG.scala 143:27]
  wire [31:0] toaxi4_auto_out_aw_bits_addr; // @[XilinxVCU118MIG.scala 143:27]
  wire [7:0] toaxi4_auto_out_aw_bits_len; // @[XilinxVCU118MIG.scala 143:27]
  wire [2:0] toaxi4_auto_out_aw_bits_size; // @[XilinxVCU118MIG.scala 143:27]
  wire [1:0] toaxi4_auto_out_aw_bits_burst; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_aw_bits_lock; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_aw_bits_cache; // @[XilinxVCU118MIG.scala 143:27]
  wire [2:0] toaxi4_auto_out_aw_bits_prot; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_aw_bits_qos; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_aw_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_aw_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_w_ready; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_w_valid; // @[XilinxVCU118MIG.scala 143:27]
  wire [63:0] toaxi4_auto_out_w_bits_data; // @[XilinxVCU118MIG.scala 143:27]
  wire [7:0] toaxi4_auto_out_w_bits_strb; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_w_bits_last; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_b_ready; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_b_valid; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_b_bits_id; // @[XilinxVCU118MIG.scala 143:27]
  wire [1:0] toaxi4_auto_out_b_bits_resp; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_b_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_b_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_ar_ready; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_ar_valid; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_ar_bits_id; // @[XilinxVCU118MIG.scala 143:27]
  wire [31:0] toaxi4_auto_out_ar_bits_addr; // @[XilinxVCU118MIG.scala 143:27]
  wire [7:0] toaxi4_auto_out_ar_bits_len; // @[XilinxVCU118MIG.scala 143:27]
  wire [2:0] toaxi4_auto_out_ar_bits_size; // @[XilinxVCU118MIG.scala 143:27]
  wire [1:0] toaxi4_auto_out_ar_bits_burst; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_ar_bits_lock; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_ar_bits_cache; // @[XilinxVCU118MIG.scala 143:27]
  wire [2:0] toaxi4_auto_out_ar_bits_prot; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_ar_bits_qos; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_ar_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_ar_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_r_ready; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_r_valid; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_r_bits_id; // @[XilinxVCU118MIG.scala 143:27]
  wire [63:0] toaxi4_auto_out_r_bits_data; // @[XilinxVCU118MIG.scala 143:27]
  wire [1:0] toaxi4_auto_out_r_bits_resp; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_r_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 143:27]
  wire [3:0] toaxi4_auto_out_r_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 143:27]
  wire  toaxi4_auto_out_r_bits_last; // @[XilinxVCU118MIG.scala 143:27]
  wire  indexer_auto_in_aw_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_aw_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_aw_bits_id; // @[XilinxVCU118MIG.scala 144:27]
  wire [31:0] indexer_auto_in_aw_bits_addr; // @[XilinxVCU118MIG.scala 144:27]
  wire [7:0] indexer_auto_in_aw_bits_len; // @[XilinxVCU118MIG.scala 144:27]
  wire [2:0] indexer_auto_in_aw_bits_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [1:0] indexer_auto_in_aw_bits_burst; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_aw_bits_lock; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_aw_bits_cache; // @[XilinxVCU118MIG.scala 144:27]
  wire [2:0] indexer_auto_in_aw_bits_prot; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_aw_bits_qos; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_aw_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_aw_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_w_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_w_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [63:0] indexer_auto_in_w_bits_data; // @[XilinxVCU118MIG.scala 144:27]
  wire [7:0] indexer_auto_in_w_bits_strb; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_w_bits_last; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_b_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_b_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_b_bits_id; // @[XilinxVCU118MIG.scala 144:27]
  wire [1:0] indexer_auto_in_b_bits_resp; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_b_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_b_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_ar_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_ar_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_ar_bits_id; // @[XilinxVCU118MIG.scala 144:27]
  wire [31:0] indexer_auto_in_ar_bits_addr; // @[XilinxVCU118MIG.scala 144:27]
  wire [7:0] indexer_auto_in_ar_bits_len; // @[XilinxVCU118MIG.scala 144:27]
  wire [2:0] indexer_auto_in_ar_bits_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [1:0] indexer_auto_in_ar_bits_burst; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_ar_bits_lock; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_ar_bits_cache; // @[XilinxVCU118MIG.scala 144:27]
  wire [2:0] indexer_auto_in_ar_bits_prot; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_ar_bits_qos; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_ar_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_ar_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_r_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_r_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_r_bits_id; // @[XilinxVCU118MIG.scala 144:27]
  wire [63:0] indexer_auto_in_r_bits_data; // @[XilinxVCU118MIG.scala 144:27]
  wire [1:0] indexer_auto_in_r_bits_resp; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_r_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_in_r_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_in_r_bits_last; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_aw_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_aw_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_aw_bits_id; // @[XilinxVCU118MIG.scala 144:27]
  wire [31:0] indexer_auto_out_aw_bits_addr; // @[XilinxVCU118MIG.scala 144:27]
  wire [7:0] indexer_auto_out_aw_bits_len; // @[XilinxVCU118MIG.scala 144:27]
  wire [2:0] indexer_auto_out_aw_bits_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [1:0] indexer_auto_out_aw_bits_burst; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_aw_bits_lock; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_aw_bits_cache; // @[XilinxVCU118MIG.scala 144:27]
  wire [2:0] indexer_auto_out_aw_bits_prot; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_aw_bits_qos; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_aw_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_aw_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_w_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_w_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [63:0] indexer_auto_out_w_bits_data; // @[XilinxVCU118MIG.scala 144:27]
  wire [7:0] indexer_auto_out_w_bits_strb; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_w_bits_last; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_b_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_b_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_b_bits_id; // @[XilinxVCU118MIG.scala 144:27]
  wire [1:0] indexer_auto_out_b_bits_resp; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_b_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_b_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_ar_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_ar_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_ar_bits_id; // @[XilinxVCU118MIG.scala 144:27]
  wire [31:0] indexer_auto_out_ar_bits_addr; // @[XilinxVCU118MIG.scala 144:27]
  wire [7:0] indexer_auto_out_ar_bits_len; // @[XilinxVCU118MIG.scala 144:27]
  wire [2:0] indexer_auto_out_ar_bits_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [1:0] indexer_auto_out_ar_bits_burst; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_ar_bits_lock; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_ar_bits_cache; // @[XilinxVCU118MIG.scala 144:27]
  wire [2:0] indexer_auto_out_ar_bits_prot; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_ar_bits_qos; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_ar_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_ar_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_r_ready; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_r_valid; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_r_bits_id; // @[XilinxVCU118MIG.scala 144:27]
  wire [63:0] indexer_auto_out_r_bits_data; // @[XilinxVCU118MIG.scala 144:27]
  wire [1:0] indexer_auto_out_r_bits_resp; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_r_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 144:27]
  wire [3:0] indexer_auto_out_r_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 144:27]
  wire  indexer_auto_out_r_bits_last; // @[XilinxVCU118MIG.scala 144:27]
  wire  deint_clock; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_reset; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_aw_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_aw_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_aw_bits_id; // @[XilinxVCU118MIG.scala 145:27]
  wire [31:0] deint_auto_in_aw_bits_addr; // @[XilinxVCU118MIG.scala 145:27]
  wire [7:0] deint_auto_in_aw_bits_len; // @[XilinxVCU118MIG.scala 145:27]
  wire [2:0] deint_auto_in_aw_bits_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [1:0] deint_auto_in_aw_bits_burst; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_aw_bits_lock; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_aw_bits_cache; // @[XilinxVCU118MIG.scala 145:27]
  wire [2:0] deint_auto_in_aw_bits_prot; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_aw_bits_qos; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_aw_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_aw_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_w_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_w_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [63:0] deint_auto_in_w_bits_data; // @[XilinxVCU118MIG.scala 145:27]
  wire [7:0] deint_auto_in_w_bits_strb; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_w_bits_last; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_b_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_b_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_b_bits_id; // @[XilinxVCU118MIG.scala 145:27]
  wire [1:0] deint_auto_in_b_bits_resp; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_b_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_b_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_ar_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_ar_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_ar_bits_id; // @[XilinxVCU118MIG.scala 145:27]
  wire [31:0] deint_auto_in_ar_bits_addr; // @[XilinxVCU118MIG.scala 145:27]
  wire [7:0] deint_auto_in_ar_bits_len; // @[XilinxVCU118MIG.scala 145:27]
  wire [2:0] deint_auto_in_ar_bits_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [1:0] deint_auto_in_ar_bits_burst; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_ar_bits_lock; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_ar_bits_cache; // @[XilinxVCU118MIG.scala 145:27]
  wire [2:0] deint_auto_in_ar_bits_prot; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_ar_bits_qos; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_ar_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_ar_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_r_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_r_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_r_bits_id; // @[XilinxVCU118MIG.scala 145:27]
  wire [63:0] deint_auto_in_r_bits_data; // @[XilinxVCU118MIG.scala 145:27]
  wire [1:0] deint_auto_in_r_bits_resp; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_r_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_in_r_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_in_r_bits_last; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_aw_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_aw_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_aw_bits_id; // @[XilinxVCU118MIG.scala 145:27]
  wire [31:0] deint_auto_out_aw_bits_addr; // @[XilinxVCU118MIG.scala 145:27]
  wire [7:0] deint_auto_out_aw_bits_len; // @[XilinxVCU118MIG.scala 145:27]
  wire [2:0] deint_auto_out_aw_bits_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [1:0] deint_auto_out_aw_bits_burst; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_aw_bits_lock; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_aw_bits_cache; // @[XilinxVCU118MIG.scala 145:27]
  wire [2:0] deint_auto_out_aw_bits_prot; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_aw_bits_qos; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_aw_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_aw_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_w_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_w_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [63:0] deint_auto_out_w_bits_data; // @[XilinxVCU118MIG.scala 145:27]
  wire [7:0] deint_auto_out_w_bits_strb; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_w_bits_last; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_b_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_b_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_b_bits_id; // @[XilinxVCU118MIG.scala 145:27]
  wire [1:0] deint_auto_out_b_bits_resp; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_b_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_b_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_ar_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_ar_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_ar_bits_id; // @[XilinxVCU118MIG.scala 145:27]
  wire [31:0] deint_auto_out_ar_bits_addr; // @[XilinxVCU118MIG.scala 145:27]
  wire [7:0] deint_auto_out_ar_bits_len; // @[XilinxVCU118MIG.scala 145:27]
  wire [2:0] deint_auto_out_ar_bits_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [1:0] deint_auto_out_ar_bits_burst; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_ar_bits_lock; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_ar_bits_cache; // @[XilinxVCU118MIG.scala 145:27]
  wire [2:0] deint_auto_out_ar_bits_prot; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_ar_bits_qos; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_ar_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_ar_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_r_ready; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_r_valid; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_r_bits_id; // @[XilinxVCU118MIG.scala 145:27]
  wire [63:0] deint_auto_out_r_bits_data; // @[XilinxVCU118MIG.scala 145:27]
  wire [1:0] deint_auto_out_r_bits_resp; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_r_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 145:27]
  wire [3:0] deint_auto_out_r_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 145:27]
  wire  deint_auto_out_r_bits_last; // @[XilinxVCU118MIG.scala 145:27]
  wire  yank_clock; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_reset; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_aw_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_aw_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_aw_bits_id; // @[XilinxVCU118MIG.scala 146:27]
  wire [31:0] yank_auto_in_aw_bits_addr; // @[XilinxVCU118MIG.scala 146:27]
  wire [7:0] yank_auto_in_aw_bits_len; // @[XilinxVCU118MIG.scala 146:27]
  wire [2:0] yank_auto_in_aw_bits_size; // @[XilinxVCU118MIG.scala 146:27]
  wire [1:0] yank_auto_in_aw_bits_burst; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_aw_bits_lock; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_aw_bits_cache; // @[XilinxVCU118MIG.scala 146:27]
  wire [2:0] yank_auto_in_aw_bits_prot; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_aw_bits_qos; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_aw_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_aw_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_w_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_w_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [63:0] yank_auto_in_w_bits_data; // @[XilinxVCU118MIG.scala 146:27]
  wire [7:0] yank_auto_in_w_bits_strb; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_w_bits_last; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_b_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_b_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_b_bits_id; // @[XilinxVCU118MIG.scala 146:27]
  wire [1:0] yank_auto_in_b_bits_resp; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_b_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_b_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_ar_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_ar_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_ar_bits_id; // @[XilinxVCU118MIG.scala 146:27]
  wire [31:0] yank_auto_in_ar_bits_addr; // @[XilinxVCU118MIG.scala 146:27]
  wire [7:0] yank_auto_in_ar_bits_len; // @[XilinxVCU118MIG.scala 146:27]
  wire [2:0] yank_auto_in_ar_bits_size; // @[XilinxVCU118MIG.scala 146:27]
  wire [1:0] yank_auto_in_ar_bits_burst; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_ar_bits_lock; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_ar_bits_cache; // @[XilinxVCU118MIG.scala 146:27]
  wire [2:0] yank_auto_in_ar_bits_prot; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_ar_bits_qos; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_ar_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_ar_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_r_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_r_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_r_bits_id; // @[XilinxVCU118MIG.scala 146:27]
  wire [63:0] yank_auto_in_r_bits_data; // @[XilinxVCU118MIG.scala 146:27]
  wire [1:0] yank_auto_in_r_bits_resp; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_r_bits_echo_tl_state_size; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_in_r_bits_echo_tl_state_source; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_in_r_bits_last; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_aw_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_aw_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_out_aw_bits_id; // @[XilinxVCU118MIG.scala 146:27]
  wire [31:0] yank_auto_out_aw_bits_addr; // @[XilinxVCU118MIG.scala 146:27]
  wire [7:0] yank_auto_out_aw_bits_len; // @[XilinxVCU118MIG.scala 146:27]
  wire [2:0] yank_auto_out_aw_bits_size; // @[XilinxVCU118MIG.scala 146:27]
  wire [1:0] yank_auto_out_aw_bits_burst; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_aw_bits_lock; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_out_aw_bits_cache; // @[XilinxVCU118MIG.scala 146:27]
  wire [2:0] yank_auto_out_aw_bits_prot; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_out_aw_bits_qos; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_w_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_w_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [63:0] yank_auto_out_w_bits_data; // @[XilinxVCU118MIG.scala 146:27]
  wire [7:0] yank_auto_out_w_bits_strb; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_w_bits_last; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_b_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_b_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_out_b_bits_id; // @[XilinxVCU118MIG.scala 146:27]
  wire [1:0] yank_auto_out_b_bits_resp; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_ar_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_ar_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_out_ar_bits_id; // @[XilinxVCU118MIG.scala 146:27]
  wire [31:0] yank_auto_out_ar_bits_addr; // @[XilinxVCU118MIG.scala 146:27]
  wire [7:0] yank_auto_out_ar_bits_len; // @[XilinxVCU118MIG.scala 146:27]
  wire [2:0] yank_auto_out_ar_bits_size; // @[XilinxVCU118MIG.scala 146:27]
  wire [1:0] yank_auto_out_ar_bits_burst; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_ar_bits_lock; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_out_ar_bits_cache; // @[XilinxVCU118MIG.scala 146:27]
  wire [2:0] yank_auto_out_ar_bits_prot; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_out_ar_bits_qos; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_r_ready; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_r_valid; // @[XilinxVCU118MIG.scala 146:27]
  wire [3:0] yank_auto_out_r_bits_id; // @[XilinxVCU118MIG.scala 146:27]
  wire [63:0] yank_auto_out_r_bits_data; // @[XilinxVCU118MIG.scala 146:27]
  wire [1:0] yank_auto_out_r_bits_resp; // @[XilinxVCU118MIG.scala 146:27]
  wire  yank_auto_out_r_bits_last; // @[XilinxVCU118MIG.scala 146:27]
  wire  island_clock; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_reset; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_0_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_aw_mem_0_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_aw_mem_0_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_0_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_aw_mem_0_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_mem_0_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_0_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_0_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_0_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_1_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_aw_mem_1_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_aw_mem_1_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_1_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_aw_mem_1_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_mem_1_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_1_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_1_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_1_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_2_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_aw_mem_2_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_aw_mem_2_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_2_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_aw_mem_2_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_mem_2_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_2_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_2_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_2_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_3_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_aw_mem_3_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_aw_mem_3_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_3_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_aw_mem_3_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_mem_3_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_3_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_3_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_3_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_4_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_aw_mem_4_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_aw_mem_4_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_4_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_aw_mem_4_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_mem_4_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_4_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_4_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_4_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_5_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_aw_mem_5_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_aw_mem_5_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_5_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_aw_mem_5_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_mem_5_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_5_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_5_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_5_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_6_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_aw_mem_6_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_aw_mem_6_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_6_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_aw_mem_6_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_mem_6_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_6_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_6_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_6_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_7_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_aw_mem_7_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_aw_mem_7_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_7_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_aw_mem_7_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_mem_7_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_7_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_aw_mem_7_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_mem_7_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_ridx; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_aw_widx; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_safe_ridx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_safe_widx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_safe_source_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_aw_safe_sink_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_w_mem_0_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_w_mem_0_strb; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_mem_0_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_w_mem_1_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_w_mem_1_strb; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_mem_1_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_w_mem_2_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_w_mem_2_strb; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_mem_2_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_w_mem_3_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_w_mem_3_strb; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_mem_3_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_w_mem_4_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_w_mem_4_strb; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_mem_4_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_w_mem_5_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_w_mem_5_strb; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_mem_5_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_w_mem_6_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_w_mem_6_strb; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_mem_6_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_w_mem_7_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_w_mem_7_strb; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_mem_7_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_w_ridx; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_w_widx; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_safe_ridx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_safe_widx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_safe_source_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_w_safe_sink_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_mem_0_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_b_mem_0_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_mem_1_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_b_mem_1_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_mem_2_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_b_mem_2_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_mem_3_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_b_mem_3_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_mem_4_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_b_mem_4_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_mem_5_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_b_mem_5_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_mem_6_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_b_mem_6_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_mem_7_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_b_mem_7_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_ridx; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_b_widx; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_b_safe_ridx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_b_safe_widx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_b_safe_source_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_b_safe_sink_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_0_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_ar_mem_0_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_ar_mem_0_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_0_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_ar_mem_0_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_mem_0_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_0_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_0_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_0_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_1_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_ar_mem_1_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_ar_mem_1_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_1_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_ar_mem_1_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_mem_1_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_1_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_1_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_1_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_2_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_ar_mem_2_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_ar_mem_2_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_2_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_ar_mem_2_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_mem_2_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_2_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_2_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_2_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_3_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_ar_mem_3_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_ar_mem_3_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_3_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_ar_mem_3_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_mem_3_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_3_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_3_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_3_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_4_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_ar_mem_4_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_ar_mem_4_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_4_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_ar_mem_4_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_mem_4_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_4_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_4_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_4_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_5_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_ar_mem_5_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_ar_mem_5_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_5_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_ar_mem_5_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_mem_5_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_5_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_5_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_5_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_6_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_ar_mem_6_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_ar_mem_6_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_6_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_ar_mem_6_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_mem_6_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_6_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_6_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_6_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_7_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [31:0] island_auto_axi4in_xing_in_ar_mem_7_addr; // @[XilinxVCU118MIG.scala 147:27]
  wire [7:0] island_auto_axi4in_xing_in_ar_mem_7_len; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_7_size; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_ar_mem_7_burst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_mem_7_lock; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_7_cache; // @[XilinxVCU118MIG.scala 147:27]
  wire [2:0] island_auto_axi4in_xing_in_ar_mem_7_prot; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_mem_7_qos; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_ridx; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_ar_widx; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_safe_ridx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_safe_widx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_safe_source_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_ar_safe_sink_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_mem_0_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_r_mem_0_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_r_mem_0_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_mem_0_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_mem_1_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_r_mem_1_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_r_mem_1_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_mem_1_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_mem_2_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_r_mem_2_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_r_mem_2_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_mem_2_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_mem_3_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_r_mem_3_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_r_mem_3_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_mem_3_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_mem_4_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_r_mem_4_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_r_mem_4_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_mem_4_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_mem_5_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_r_mem_5_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_r_mem_5_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_mem_5_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_mem_6_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_r_mem_6_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_r_mem_6_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_mem_6_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_mem_7_id; // @[XilinxVCU118MIG.scala 147:27]
  wire [63:0] island_auto_axi4in_xing_in_r_mem_7_data; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_auto_axi4in_xing_in_r_mem_7_resp; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_mem_7_last; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_ridx; // @[XilinxVCU118MIG.scala 147:27]
  wire [3:0] island_auto_axi4in_xing_in_r_widx; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_safe_ridx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_safe_widx_valid; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_safe_source_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_auto_axi4in_xing_in_r_safe_sink_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire [16:0] island_io_port_c0_ddr4_adr; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_bg; // @[XilinxVCU118MIG.scala 147:27]
  wire [1:0] island_io_port_c0_ddr4_ba; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_reset_n; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_act_n; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_ck_c; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_ck_t; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_cke; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_cs_n; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_odt; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_sys_clk_i; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_ui_clk; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_ui_clk_sync_rst; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_c0_ddr4_aresetn; // @[XilinxVCU118MIG.scala 147:27]
  wire  island_io_port_sys_rst; // @[XilinxVCU118MIG.scala 147:27]
  wire  axi4asource_clock; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_reset; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_aw_ready; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_aw_valid; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_in_aw_bits_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_in_aw_bits_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_in_aw_bits_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_in_aw_bits_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_in_aw_bits_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_aw_bits_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_in_aw_bits_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_in_aw_bits_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_in_aw_bits_qos; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_w_ready; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_w_valid; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_in_w_bits_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_in_w_bits_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_w_bits_last; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_b_ready; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_b_valid; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_in_b_bits_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_in_b_bits_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_ar_ready; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_ar_valid; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_in_ar_bits_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_in_ar_bits_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_in_ar_bits_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_in_ar_bits_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_in_ar_bits_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_ar_bits_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_in_ar_bits_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_in_ar_bits_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_in_ar_bits_qos; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_r_ready; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_r_valid; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_in_r_bits_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_in_r_bits_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_in_r_bits_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_in_r_bits_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_0_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_aw_mem_0_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_aw_mem_0_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_0_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_aw_mem_0_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_mem_0_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_0_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_0_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_0_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_1_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_aw_mem_1_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_aw_mem_1_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_1_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_aw_mem_1_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_mem_1_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_1_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_1_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_1_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_2_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_aw_mem_2_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_aw_mem_2_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_2_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_aw_mem_2_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_mem_2_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_2_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_2_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_2_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_3_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_aw_mem_3_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_aw_mem_3_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_3_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_aw_mem_3_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_mem_3_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_3_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_3_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_3_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_4_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_aw_mem_4_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_aw_mem_4_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_4_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_aw_mem_4_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_mem_4_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_4_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_4_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_4_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_5_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_aw_mem_5_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_aw_mem_5_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_5_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_aw_mem_5_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_mem_5_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_5_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_5_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_5_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_6_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_aw_mem_6_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_aw_mem_6_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_6_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_aw_mem_6_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_mem_6_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_6_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_6_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_6_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_7_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_aw_mem_7_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_aw_mem_7_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_7_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_aw_mem_7_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_mem_7_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_7_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_aw_mem_7_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_mem_7_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_ridx; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_aw_widx; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_safe_ridx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_safe_widx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_safe_source_reset_n; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_aw_safe_sink_reset_n; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_w_mem_0_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_w_mem_0_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_mem_0_last; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_w_mem_1_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_w_mem_1_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_mem_1_last; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_w_mem_2_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_w_mem_2_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_mem_2_last; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_w_mem_3_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_w_mem_3_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_mem_3_last; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_w_mem_4_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_w_mem_4_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_mem_4_last; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_w_mem_5_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_w_mem_5_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_mem_5_last; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_w_mem_6_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_w_mem_6_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_mem_6_last; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_w_mem_7_data; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_w_mem_7_strb; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_mem_7_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_w_ridx; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_w_widx; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_safe_ridx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_safe_widx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_safe_source_reset_n; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_w_safe_sink_reset_n; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_mem_0_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_b_mem_0_resp; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_mem_1_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_b_mem_1_resp; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_mem_2_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_b_mem_2_resp; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_mem_3_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_b_mem_3_resp; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_mem_4_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_b_mem_4_resp; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_mem_5_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_b_mem_5_resp; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_mem_6_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_b_mem_6_resp; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_mem_7_id; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_b_mem_7_resp; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_ridx; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_b_widx; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_b_safe_ridx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_b_safe_widx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_b_safe_source_reset_n; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_b_safe_sink_reset_n; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_0_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_ar_mem_0_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_ar_mem_0_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_0_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_ar_mem_0_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_mem_0_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_0_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_0_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_0_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_1_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_ar_mem_1_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_ar_mem_1_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_1_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_ar_mem_1_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_mem_1_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_1_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_1_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_1_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_2_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_ar_mem_2_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_ar_mem_2_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_2_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_ar_mem_2_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_mem_2_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_2_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_2_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_2_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_3_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_ar_mem_3_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_ar_mem_3_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_3_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_ar_mem_3_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_mem_3_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_3_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_3_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_3_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_4_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_ar_mem_4_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_ar_mem_4_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_4_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_ar_mem_4_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_mem_4_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_4_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_4_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_4_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_5_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_ar_mem_5_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_ar_mem_5_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_5_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_ar_mem_5_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_mem_5_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_5_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_5_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_5_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_6_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_ar_mem_6_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_ar_mem_6_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_6_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_ar_mem_6_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_mem_6_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_6_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_6_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_6_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_7_id; // @[AsyncCrossing.scala 52:33]
  wire [31:0] axi4asource_auto_out_ar_mem_7_addr; // @[AsyncCrossing.scala 52:33]
  wire [7:0] axi4asource_auto_out_ar_mem_7_len; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_7_size; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_ar_mem_7_burst; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_mem_7_lock; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_7_cache; // @[AsyncCrossing.scala 52:33]
  wire [2:0] axi4asource_auto_out_ar_mem_7_prot; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_mem_7_qos; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_ridx; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_ar_widx; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_safe_ridx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_safe_widx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_safe_source_reset_n; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_ar_safe_sink_reset_n; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_mem_0_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_r_mem_0_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_r_mem_0_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_mem_0_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_mem_1_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_r_mem_1_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_r_mem_1_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_mem_1_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_mem_2_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_r_mem_2_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_r_mem_2_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_mem_2_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_mem_3_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_r_mem_3_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_r_mem_3_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_mem_3_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_mem_4_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_r_mem_4_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_r_mem_4_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_mem_4_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_mem_5_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_r_mem_5_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_r_mem_5_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_mem_5_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_mem_6_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_r_mem_6_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_r_mem_6_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_mem_6_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_mem_7_id; // @[AsyncCrossing.scala 52:33]
  wire [63:0] axi4asource_auto_out_r_mem_7_data; // @[AsyncCrossing.scala 52:33]
  wire [1:0] axi4asource_auto_out_r_mem_7_resp; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_mem_7_last; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_ridx; // @[AsyncCrossing.scala 52:33]
  wire [3:0] axi4asource_auto_out_r_widx; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_safe_ridx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_safe_widx_valid; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_safe_source_reset_n; // @[AsyncCrossing.scala 52:33]
  wire  axi4asource_auto_out_r_safe_sink_reset_n; // @[AsyncCrossing.scala 52:33]
  TLBuffer_22_inVCU118FPGATestHarness buffer ( // @[XilinxVCU118MIG.scala 142:27]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt)
  );
  TLToAXI4_1_inVCU118FPGATestHarness toaxi4 ( // @[XilinxVCU118MIG.scala 143:27]
    .clock(toaxi4_clock),
    .reset(toaxi4_reset),
    .auto_in_a_ready(toaxi4_auto_in_a_ready),
    .auto_in_a_valid(toaxi4_auto_in_a_valid),
    .auto_in_a_bits_opcode(toaxi4_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(toaxi4_auto_in_a_bits_size),
    .auto_in_a_bits_source(toaxi4_auto_in_a_bits_source),
    .auto_in_a_bits_address(toaxi4_auto_in_a_bits_address),
    .auto_in_a_bits_mask(toaxi4_auto_in_a_bits_mask),
    .auto_in_a_bits_data(toaxi4_auto_in_a_bits_data),
    .auto_in_d_ready(toaxi4_auto_in_d_ready),
    .auto_in_d_valid(toaxi4_auto_in_d_valid),
    .auto_in_d_bits_opcode(toaxi4_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(toaxi4_auto_in_d_bits_size),
    .auto_in_d_bits_source(toaxi4_auto_in_d_bits_source),
    .auto_in_d_bits_denied(toaxi4_auto_in_d_bits_denied),
    .auto_in_d_bits_data(toaxi4_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(toaxi4_auto_in_d_bits_corrupt),
    .auto_out_aw_ready(toaxi4_auto_out_aw_ready),
    .auto_out_aw_valid(toaxi4_auto_out_aw_valid),
    .auto_out_aw_bits_id(toaxi4_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(toaxi4_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(toaxi4_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(toaxi4_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(toaxi4_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(toaxi4_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(toaxi4_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(toaxi4_auto_out_aw_bits_prot),
    .auto_out_aw_bits_qos(toaxi4_auto_out_aw_bits_qos),
    .auto_out_aw_bits_echo_tl_state_size(toaxi4_auto_out_aw_bits_echo_tl_state_size),
    .auto_out_aw_bits_echo_tl_state_source(toaxi4_auto_out_aw_bits_echo_tl_state_source),
    .auto_out_w_ready(toaxi4_auto_out_w_ready),
    .auto_out_w_valid(toaxi4_auto_out_w_valid),
    .auto_out_w_bits_data(toaxi4_auto_out_w_bits_data),
    .auto_out_w_bits_strb(toaxi4_auto_out_w_bits_strb),
    .auto_out_w_bits_last(toaxi4_auto_out_w_bits_last),
    .auto_out_b_ready(toaxi4_auto_out_b_ready),
    .auto_out_b_valid(toaxi4_auto_out_b_valid),
    .auto_out_b_bits_id(toaxi4_auto_out_b_bits_id),
    .auto_out_b_bits_resp(toaxi4_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_tl_state_size(toaxi4_auto_out_b_bits_echo_tl_state_size),
    .auto_out_b_bits_echo_tl_state_source(toaxi4_auto_out_b_bits_echo_tl_state_source),
    .auto_out_ar_ready(toaxi4_auto_out_ar_ready),
    .auto_out_ar_valid(toaxi4_auto_out_ar_valid),
    .auto_out_ar_bits_id(toaxi4_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(toaxi4_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(toaxi4_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(toaxi4_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(toaxi4_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(toaxi4_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(toaxi4_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(toaxi4_auto_out_ar_bits_prot),
    .auto_out_ar_bits_qos(toaxi4_auto_out_ar_bits_qos),
    .auto_out_ar_bits_echo_tl_state_size(toaxi4_auto_out_ar_bits_echo_tl_state_size),
    .auto_out_ar_bits_echo_tl_state_source(toaxi4_auto_out_ar_bits_echo_tl_state_source),
    .auto_out_r_ready(toaxi4_auto_out_r_ready),
    .auto_out_r_valid(toaxi4_auto_out_r_valid),
    .auto_out_r_bits_id(toaxi4_auto_out_r_bits_id),
    .auto_out_r_bits_data(toaxi4_auto_out_r_bits_data),
    .auto_out_r_bits_resp(toaxi4_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_tl_state_size(toaxi4_auto_out_r_bits_echo_tl_state_size),
    .auto_out_r_bits_echo_tl_state_source(toaxi4_auto_out_r_bits_echo_tl_state_source),
    .auto_out_r_bits_last(toaxi4_auto_out_r_bits_last)
  );
  AXI4IdIndexer_1_inVCU118FPGATestHarness indexer ( // @[XilinxVCU118MIG.scala 144:27]
    .auto_in_aw_ready(indexer_auto_in_aw_ready),
    .auto_in_aw_valid(indexer_auto_in_aw_valid),
    .auto_in_aw_bits_id(indexer_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(indexer_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(indexer_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(indexer_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(indexer_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(indexer_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(indexer_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(indexer_auto_in_aw_bits_prot),
    .auto_in_aw_bits_qos(indexer_auto_in_aw_bits_qos),
    .auto_in_aw_bits_echo_tl_state_size(indexer_auto_in_aw_bits_echo_tl_state_size),
    .auto_in_aw_bits_echo_tl_state_source(indexer_auto_in_aw_bits_echo_tl_state_source),
    .auto_in_w_ready(indexer_auto_in_w_ready),
    .auto_in_w_valid(indexer_auto_in_w_valid),
    .auto_in_w_bits_data(indexer_auto_in_w_bits_data),
    .auto_in_w_bits_strb(indexer_auto_in_w_bits_strb),
    .auto_in_w_bits_last(indexer_auto_in_w_bits_last),
    .auto_in_b_ready(indexer_auto_in_b_ready),
    .auto_in_b_valid(indexer_auto_in_b_valid),
    .auto_in_b_bits_id(indexer_auto_in_b_bits_id),
    .auto_in_b_bits_resp(indexer_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_tl_state_size(indexer_auto_in_b_bits_echo_tl_state_size),
    .auto_in_b_bits_echo_tl_state_source(indexer_auto_in_b_bits_echo_tl_state_source),
    .auto_in_ar_ready(indexer_auto_in_ar_ready),
    .auto_in_ar_valid(indexer_auto_in_ar_valid),
    .auto_in_ar_bits_id(indexer_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(indexer_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(indexer_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(indexer_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(indexer_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(indexer_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(indexer_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(indexer_auto_in_ar_bits_prot),
    .auto_in_ar_bits_qos(indexer_auto_in_ar_bits_qos),
    .auto_in_ar_bits_echo_tl_state_size(indexer_auto_in_ar_bits_echo_tl_state_size),
    .auto_in_ar_bits_echo_tl_state_source(indexer_auto_in_ar_bits_echo_tl_state_source),
    .auto_in_r_ready(indexer_auto_in_r_ready),
    .auto_in_r_valid(indexer_auto_in_r_valid),
    .auto_in_r_bits_id(indexer_auto_in_r_bits_id),
    .auto_in_r_bits_data(indexer_auto_in_r_bits_data),
    .auto_in_r_bits_resp(indexer_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_tl_state_size(indexer_auto_in_r_bits_echo_tl_state_size),
    .auto_in_r_bits_echo_tl_state_source(indexer_auto_in_r_bits_echo_tl_state_source),
    .auto_in_r_bits_last(indexer_auto_in_r_bits_last),
    .auto_out_aw_ready(indexer_auto_out_aw_ready),
    .auto_out_aw_valid(indexer_auto_out_aw_valid),
    .auto_out_aw_bits_id(indexer_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(indexer_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(indexer_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(indexer_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(indexer_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(indexer_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(indexer_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(indexer_auto_out_aw_bits_prot),
    .auto_out_aw_bits_qos(indexer_auto_out_aw_bits_qos),
    .auto_out_aw_bits_echo_tl_state_size(indexer_auto_out_aw_bits_echo_tl_state_size),
    .auto_out_aw_bits_echo_tl_state_source(indexer_auto_out_aw_bits_echo_tl_state_source),
    .auto_out_w_ready(indexer_auto_out_w_ready),
    .auto_out_w_valid(indexer_auto_out_w_valid),
    .auto_out_w_bits_data(indexer_auto_out_w_bits_data),
    .auto_out_w_bits_strb(indexer_auto_out_w_bits_strb),
    .auto_out_w_bits_last(indexer_auto_out_w_bits_last),
    .auto_out_b_ready(indexer_auto_out_b_ready),
    .auto_out_b_valid(indexer_auto_out_b_valid),
    .auto_out_b_bits_id(indexer_auto_out_b_bits_id),
    .auto_out_b_bits_resp(indexer_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_tl_state_size(indexer_auto_out_b_bits_echo_tl_state_size),
    .auto_out_b_bits_echo_tl_state_source(indexer_auto_out_b_bits_echo_tl_state_source),
    .auto_out_ar_ready(indexer_auto_out_ar_ready),
    .auto_out_ar_valid(indexer_auto_out_ar_valid),
    .auto_out_ar_bits_id(indexer_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(indexer_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(indexer_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(indexer_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(indexer_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(indexer_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(indexer_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(indexer_auto_out_ar_bits_prot),
    .auto_out_ar_bits_qos(indexer_auto_out_ar_bits_qos),
    .auto_out_ar_bits_echo_tl_state_size(indexer_auto_out_ar_bits_echo_tl_state_size),
    .auto_out_ar_bits_echo_tl_state_source(indexer_auto_out_ar_bits_echo_tl_state_source),
    .auto_out_r_ready(indexer_auto_out_r_ready),
    .auto_out_r_valid(indexer_auto_out_r_valid),
    .auto_out_r_bits_id(indexer_auto_out_r_bits_id),
    .auto_out_r_bits_data(indexer_auto_out_r_bits_data),
    .auto_out_r_bits_resp(indexer_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_tl_state_size(indexer_auto_out_r_bits_echo_tl_state_size),
    .auto_out_r_bits_echo_tl_state_source(indexer_auto_out_r_bits_echo_tl_state_source),
    .auto_out_r_bits_last(indexer_auto_out_r_bits_last)
  );
  AXI4Deinterleaver_inVCU118FPGATestHarness deint ( // @[XilinxVCU118MIG.scala 145:27]
    .clock(deint_clock),
    .reset(deint_reset),
    .auto_in_aw_ready(deint_auto_in_aw_ready),
    .auto_in_aw_valid(deint_auto_in_aw_valid),
    .auto_in_aw_bits_id(deint_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(deint_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(deint_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(deint_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(deint_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(deint_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(deint_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(deint_auto_in_aw_bits_prot),
    .auto_in_aw_bits_qos(deint_auto_in_aw_bits_qos),
    .auto_in_aw_bits_echo_tl_state_size(deint_auto_in_aw_bits_echo_tl_state_size),
    .auto_in_aw_bits_echo_tl_state_source(deint_auto_in_aw_bits_echo_tl_state_source),
    .auto_in_w_ready(deint_auto_in_w_ready),
    .auto_in_w_valid(deint_auto_in_w_valid),
    .auto_in_w_bits_data(deint_auto_in_w_bits_data),
    .auto_in_w_bits_strb(deint_auto_in_w_bits_strb),
    .auto_in_w_bits_last(deint_auto_in_w_bits_last),
    .auto_in_b_ready(deint_auto_in_b_ready),
    .auto_in_b_valid(deint_auto_in_b_valid),
    .auto_in_b_bits_id(deint_auto_in_b_bits_id),
    .auto_in_b_bits_resp(deint_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_tl_state_size(deint_auto_in_b_bits_echo_tl_state_size),
    .auto_in_b_bits_echo_tl_state_source(deint_auto_in_b_bits_echo_tl_state_source),
    .auto_in_ar_ready(deint_auto_in_ar_ready),
    .auto_in_ar_valid(deint_auto_in_ar_valid),
    .auto_in_ar_bits_id(deint_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(deint_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(deint_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(deint_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(deint_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(deint_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(deint_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(deint_auto_in_ar_bits_prot),
    .auto_in_ar_bits_qos(deint_auto_in_ar_bits_qos),
    .auto_in_ar_bits_echo_tl_state_size(deint_auto_in_ar_bits_echo_tl_state_size),
    .auto_in_ar_bits_echo_tl_state_source(deint_auto_in_ar_bits_echo_tl_state_source),
    .auto_in_r_ready(deint_auto_in_r_ready),
    .auto_in_r_valid(deint_auto_in_r_valid),
    .auto_in_r_bits_id(deint_auto_in_r_bits_id),
    .auto_in_r_bits_data(deint_auto_in_r_bits_data),
    .auto_in_r_bits_resp(deint_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_tl_state_size(deint_auto_in_r_bits_echo_tl_state_size),
    .auto_in_r_bits_echo_tl_state_source(deint_auto_in_r_bits_echo_tl_state_source),
    .auto_in_r_bits_last(deint_auto_in_r_bits_last),
    .auto_out_aw_ready(deint_auto_out_aw_ready),
    .auto_out_aw_valid(deint_auto_out_aw_valid),
    .auto_out_aw_bits_id(deint_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(deint_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(deint_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(deint_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(deint_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(deint_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(deint_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(deint_auto_out_aw_bits_prot),
    .auto_out_aw_bits_qos(deint_auto_out_aw_bits_qos),
    .auto_out_aw_bits_echo_tl_state_size(deint_auto_out_aw_bits_echo_tl_state_size),
    .auto_out_aw_bits_echo_tl_state_source(deint_auto_out_aw_bits_echo_tl_state_source),
    .auto_out_w_ready(deint_auto_out_w_ready),
    .auto_out_w_valid(deint_auto_out_w_valid),
    .auto_out_w_bits_data(deint_auto_out_w_bits_data),
    .auto_out_w_bits_strb(deint_auto_out_w_bits_strb),
    .auto_out_w_bits_last(deint_auto_out_w_bits_last),
    .auto_out_b_ready(deint_auto_out_b_ready),
    .auto_out_b_valid(deint_auto_out_b_valid),
    .auto_out_b_bits_id(deint_auto_out_b_bits_id),
    .auto_out_b_bits_resp(deint_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_tl_state_size(deint_auto_out_b_bits_echo_tl_state_size),
    .auto_out_b_bits_echo_tl_state_source(deint_auto_out_b_bits_echo_tl_state_source),
    .auto_out_ar_ready(deint_auto_out_ar_ready),
    .auto_out_ar_valid(deint_auto_out_ar_valid),
    .auto_out_ar_bits_id(deint_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(deint_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(deint_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(deint_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(deint_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(deint_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(deint_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(deint_auto_out_ar_bits_prot),
    .auto_out_ar_bits_qos(deint_auto_out_ar_bits_qos),
    .auto_out_ar_bits_echo_tl_state_size(deint_auto_out_ar_bits_echo_tl_state_size),
    .auto_out_ar_bits_echo_tl_state_source(deint_auto_out_ar_bits_echo_tl_state_source),
    .auto_out_r_ready(deint_auto_out_r_ready),
    .auto_out_r_valid(deint_auto_out_r_valid),
    .auto_out_r_bits_id(deint_auto_out_r_bits_id),
    .auto_out_r_bits_data(deint_auto_out_r_bits_data),
    .auto_out_r_bits_resp(deint_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_tl_state_size(deint_auto_out_r_bits_echo_tl_state_size),
    .auto_out_r_bits_echo_tl_state_source(deint_auto_out_r_bits_echo_tl_state_source),
    .auto_out_r_bits_last(deint_auto_out_r_bits_last)
  );
  AXI4UserYanker_1_inVCU118FPGATestHarness yank ( // @[XilinxVCU118MIG.scala 146:27]
    .clock(yank_clock),
    .reset(yank_reset),
    .auto_in_aw_ready(yank_auto_in_aw_ready),
    .auto_in_aw_valid(yank_auto_in_aw_valid),
    .auto_in_aw_bits_id(yank_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(yank_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(yank_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(yank_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(yank_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(yank_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(yank_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(yank_auto_in_aw_bits_prot),
    .auto_in_aw_bits_qos(yank_auto_in_aw_bits_qos),
    .auto_in_aw_bits_echo_tl_state_size(yank_auto_in_aw_bits_echo_tl_state_size),
    .auto_in_aw_bits_echo_tl_state_source(yank_auto_in_aw_bits_echo_tl_state_source),
    .auto_in_w_ready(yank_auto_in_w_ready),
    .auto_in_w_valid(yank_auto_in_w_valid),
    .auto_in_w_bits_data(yank_auto_in_w_bits_data),
    .auto_in_w_bits_strb(yank_auto_in_w_bits_strb),
    .auto_in_w_bits_last(yank_auto_in_w_bits_last),
    .auto_in_b_ready(yank_auto_in_b_ready),
    .auto_in_b_valid(yank_auto_in_b_valid),
    .auto_in_b_bits_id(yank_auto_in_b_bits_id),
    .auto_in_b_bits_resp(yank_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_tl_state_size(yank_auto_in_b_bits_echo_tl_state_size),
    .auto_in_b_bits_echo_tl_state_source(yank_auto_in_b_bits_echo_tl_state_source),
    .auto_in_ar_ready(yank_auto_in_ar_ready),
    .auto_in_ar_valid(yank_auto_in_ar_valid),
    .auto_in_ar_bits_id(yank_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(yank_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(yank_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(yank_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(yank_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(yank_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(yank_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(yank_auto_in_ar_bits_prot),
    .auto_in_ar_bits_qos(yank_auto_in_ar_bits_qos),
    .auto_in_ar_bits_echo_tl_state_size(yank_auto_in_ar_bits_echo_tl_state_size),
    .auto_in_ar_bits_echo_tl_state_source(yank_auto_in_ar_bits_echo_tl_state_source),
    .auto_in_r_ready(yank_auto_in_r_ready),
    .auto_in_r_valid(yank_auto_in_r_valid),
    .auto_in_r_bits_id(yank_auto_in_r_bits_id),
    .auto_in_r_bits_data(yank_auto_in_r_bits_data),
    .auto_in_r_bits_resp(yank_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_tl_state_size(yank_auto_in_r_bits_echo_tl_state_size),
    .auto_in_r_bits_echo_tl_state_source(yank_auto_in_r_bits_echo_tl_state_source),
    .auto_in_r_bits_last(yank_auto_in_r_bits_last),
    .auto_out_aw_ready(yank_auto_out_aw_ready),
    .auto_out_aw_valid(yank_auto_out_aw_valid),
    .auto_out_aw_bits_id(yank_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(yank_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(yank_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(yank_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(yank_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(yank_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(yank_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(yank_auto_out_aw_bits_prot),
    .auto_out_aw_bits_qos(yank_auto_out_aw_bits_qos),
    .auto_out_w_ready(yank_auto_out_w_ready),
    .auto_out_w_valid(yank_auto_out_w_valid),
    .auto_out_w_bits_data(yank_auto_out_w_bits_data),
    .auto_out_w_bits_strb(yank_auto_out_w_bits_strb),
    .auto_out_w_bits_last(yank_auto_out_w_bits_last),
    .auto_out_b_ready(yank_auto_out_b_ready),
    .auto_out_b_valid(yank_auto_out_b_valid),
    .auto_out_b_bits_id(yank_auto_out_b_bits_id),
    .auto_out_b_bits_resp(yank_auto_out_b_bits_resp),
    .auto_out_ar_ready(yank_auto_out_ar_ready),
    .auto_out_ar_valid(yank_auto_out_ar_valid),
    .auto_out_ar_bits_id(yank_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(yank_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(yank_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(yank_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(yank_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(yank_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(yank_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(yank_auto_out_ar_bits_prot),
    .auto_out_ar_bits_qos(yank_auto_out_ar_bits_qos),
    .auto_out_r_ready(yank_auto_out_r_ready),
    .auto_out_r_valid(yank_auto_out_r_valid),
    .auto_out_r_bits_id(yank_auto_out_r_bits_id),
    .auto_out_r_bits_data(yank_auto_out_r_bits_data),
    .auto_out_r_bits_resp(yank_auto_out_r_bits_resp),
    .auto_out_r_bits_last(yank_auto_out_r_bits_last)
  );
  XilinxVCU118MIGIsland_inVCU118FPGATestHarness island ( // @[XilinxVCU118MIG.scala 147:27]
    .clock(island_clock),
    .reset(island_reset),
    .auto_axi4in_xing_in_aw_mem_0_id(island_auto_axi4in_xing_in_aw_mem_0_id),
    .auto_axi4in_xing_in_aw_mem_0_addr(island_auto_axi4in_xing_in_aw_mem_0_addr),
    .auto_axi4in_xing_in_aw_mem_0_len(island_auto_axi4in_xing_in_aw_mem_0_len),
    .auto_axi4in_xing_in_aw_mem_0_size(island_auto_axi4in_xing_in_aw_mem_0_size),
    .auto_axi4in_xing_in_aw_mem_0_burst(island_auto_axi4in_xing_in_aw_mem_0_burst),
    .auto_axi4in_xing_in_aw_mem_0_lock(island_auto_axi4in_xing_in_aw_mem_0_lock),
    .auto_axi4in_xing_in_aw_mem_0_cache(island_auto_axi4in_xing_in_aw_mem_0_cache),
    .auto_axi4in_xing_in_aw_mem_0_prot(island_auto_axi4in_xing_in_aw_mem_0_prot),
    .auto_axi4in_xing_in_aw_mem_0_qos(island_auto_axi4in_xing_in_aw_mem_0_qos),
    .auto_axi4in_xing_in_aw_mem_1_id(island_auto_axi4in_xing_in_aw_mem_1_id),
    .auto_axi4in_xing_in_aw_mem_1_addr(island_auto_axi4in_xing_in_aw_mem_1_addr),
    .auto_axi4in_xing_in_aw_mem_1_len(island_auto_axi4in_xing_in_aw_mem_1_len),
    .auto_axi4in_xing_in_aw_mem_1_size(island_auto_axi4in_xing_in_aw_mem_1_size),
    .auto_axi4in_xing_in_aw_mem_1_burst(island_auto_axi4in_xing_in_aw_mem_1_burst),
    .auto_axi4in_xing_in_aw_mem_1_lock(island_auto_axi4in_xing_in_aw_mem_1_lock),
    .auto_axi4in_xing_in_aw_mem_1_cache(island_auto_axi4in_xing_in_aw_mem_1_cache),
    .auto_axi4in_xing_in_aw_mem_1_prot(island_auto_axi4in_xing_in_aw_mem_1_prot),
    .auto_axi4in_xing_in_aw_mem_1_qos(island_auto_axi4in_xing_in_aw_mem_1_qos),
    .auto_axi4in_xing_in_aw_mem_2_id(island_auto_axi4in_xing_in_aw_mem_2_id),
    .auto_axi4in_xing_in_aw_mem_2_addr(island_auto_axi4in_xing_in_aw_mem_2_addr),
    .auto_axi4in_xing_in_aw_mem_2_len(island_auto_axi4in_xing_in_aw_mem_2_len),
    .auto_axi4in_xing_in_aw_mem_2_size(island_auto_axi4in_xing_in_aw_mem_2_size),
    .auto_axi4in_xing_in_aw_mem_2_burst(island_auto_axi4in_xing_in_aw_mem_2_burst),
    .auto_axi4in_xing_in_aw_mem_2_lock(island_auto_axi4in_xing_in_aw_mem_2_lock),
    .auto_axi4in_xing_in_aw_mem_2_cache(island_auto_axi4in_xing_in_aw_mem_2_cache),
    .auto_axi4in_xing_in_aw_mem_2_prot(island_auto_axi4in_xing_in_aw_mem_2_prot),
    .auto_axi4in_xing_in_aw_mem_2_qos(island_auto_axi4in_xing_in_aw_mem_2_qos),
    .auto_axi4in_xing_in_aw_mem_3_id(island_auto_axi4in_xing_in_aw_mem_3_id),
    .auto_axi4in_xing_in_aw_mem_3_addr(island_auto_axi4in_xing_in_aw_mem_3_addr),
    .auto_axi4in_xing_in_aw_mem_3_len(island_auto_axi4in_xing_in_aw_mem_3_len),
    .auto_axi4in_xing_in_aw_mem_3_size(island_auto_axi4in_xing_in_aw_mem_3_size),
    .auto_axi4in_xing_in_aw_mem_3_burst(island_auto_axi4in_xing_in_aw_mem_3_burst),
    .auto_axi4in_xing_in_aw_mem_3_lock(island_auto_axi4in_xing_in_aw_mem_3_lock),
    .auto_axi4in_xing_in_aw_mem_3_cache(island_auto_axi4in_xing_in_aw_mem_3_cache),
    .auto_axi4in_xing_in_aw_mem_3_prot(island_auto_axi4in_xing_in_aw_mem_3_prot),
    .auto_axi4in_xing_in_aw_mem_3_qos(island_auto_axi4in_xing_in_aw_mem_3_qos),
    .auto_axi4in_xing_in_aw_mem_4_id(island_auto_axi4in_xing_in_aw_mem_4_id),
    .auto_axi4in_xing_in_aw_mem_4_addr(island_auto_axi4in_xing_in_aw_mem_4_addr),
    .auto_axi4in_xing_in_aw_mem_4_len(island_auto_axi4in_xing_in_aw_mem_4_len),
    .auto_axi4in_xing_in_aw_mem_4_size(island_auto_axi4in_xing_in_aw_mem_4_size),
    .auto_axi4in_xing_in_aw_mem_4_burst(island_auto_axi4in_xing_in_aw_mem_4_burst),
    .auto_axi4in_xing_in_aw_mem_4_lock(island_auto_axi4in_xing_in_aw_mem_4_lock),
    .auto_axi4in_xing_in_aw_mem_4_cache(island_auto_axi4in_xing_in_aw_mem_4_cache),
    .auto_axi4in_xing_in_aw_mem_4_prot(island_auto_axi4in_xing_in_aw_mem_4_prot),
    .auto_axi4in_xing_in_aw_mem_4_qos(island_auto_axi4in_xing_in_aw_mem_4_qos),
    .auto_axi4in_xing_in_aw_mem_5_id(island_auto_axi4in_xing_in_aw_mem_5_id),
    .auto_axi4in_xing_in_aw_mem_5_addr(island_auto_axi4in_xing_in_aw_mem_5_addr),
    .auto_axi4in_xing_in_aw_mem_5_len(island_auto_axi4in_xing_in_aw_mem_5_len),
    .auto_axi4in_xing_in_aw_mem_5_size(island_auto_axi4in_xing_in_aw_mem_5_size),
    .auto_axi4in_xing_in_aw_mem_5_burst(island_auto_axi4in_xing_in_aw_mem_5_burst),
    .auto_axi4in_xing_in_aw_mem_5_lock(island_auto_axi4in_xing_in_aw_mem_5_lock),
    .auto_axi4in_xing_in_aw_mem_5_cache(island_auto_axi4in_xing_in_aw_mem_5_cache),
    .auto_axi4in_xing_in_aw_mem_5_prot(island_auto_axi4in_xing_in_aw_mem_5_prot),
    .auto_axi4in_xing_in_aw_mem_5_qos(island_auto_axi4in_xing_in_aw_mem_5_qos),
    .auto_axi4in_xing_in_aw_mem_6_id(island_auto_axi4in_xing_in_aw_mem_6_id),
    .auto_axi4in_xing_in_aw_mem_6_addr(island_auto_axi4in_xing_in_aw_mem_6_addr),
    .auto_axi4in_xing_in_aw_mem_6_len(island_auto_axi4in_xing_in_aw_mem_6_len),
    .auto_axi4in_xing_in_aw_mem_6_size(island_auto_axi4in_xing_in_aw_mem_6_size),
    .auto_axi4in_xing_in_aw_mem_6_burst(island_auto_axi4in_xing_in_aw_mem_6_burst),
    .auto_axi4in_xing_in_aw_mem_6_lock(island_auto_axi4in_xing_in_aw_mem_6_lock),
    .auto_axi4in_xing_in_aw_mem_6_cache(island_auto_axi4in_xing_in_aw_mem_6_cache),
    .auto_axi4in_xing_in_aw_mem_6_prot(island_auto_axi4in_xing_in_aw_mem_6_prot),
    .auto_axi4in_xing_in_aw_mem_6_qos(island_auto_axi4in_xing_in_aw_mem_6_qos),
    .auto_axi4in_xing_in_aw_mem_7_id(island_auto_axi4in_xing_in_aw_mem_7_id),
    .auto_axi4in_xing_in_aw_mem_7_addr(island_auto_axi4in_xing_in_aw_mem_7_addr),
    .auto_axi4in_xing_in_aw_mem_7_len(island_auto_axi4in_xing_in_aw_mem_7_len),
    .auto_axi4in_xing_in_aw_mem_7_size(island_auto_axi4in_xing_in_aw_mem_7_size),
    .auto_axi4in_xing_in_aw_mem_7_burst(island_auto_axi4in_xing_in_aw_mem_7_burst),
    .auto_axi4in_xing_in_aw_mem_7_lock(island_auto_axi4in_xing_in_aw_mem_7_lock),
    .auto_axi4in_xing_in_aw_mem_7_cache(island_auto_axi4in_xing_in_aw_mem_7_cache),
    .auto_axi4in_xing_in_aw_mem_7_prot(island_auto_axi4in_xing_in_aw_mem_7_prot),
    .auto_axi4in_xing_in_aw_mem_7_qos(island_auto_axi4in_xing_in_aw_mem_7_qos),
    .auto_axi4in_xing_in_aw_ridx(island_auto_axi4in_xing_in_aw_ridx),
    .auto_axi4in_xing_in_aw_widx(island_auto_axi4in_xing_in_aw_widx),
    .auto_axi4in_xing_in_aw_safe_ridx_valid(island_auto_axi4in_xing_in_aw_safe_ridx_valid),
    .auto_axi4in_xing_in_aw_safe_widx_valid(island_auto_axi4in_xing_in_aw_safe_widx_valid),
    .auto_axi4in_xing_in_aw_safe_source_reset_n(island_auto_axi4in_xing_in_aw_safe_source_reset_n),
    .auto_axi4in_xing_in_aw_safe_sink_reset_n(island_auto_axi4in_xing_in_aw_safe_sink_reset_n),
    .auto_axi4in_xing_in_w_mem_0_data(island_auto_axi4in_xing_in_w_mem_0_data),
    .auto_axi4in_xing_in_w_mem_0_strb(island_auto_axi4in_xing_in_w_mem_0_strb),
    .auto_axi4in_xing_in_w_mem_0_last(island_auto_axi4in_xing_in_w_mem_0_last),
    .auto_axi4in_xing_in_w_mem_1_data(island_auto_axi4in_xing_in_w_mem_1_data),
    .auto_axi4in_xing_in_w_mem_1_strb(island_auto_axi4in_xing_in_w_mem_1_strb),
    .auto_axi4in_xing_in_w_mem_1_last(island_auto_axi4in_xing_in_w_mem_1_last),
    .auto_axi4in_xing_in_w_mem_2_data(island_auto_axi4in_xing_in_w_mem_2_data),
    .auto_axi4in_xing_in_w_mem_2_strb(island_auto_axi4in_xing_in_w_mem_2_strb),
    .auto_axi4in_xing_in_w_mem_2_last(island_auto_axi4in_xing_in_w_mem_2_last),
    .auto_axi4in_xing_in_w_mem_3_data(island_auto_axi4in_xing_in_w_mem_3_data),
    .auto_axi4in_xing_in_w_mem_3_strb(island_auto_axi4in_xing_in_w_mem_3_strb),
    .auto_axi4in_xing_in_w_mem_3_last(island_auto_axi4in_xing_in_w_mem_3_last),
    .auto_axi4in_xing_in_w_mem_4_data(island_auto_axi4in_xing_in_w_mem_4_data),
    .auto_axi4in_xing_in_w_mem_4_strb(island_auto_axi4in_xing_in_w_mem_4_strb),
    .auto_axi4in_xing_in_w_mem_4_last(island_auto_axi4in_xing_in_w_mem_4_last),
    .auto_axi4in_xing_in_w_mem_5_data(island_auto_axi4in_xing_in_w_mem_5_data),
    .auto_axi4in_xing_in_w_mem_5_strb(island_auto_axi4in_xing_in_w_mem_5_strb),
    .auto_axi4in_xing_in_w_mem_5_last(island_auto_axi4in_xing_in_w_mem_5_last),
    .auto_axi4in_xing_in_w_mem_6_data(island_auto_axi4in_xing_in_w_mem_6_data),
    .auto_axi4in_xing_in_w_mem_6_strb(island_auto_axi4in_xing_in_w_mem_6_strb),
    .auto_axi4in_xing_in_w_mem_6_last(island_auto_axi4in_xing_in_w_mem_6_last),
    .auto_axi4in_xing_in_w_mem_7_data(island_auto_axi4in_xing_in_w_mem_7_data),
    .auto_axi4in_xing_in_w_mem_7_strb(island_auto_axi4in_xing_in_w_mem_7_strb),
    .auto_axi4in_xing_in_w_mem_7_last(island_auto_axi4in_xing_in_w_mem_7_last),
    .auto_axi4in_xing_in_w_ridx(island_auto_axi4in_xing_in_w_ridx),
    .auto_axi4in_xing_in_w_widx(island_auto_axi4in_xing_in_w_widx),
    .auto_axi4in_xing_in_w_safe_ridx_valid(island_auto_axi4in_xing_in_w_safe_ridx_valid),
    .auto_axi4in_xing_in_w_safe_widx_valid(island_auto_axi4in_xing_in_w_safe_widx_valid),
    .auto_axi4in_xing_in_w_safe_source_reset_n(island_auto_axi4in_xing_in_w_safe_source_reset_n),
    .auto_axi4in_xing_in_w_safe_sink_reset_n(island_auto_axi4in_xing_in_w_safe_sink_reset_n),
    .auto_axi4in_xing_in_b_mem_0_id(island_auto_axi4in_xing_in_b_mem_0_id),
    .auto_axi4in_xing_in_b_mem_0_resp(island_auto_axi4in_xing_in_b_mem_0_resp),
    .auto_axi4in_xing_in_b_mem_1_id(island_auto_axi4in_xing_in_b_mem_1_id),
    .auto_axi4in_xing_in_b_mem_1_resp(island_auto_axi4in_xing_in_b_mem_1_resp),
    .auto_axi4in_xing_in_b_mem_2_id(island_auto_axi4in_xing_in_b_mem_2_id),
    .auto_axi4in_xing_in_b_mem_2_resp(island_auto_axi4in_xing_in_b_mem_2_resp),
    .auto_axi4in_xing_in_b_mem_3_id(island_auto_axi4in_xing_in_b_mem_3_id),
    .auto_axi4in_xing_in_b_mem_3_resp(island_auto_axi4in_xing_in_b_mem_3_resp),
    .auto_axi4in_xing_in_b_mem_4_id(island_auto_axi4in_xing_in_b_mem_4_id),
    .auto_axi4in_xing_in_b_mem_4_resp(island_auto_axi4in_xing_in_b_mem_4_resp),
    .auto_axi4in_xing_in_b_mem_5_id(island_auto_axi4in_xing_in_b_mem_5_id),
    .auto_axi4in_xing_in_b_mem_5_resp(island_auto_axi4in_xing_in_b_mem_5_resp),
    .auto_axi4in_xing_in_b_mem_6_id(island_auto_axi4in_xing_in_b_mem_6_id),
    .auto_axi4in_xing_in_b_mem_6_resp(island_auto_axi4in_xing_in_b_mem_6_resp),
    .auto_axi4in_xing_in_b_mem_7_id(island_auto_axi4in_xing_in_b_mem_7_id),
    .auto_axi4in_xing_in_b_mem_7_resp(island_auto_axi4in_xing_in_b_mem_7_resp),
    .auto_axi4in_xing_in_b_ridx(island_auto_axi4in_xing_in_b_ridx),
    .auto_axi4in_xing_in_b_widx(island_auto_axi4in_xing_in_b_widx),
    .auto_axi4in_xing_in_b_safe_ridx_valid(island_auto_axi4in_xing_in_b_safe_ridx_valid),
    .auto_axi4in_xing_in_b_safe_widx_valid(island_auto_axi4in_xing_in_b_safe_widx_valid),
    .auto_axi4in_xing_in_b_safe_source_reset_n(island_auto_axi4in_xing_in_b_safe_source_reset_n),
    .auto_axi4in_xing_in_b_safe_sink_reset_n(island_auto_axi4in_xing_in_b_safe_sink_reset_n),
    .auto_axi4in_xing_in_ar_mem_0_id(island_auto_axi4in_xing_in_ar_mem_0_id),
    .auto_axi4in_xing_in_ar_mem_0_addr(island_auto_axi4in_xing_in_ar_mem_0_addr),
    .auto_axi4in_xing_in_ar_mem_0_len(island_auto_axi4in_xing_in_ar_mem_0_len),
    .auto_axi4in_xing_in_ar_mem_0_size(island_auto_axi4in_xing_in_ar_mem_0_size),
    .auto_axi4in_xing_in_ar_mem_0_burst(island_auto_axi4in_xing_in_ar_mem_0_burst),
    .auto_axi4in_xing_in_ar_mem_0_lock(island_auto_axi4in_xing_in_ar_mem_0_lock),
    .auto_axi4in_xing_in_ar_mem_0_cache(island_auto_axi4in_xing_in_ar_mem_0_cache),
    .auto_axi4in_xing_in_ar_mem_0_prot(island_auto_axi4in_xing_in_ar_mem_0_prot),
    .auto_axi4in_xing_in_ar_mem_0_qos(island_auto_axi4in_xing_in_ar_mem_0_qos),
    .auto_axi4in_xing_in_ar_mem_1_id(island_auto_axi4in_xing_in_ar_mem_1_id),
    .auto_axi4in_xing_in_ar_mem_1_addr(island_auto_axi4in_xing_in_ar_mem_1_addr),
    .auto_axi4in_xing_in_ar_mem_1_len(island_auto_axi4in_xing_in_ar_mem_1_len),
    .auto_axi4in_xing_in_ar_mem_1_size(island_auto_axi4in_xing_in_ar_mem_1_size),
    .auto_axi4in_xing_in_ar_mem_1_burst(island_auto_axi4in_xing_in_ar_mem_1_burst),
    .auto_axi4in_xing_in_ar_mem_1_lock(island_auto_axi4in_xing_in_ar_mem_1_lock),
    .auto_axi4in_xing_in_ar_mem_1_cache(island_auto_axi4in_xing_in_ar_mem_1_cache),
    .auto_axi4in_xing_in_ar_mem_1_prot(island_auto_axi4in_xing_in_ar_mem_1_prot),
    .auto_axi4in_xing_in_ar_mem_1_qos(island_auto_axi4in_xing_in_ar_mem_1_qos),
    .auto_axi4in_xing_in_ar_mem_2_id(island_auto_axi4in_xing_in_ar_mem_2_id),
    .auto_axi4in_xing_in_ar_mem_2_addr(island_auto_axi4in_xing_in_ar_mem_2_addr),
    .auto_axi4in_xing_in_ar_mem_2_len(island_auto_axi4in_xing_in_ar_mem_2_len),
    .auto_axi4in_xing_in_ar_mem_2_size(island_auto_axi4in_xing_in_ar_mem_2_size),
    .auto_axi4in_xing_in_ar_mem_2_burst(island_auto_axi4in_xing_in_ar_mem_2_burst),
    .auto_axi4in_xing_in_ar_mem_2_lock(island_auto_axi4in_xing_in_ar_mem_2_lock),
    .auto_axi4in_xing_in_ar_mem_2_cache(island_auto_axi4in_xing_in_ar_mem_2_cache),
    .auto_axi4in_xing_in_ar_mem_2_prot(island_auto_axi4in_xing_in_ar_mem_2_prot),
    .auto_axi4in_xing_in_ar_mem_2_qos(island_auto_axi4in_xing_in_ar_mem_2_qos),
    .auto_axi4in_xing_in_ar_mem_3_id(island_auto_axi4in_xing_in_ar_mem_3_id),
    .auto_axi4in_xing_in_ar_mem_3_addr(island_auto_axi4in_xing_in_ar_mem_3_addr),
    .auto_axi4in_xing_in_ar_mem_3_len(island_auto_axi4in_xing_in_ar_mem_3_len),
    .auto_axi4in_xing_in_ar_mem_3_size(island_auto_axi4in_xing_in_ar_mem_3_size),
    .auto_axi4in_xing_in_ar_mem_3_burst(island_auto_axi4in_xing_in_ar_mem_3_burst),
    .auto_axi4in_xing_in_ar_mem_3_lock(island_auto_axi4in_xing_in_ar_mem_3_lock),
    .auto_axi4in_xing_in_ar_mem_3_cache(island_auto_axi4in_xing_in_ar_mem_3_cache),
    .auto_axi4in_xing_in_ar_mem_3_prot(island_auto_axi4in_xing_in_ar_mem_3_prot),
    .auto_axi4in_xing_in_ar_mem_3_qos(island_auto_axi4in_xing_in_ar_mem_3_qos),
    .auto_axi4in_xing_in_ar_mem_4_id(island_auto_axi4in_xing_in_ar_mem_4_id),
    .auto_axi4in_xing_in_ar_mem_4_addr(island_auto_axi4in_xing_in_ar_mem_4_addr),
    .auto_axi4in_xing_in_ar_mem_4_len(island_auto_axi4in_xing_in_ar_mem_4_len),
    .auto_axi4in_xing_in_ar_mem_4_size(island_auto_axi4in_xing_in_ar_mem_4_size),
    .auto_axi4in_xing_in_ar_mem_4_burst(island_auto_axi4in_xing_in_ar_mem_4_burst),
    .auto_axi4in_xing_in_ar_mem_4_lock(island_auto_axi4in_xing_in_ar_mem_4_lock),
    .auto_axi4in_xing_in_ar_mem_4_cache(island_auto_axi4in_xing_in_ar_mem_4_cache),
    .auto_axi4in_xing_in_ar_mem_4_prot(island_auto_axi4in_xing_in_ar_mem_4_prot),
    .auto_axi4in_xing_in_ar_mem_4_qos(island_auto_axi4in_xing_in_ar_mem_4_qos),
    .auto_axi4in_xing_in_ar_mem_5_id(island_auto_axi4in_xing_in_ar_mem_5_id),
    .auto_axi4in_xing_in_ar_mem_5_addr(island_auto_axi4in_xing_in_ar_mem_5_addr),
    .auto_axi4in_xing_in_ar_mem_5_len(island_auto_axi4in_xing_in_ar_mem_5_len),
    .auto_axi4in_xing_in_ar_mem_5_size(island_auto_axi4in_xing_in_ar_mem_5_size),
    .auto_axi4in_xing_in_ar_mem_5_burst(island_auto_axi4in_xing_in_ar_mem_5_burst),
    .auto_axi4in_xing_in_ar_mem_5_lock(island_auto_axi4in_xing_in_ar_mem_5_lock),
    .auto_axi4in_xing_in_ar_mem_5_cache(island_auto_axi4in_xing_in_ar_mem_5_cache),
    .auto_axi4in_xing_in_ar_mem_5_prot(island_auto_axi4in_xing_in_ar_mem_5_prot),
    .auto_axi4in_xing_in_ar_mem_5_qos(island_auto_axi4in_xing_in_ar_mem_5_qos),
    .auto_axi4in_xing_in_ar_mem_6_id(island_auto_axi4in_xing_in_ar_mem_6_id),
    .auto_axi4in_xing_in_ar_mem_6_addr(island_auto_axi4in_xing_in_ar_mem_6_addr),
    .auto_axi4in_xing_in_ar_mem_6_len(island_auto_axi4in_xing_in_ar_mem_6_len),
    .auto_axi4in_xing_in_ar_mem_6_size(island_auto_axi4in_xing_in_ar_mem_6_size),
    .auto_axi4in_xing_in_ar_mem_6_burst(island_auto_axi4in_xing_in_ar_mem_6_burst),
    .auto_axi4in_xing_in_ar_mem_6_lock(island_auto_axi4in_xing_in_ar_mem_6_lock),
    .auto_axi4in_xing_in_ar_mem_6_cache(island_auto_axi4in_xing_in_ar_mem_6_cache),
    .auto_axi4in_xing_in_ar_mem_6_prot(island_auto_axi4in_xing_in_ar_mem_6_prot),
    .auto_axi4in_xing_in_ar_mem_6_qos(island_auto_axi4in_xing_in_ar_mem_6_qos),
    .auto_axi4in_xing_in_ar_mem_7_id(island_auto_axi4in_xing_in_ar_mem_7_id),
    .auto_axi4in_xing_in_ar_mem_7_addr(island_auto_axi4in_xing_in_ar_mem_7_addr),
    .auto_axi4in_xing_in_ar_mem_7_len(island_auto_axi4in_xing_in_ar_mem_7_len),
    .auto_axi4in_xing_in_ar_mem_7_size(island_auto_axi4in_xing_in_ar_mem_7_size),
    .auto_axi4in_xing_in_ar_mem_7_burst(island_auto_axi4in_xing_in_ar_mem_7_burst),
    .auto_axi4in_xing_in_ar_mem_7_lock(island_auto_axi4in_xing_in_ar_mem_7_lock),
    .auto_axi4in_xing_in_ar_mem_7_cache(island_auto_axi4in_xing_in_ar_mem_7_cache),
    .auto_axi4in_xing_in_ar_mem_7_prot(island_auto_axi4in_xing_in_ar_mem_7_prot),
    .auto_axi4in_xing_in_ar_mem_7_qos(island_auto_axi4in_xing_in_ar_mem_7_qos),
    .auto_axi4in_xing_in_ar_ridx(island_auto_axi4in_xing_in_ar_ridx),
    .auto_axi4in_xing_in_ar_widx(island_auto_axi4in_xing_in_ar_widx),
    .auto_axi4in_xing_in_ar_safe_ridx_valid(island_auto_axi4in_xing_in_ar_safe_ridx_valid),
    .auto_axi4in_xing_in_ar_safe_widx_valid(island_auto_axi4in_xing_in_ar_safe_widx_valid),
    .auto_axi4in_xing_in_ar_safe_source_reset_n(island_auto_axi4in_xing_in_ar_safe_source_reset_n),
    .auto_axi4in_xing_in_ar_safe_sink_reset_n(island_auto_axi4in_xing_in_ar_safe_sink_reset_n),
    .auto_axi4in_xing_in_r_mem_0_id(island_auto_axi4in_xing_in_r_mem_0_id),
    .auto_axi4in_xing_in_r_mem_0_data(island_auto_axi4in_xing_in_r_mem_0_data),
    .auto_axi4in_xing_in_r_mem_0_resp(island_auto_axi4in_xing_in_r_mem_0_resp),
    .auto_axi4in_xing_in_r_mem_0_last(island_auto_axi4in_xing_in_r_mem_0_last),
    .auto_axi4in_xing_in_r_mem_1_id(island_auto_axi4in_xing_in_r_mem_1_id),
    .auto_axi4in_xing_in_r_mem_1_data(island_auto_axi4in_xing_in_r_mem_1_data),
    .auto_axi4in_xing_in_r_mem_1_resp(island_auto_axi4in_xing_in_r_mem_1_resp),
    .auto_axi4in_xing_in_r_mem_1_last(island_auto_axi4in_xing_in_r_mem_1_last),
    .auto_axi4in_xing_in_r_mem_2_id(island_auto_axi4in_xing_in_r_mem_2_id),
    .auto_axi4in_xing_in_r_mem_2_data(island_auto_axi4in_xing_in_r_mem_2_data),
    .auto_axi4in_xing_in_r_mem_2_resp(island_auto_axi4in_xing_in_r_mem_2_resp),
    .auto_axi4in_xing_in_r_mem_2_last(island_auto_axi4in_xing_in_r_mem_2_last),
    .auto_axi4in_xing_in_r_mem_3_id(island_auto_axi4in_xing_in_r_mem_3_id),
    .auto_axi4in_xing_in_r_mem_3_data(island_auto_axi4in_xing_in_r_mem_3_data),
    .auto_axi4in_xing_in_r_mem_3_resp(island_auto_axi4in_xing_in_r_mem_3_resp),
    .auto_axi4in_xing_in_r_mem_3_last(island_auto_axi4in_xing_in_r_mem_3_last),
    .auto_axi4in_xing_in_r_mem_4_id(island_auto_axi4in_xing_in_r_mem_4_id),
    .auto_axi4in_xing_in_r_mem_4_data(island_auto_axi4in_xing_in_r_mem_4_data),
    .auto_axi4in_xing_in_r_mem_4_resp(island_auto_axi4in_xing_in_r_mem_4_resp),
    .auto_axi4in_xing_in_r_mem_4_last(island_auto_axi4in_xing_in_r_mem_4_last),
    .auto_axi4in_xing_in_r_mem_5_id(island_auto_axi4in_xing_in_r_mem_5_id),
    .auto_axi4in_xing_in_r_mem_5_data(island_auto_axi4in_xing_in_r_mem_5_data),
    .auto_axi4in_xing_in_r_mem_5_resp(island_auto_axi4in_xing_in_r_mem_5_resp),
    .auto_axi4in_xing_in_r_mem_5_last(island_auto_axi4in_xing_in_r_mem_5_last),
    .auto_axi4in_xing_in_r_mem_6_id(island_auto_axi4in_xing_in_r_mem_6_id),
    .auto_axi4in_xing_in_r_mem_6_data(island_auto_axi4in_xing_in_r_mem_6_data),
    .auto_axi4in_xing_in_r_mem_6_resp(island_auto_axi4in_xing_in_r_mem_6_resp),
    .auto_axi4in_xing_in_r_mem_6_last(island_auto_axi4in_xing_in_r_mem_6_last),
    .auto_axi4in_xing_in_r_mem_7_id(island_auto_axi4in_xing_in_r_mem_7_id),
    .auto_axi4in_xing_in_r_mem_7_data(island_auto_axi4in_xing_in_r_mem_7_data),
    .auto_axi4in_xing_in_r_mem_7_resp(island_auto_axi4in_xing_in_r_mem_7_resp),
    .auto_axi4in_xing_in_r_mem_7_last(island_auto_axi4in_xing_in_r_mem_7_last),
    .auto_axi4in_xing_in_r_ridx(island_auto_axi4in_xing_in_r_ridx),
    .auto_axi4in_xing_in_r_widx(island_auto_axi4in_xing_in_r_widx),
    .auto_axi4in_xing_in_r_safe_ridx_valid(island_auto_axi4in_xing_in_r_safe_ridx_valid),
    .auto_axi4in_xing_in_r_safe_widx_valid(island_auto_axi4in_xing_in_r_safe_widx_valid),
    .auto_axi4in_xing_in_r_safe_source_reset_n(island_auto_axi4in_xing_in_r_safe_source_reset_n),
    .auto_axi4in_xing_in_r_safe_sink_reset_n(island_auto_axi4in_xing_in_r_safe_sink_reset_n),
    .io_port_c0_ddr4_adr(island_io_port_c0_ddr4_adr),
    .io_port_c0_ddr4_bg(island_io_port_c0_ddr4_bg),
    .io_port_c0_ddr4_ba(island_io_port_c0_ddr4_ba),
    .io_port_c0_ddr4_reset_n(island_io_port_c0_ddr4_reset_n),
    .io_port_c0_ddr4_act_n(island_io_port_c0_ddr4_act_n),
    .io_port_c0_ddr4_ck_c(island_io_port_c0_ddr4_ck_c),
    .io_port_c0_ddr4_ck_t(island_io_port_c0_ddr4_ck_t),
    .io_port_c0_ddr4_cke(island_io_port_c0_ddr4_cke),
    .io_port_c0_ddr4_cs_n(island_io_port_c0_ddr4_cs_n),
    .io_port_c0_ddr4_odt(island_io_port_c0_ddr4_odt),
    .io_port_c0_ddr4_dq(io_port_c0_ddr4_dq),
    .io_port_c0_ddr4_dqs_c(io_port_c0_ddr4_dqs_c),
    .io_port_c0_ddr4_dqs_t(io_port_c0_ddr4_dqs_t),
    .io_port_c0_ddr4_dm_dbi_n(io_port_c0_ddr4_dm_dbi_n),
    .io_port_c0_sys_clk_i(island_io_port_c0_sys_clk_i),
    .io_port_c0_ddr4_ui_clk(island_io_port_c0_ddr4_ui_clk),
    .io_port_c0_ddr4_ui_clk_sync_rst(island_io_port_c0_ddr4_ui_clk_sync_rst),
    .io_port_c0_ddr4_aresetn(island_io_port_c0_ddr4_aresetn),
    .io_port_sys_rst(island_io_port_sys_rst)
  );
  AXI4AsyncCrossingSource_inVCU118FPGATestHarness axi4asource ( // @[AsyncCrossing.scala 52:33]
    .clock(axi4asource_clock),
    .reset(axi4asource_reset),
    .auto_in_aw_ready(axi4asource_auto_in_aw_ready),
    .auto_in_aw_valid(axi4asource_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4asource_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4asource_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4asource_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4asource_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4asource_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(axi4asource_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(axi4asource_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4asource_auto_in_aw_bits_prot),
    .auto_in_aw_bits_qos(axi4asource_auto_in_aw_bits_qos),
    .auto_in_w_ready(axi4asource_auto_in_w_ready),
    .auto_in_w_valid(axi4asource_auto_in_w_valid),
    .auto_in_w_bits_data(axi4asource_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4asource_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4asource_auto_in_w_bits_last),
    .auto_in_b_ready(axi4asource_auto_in_b_ready),
    .auto_in_b_valid(axi4asource_auto_in_b_valid),
    .auto_in_b_bits_id(axi4asource_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4asource_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4asource_auto_in_ar_ready),
    .auto_in_ar_valid(axi4asource_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4asource_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4asource_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4asource_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4asource_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4asource_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(axi4asource_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(axi4asource_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4asource_auto_in_ar_bits_prot),
    .auto_in_ar_bits_qos(axi4asource_auto_in_ar_bits_qos),
    .auto_in_r_ready(axi4asource_auto_in_r_ready),
    .auto_in_r_valid(axi4asource_auto_in_r_valid),
    .auto_in_r_bits_id(axi4asource_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4asource_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4asource_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4asource_auto_in_r_bits_last),
    .auto_out_aw_mem_0_id(axi4asource_auto_out_aw_mem_0_id),
    .auto_out_aw_mem_0_addr(axi4asource_auto_out_aw_mem_0_addr),
    .auto_out_aw_mem_0_len(axi4asource_auto_out_aw_mem_0_len),
    .auto_out_aw_mem_0_size(axi4asource_auto_out_aw_mem_0_size),
    .auto_out_aw_mem_0_burst(axi4asource_auto_out_aw_mem_0_burst),
    .auto_out_aw_mem_0_lock(axi4asource_auto_out_aw_mem_0_lock),
    .auto_out_aw_mem_0_cache(axi4asource_auto_out_aw_mem_0_cache),
    .auto_out_aw_mem_0_prot(axi4asource_auto_out_aw_mem_0_prot),
    .auto_out_aw_mem_0_qos(axi4asource_auto_out_aw_mem_0_qos),
    .auto_out_aw_mem_1_id(axi4asource_auto_out_aw_mem_1_id),
    .auto_out_aw_mem_1_addr(axi4asource_auto_out_aw_mem_1_addr),
    .auto_out_aw_mem_1_len(axi4asource_auto_out_aw_mem_1_len),
    .auto_out_aw_mem_1_size(axi4asource_auto_out_aw_mem_1_size),
    .auto_out_aw_mem_1_burst(axi4asource_auto_out_aw_mem_1_burst),
    .auto_out_aw_mem_1_lock(axi4asource_auto_out_aw_mem_1_lock),
    .auto_out_aw_mem_1_cache(axi4asource_auto_out_aw_mem_1_cache),
    .auto_out_aw_mem_1_prot(axi4asource_auto_out_aw_mem_1_prot),
    .auto_out_aw_mem_1_qos(axi4asource_auto_out_aw_mem_1_qos),
    .auto_out_aw_mem_2_id(axi4asource_auto_out_aw_mem_2_id),
    .auto_out_aw_mem_2_addr(axi4asource_auto_out_aw_mem_2_addr),
    .auto_out_aw_mem_2_len(axi4asource_auto_out_aw_mem_2_len),
    .auto_out_aw_mem_2_size(axi4asource_auto_out_aw_mem_2_size),
    .auto_out_aw_mem_2_burst(axi4asource_auto_out_aw_mem_2_burst),
    .auto_out_aw_mem_2_lock(axi4asource_auto_out_aw_mem_2_lock),
    .auto_out_aw_mem_2_cache(axi4asource_auto_out_aw_mem_2_cache),
    .auto_out_aw_mem_2_prot(axi4asource_auto_out_aw_mem_2_prot),
    .auto_out_aw_mem_2_qos(axi4asource_auto_out_aw_mem_2_qos),
    .auto_out_aw_mem_3_id(axi4asource_auto_out_aw_mem_3_id),
    .auto_out_aw_mem_3_addr(axi4asource_auto_out_aw_mem_3_addr),
    .auto_out_aw_mem_3_len(axi4asource_auto_out_aw_mem_3_len),
    .auto_out_aw_mem_3_size(axi4asource_auto_out_aw_mem_3_size),
    .auto_out_aw_mem_3_burst(axi4asource_auto_out_aw_mem_3_burst),
    .auto_out_aw_mem_3_lock(axi4asource_auto_out_aw_mem_3_lock),
    .auto_out_aw_mem_3_cache(axi4asource_auto_out_aw_mem_3_cache),
    .auto_out_aw_mem_3_prot(axi4asource_auto_out_aw_mem_3_prot),
    .auto_out_aw_mem_3_qos(axi4asource_auto_out_aw_mem_3_qos),
    .auto_out_aw_mem_4_id(axi4asource_auto_out_aw_mem_4_id),
    .auto_out_aw_mem_4_addr(axi4asource_auto_out_aw_mem_4_addr),
    .auto_out_aw_mem_4_len(axi4asource_auto_out_aw_mem_4_len),
    .auto_out_aw_mem_4_size(axi4asource_auto_out_aw_mem_4_size),
    .auto_out_aw_mem_4_burst(axi4asource_auto_out_aw_mem_4_burst),
    .auto_out_aw_mem_4_lock(axi4asource_auto_out_aw_mem_4_lock),
    .auto_out_aw_mem_4_cache(axi4asource_auto_out_aw_mem_4_cache),
    .auto_out_aw_mem_4_prot(axi4asource_auto_out_aw_mem_4_prot),
    .auto_out_aw_mem_4_qos(axi4asource_auto_out_aw_mem_4_qos),
    .auto_out_aw_mem_5_id(axi4asource_auto_out_aw_mem_5_id),
    .auto_out_aw_mem_5_addr(axi4asource_auto_out_aw_mem_5_addr),
    .auto_out_aw_mem_5_len(axi4asource_auto_out_aw_mem_5_len),
    .auto_out_aw_mem_5_size(axi4asource_auto_out_aw_mem_5_size),
    .auto_out_aw_mem_5_burst(axi4asource_auto_out_aw_mem_5_burst),
    .auto_out_aw_mem_5_lock(axi4asource_auto_out_aw_mem_5_lock),
    .auto_out_aw_mem_5_cache(axi4asource_auto_out_aw_mem_5_cache),
    .auto_out_aw_mem_5_prot(axi4asource_auto_out_aw_mem_5_prot),
    .auto_out_aw_mem_5_qos(axi4asource_auto_out_aw_mem_5_qos),
    .auto_out_aw_mem_6_id(axi4asource_auto_out_aw_mem_6_id),
    .auto_out_aw_mem_6_addr(axi4asource_auto_out_aw_mem_6_addr),
    .auto_out_aw_mem_6_len(axi4asource_auto_out_aw_mem_6_len),
    .auto_out_aw_mem_6_size(axi4asource_auto_out_aw_mem_6_size),
    .auto_out_aw_mem_6_burst(axi4asource_auto_out_aw_mem_6_burst),
    .auto_out_aw_mem_6_lock(axi4asource_auto_out_aw_mem_6_lock),
    .auto_out_aw_mem_6_cache(axi4asource_auto_out_aw_mem_6_cache),
    .auto_out_aw_mem_6_prot(axi4asource_auto_out_aw_mem_6_prot),
    .auto_out_aw_mem_6_qos(axi4asource_auto_out_aw_mem_6_qos),
    .auto_out_aw_mem_7_id(axi4asource_auto_out_aw_mem_7_id),
    .auto_out_aw_mem_7_addr(axi4asource_auto_out_aw_mem_7_addr),
    .auto_out_aw_mem_7_len(axi4asource_auto_out_aw_mem_7_len),
    .auto_out_aw_mem_7_size(axi4asource_auto_out_aw_mem_7_size),
    .auto_out_aw_mem_7_burst(axi4asource_auto_out_aw_mem_7_burst),
    .auto_out_aw_mem_7_lock(axi4asource_auto_out_aw_mem_7_lock),
    .auto_out_aw_mem_7_cache(axi4asource_auto_out_aw_mem_7_cache),
    .auto_out_aw_mem_7_prot(axi4asource_auto_out_aw_mem_7_prot),
    .auto_out_aw_mem_7_qos(axi4asource_auto_out_aw_mem_7_qos),
    .auto_out_aw_ridx(axi4asource_auto_out_aw_ridx),
    .auto_out_aw_widx(axi4asource_auto_out_aw_widx),
    .auto_out_aw_safe_ridx_valid(axi4asource_auto_out_aw_safe_ridx_valid),
    .auto_out_aw_safe_widx_valid(axi4asource_auto_out_aw_safe_widx_valid),
    .auto_out_aw_safe_source_reset_n(axi4asource_auto_out_aw_safe_source_reset_n),
    .auto_out_aw_safe_sink_reset_n(axi4asource_auto_out_aw_safe_sink_reset_n),
    .auto_out_w_mem_0_data(axi4asource_auto_out_w_mem_0_data),
    .auto_out_w_mem_0_strb(axi4asource_auto_out_w_mem_0_strb),
    .auto_out_w_mem_0_last(axi4asource_auto_out_w_mem_0_last),
    .auto_out_w_mem_1_data(axi4asource_auto_out_w_mem_1_data),
    .auto_out_w_mem_1_strb(axi4asource_auto_out_w_mem_1_strb),
    .auto_out_w_mem_1_last(axi4asource_auto_out_w_mem_1_last),
    .auto_out_w_mem_2_data(axi4asource_auto_out_w_mem_2_data),
    .auto_out_w_mem_2_strb(axi4asource_auto_out_w_mem_2_strb),
    .auto_out_w_mem_2_last(axi4asource_auto_out_w_mem_2_last),
    .auto_out_w_mem_3_data(axi4asource_auto_out_w_mem_3_data),
    .auto_out_w_mem_3_strb(axi4asource_auto_out_w_mem_3_strb),
    .auto_out_w_mem_3_last(axi4asource_auto_out_w_mem_3_last),
    .auto_out_w_mem_4_data(axi4asource_auto_out_w_mem_4_data),
    .auto_out_w_mem_4_strb(axi4asource_auto_out_w_mem_4_strb),
    .auto_out_w_mem_4_last(axi4asource_auto_out_w_mem_4_last),
    .auto_out_w_mem_5_data(axi4asource_auto_out_w_mem_5_data),
    .auto_out_w_mem_5_strb(axi4asource_auto_out_w_mem_5_strb),
    .auto_out_w_mem_5_last(axi4asource_auto_out_w_mem_5_last),
    .auto_out_w_mem_6_data(axi4asource_auto_out_w_mem_6_data),
    .auto_out_w_mem_6_strb(axi4asource_auto_out_w_mem_6_strb),
    .auto_out_w_mem_6_last(axi4asource_auto_out_w_mem_6_last),
    .auto_out_w_mem_7_data(axi4asource_auto_out_w_mem_7_data),
    .auto_out_w_mem_7_strb(axi4asource_auto_out_w_mem_7_strb),
    .auto_out_w_mem_7_last(axi4asource_auto_out_w_mem_7_last),
    .auto_out_w_ridx(axi4asource_auto_out_w_ridx),
    .auto_out_w_widx(axi4asource_auto_out_w_widx),
    .auto_out_w_safe_ridx_valid(axi4asource_auto_out_w_safe_ridx_valid),
    .auto_out_w_safe_widx_valid(axi4asource_auto_out_w_safe_widx_valid),
    .auto_out_w_safe_source_reset_n(axi4asource_auto_out_w_safe_source_reset_n),
    .auto_out_w_safe_sink_reset_n(axi4asource_auto_out_w_safe_sink_reset_n),
    .auto_out_b_mem_0_id(axi4asource_auto_out_b_mem_0_id),
    .auto_out_b_mem_0_resp(axi4asource_auto_out_b_mem_0_resp),
    .auto_out_b_mem_1_id(axi4asource_auto_out_b_mem_1_id),
    .auto_out_b_mem_1_resp(axi4asource_auto_out_b_mem_1_resp),
    .auto_out_b_mem_2_id(axi4asource_auto_out_b_mem_2_id),
    .auto_out_b_mem_2_resp(axi4asource_auto_out_b_mem_2_resp),
    .auto_out_b_mem_3_id(axi4asource_auto_out_b_mem_3_id),
    .auto_out_b_mem_3_resp(axi4asource_auto_out_b_mem_3_resp),
    .auto_out_b_mem_4_id(axi4asource_auto_out_b_mem_4_id),
    .auto_out_b_mem_4_resp(axi4asource_auto_out_b_mem_4_resp),
    .auto_out_b_mem_5_id(axi4asource_auto_out_b_mem_5_id),
    .auto_out_b_mem_5_resp(axi4asource_auto_out_b_mem_5_resp),
    .auto_out_b_mem_6_id(axi4asource_auto_out_b_mem_6_id),
    .auto_out_b_mem_6_resp(axi4asource_auto_out_b_mem_6_resp),
    .auto_out_b_mem_7_id(axi4asource_auto_out_b_mem_7_id),
    .auto_out_b_mem_7_resp(axi4asource_auto_out_b_mem_7_resp),
    .auto_out_b_ridx(axi4asource_auto_out_b_ridx),
    .auto_out_b_widx(axi4asource_auto_out_b_widx),
    .auto_out_b_safe_ridx_valid(axi4asource_auto_out_b_safe_ridx_valid),
    .auto_out_b_safe_widx_valid(axi4asource_auto_out_b_safe_widx_valid),
    .auto_out_b_safe_source_reset_n(axi4asource_auto_out_b_safe_source_reset_n),
    .auto_out_b_safe_sink_reset_n(axi4asource_auto_out_b_safe_sink_reset_n),
    .auto_out_ar_mem_0_id(axi4asource_auto_out_ar_mem_0_id),
    .auto_out_ar_mem_0_addr(axi4asource_auto_out_ar_mem_0_addr),
    .auto_out_ar_mem_0_len(axi4asource_auto_out_ar_mem_0_len),
    .auto_out_ar_mem_0_size(axi4asource_auto_out_ar_mem_0_size),
    .auto_out_ar_mem_0_burst(axi4asource_auto_out_ar_mem_0_burst),
    .auto_out_ar_mem_0_lock(axi4asource_auto_out_ar_mem_0_lock),
    .auto_out_ar_mem_0_cache(axi4asource_auto_out_ar_mem_0_cache),
    .auto_out_ar_mem_0_prot(axi4asource_auto_out_ar_mem_0_prot),
    .auto_out_ar_mem_0_qos(axi4asource_auto_out_ar_mem_0_qos),
    .auto_out_ar_mem_1_id(axi4asource_auto_out_ar_mem_1_id),
    .auto_out_ar_mem_1_addr(axi4asource_auto_out_ar_mem_1_addr),
    .auto_out_ar_mem_1_len(axi4asource_auto_out_ar_mem_1_len),
    .auto_out_ar_mem_1_size(axi4asource_auto_out_ar_mem_1_size),
    .auto_out_ar_mem_1_burst(axi4asource_auto_out_ar_mem_1_burst),
    .auto_out_ar_mem_1_lock(axi4asource_auto_out_ar_mem_1_lock),
    .auto_out_ar_mem_1_cache(axi4asource_auto_out_ar_mem_1_cache),
    .auto_out_ar_mem_1_prot(axi4asource_auto_out_ar_mem_1_prot),
    .auto_out_ar_mem_1_qos(axi4asource_auto_out_ar_mem_1_qos),
    .auto_out_ar_mem_2_id(axi4asource_auto_out_ar_mem_2_id),
    .auto_out_ar_mem_2_addr(axi4asource_auto_out_ar_mem_2_addr),
    .auto_out_ar_mem_2_len(axi4asource_auto_out_ar_mem_2_len),
    .auto_out_ar_mem_2_size(axi4asource_auto_out_ar_mem_2_size),
    .auto_out_ar_mem_2_burst(axi4asource_auto_out_ar_mem_2_burst),
    .auto_out_ar_mem_2_lock(axi4asource_auto_out_ar_mem_2_lock),
    .auto_out_ar_mem_2_cache(axi4asource_auto_out_ar_mem_2_cache),
    .auto_out_ar_mem_2_prot(axi4asource_auto_out_ar_mem_2_prot),
    .auto_out_ar_mem_2_qos(axi4asource_auto_out_ar_mem_2_qos),
    .auto_out_ar_mem_3_id(axi4asource_auto_out_ar_mem_3_id),
    .auto_out_ar_mem_3_addr(axi4asource_auto_out_ar_mem_3_addr),
    .auto_out_ar_mem_3_len(axi4asource_auto_out_ar_mem_3_len),
    .auto_out_ar_mem_3_size(axi4asource_auto_out_ar_mem_3_size),
    .auto_out_ar_mem_3_burst(axi4asource_auto_out_ar_mem_3_burst),
    .auto_out_ar_mem_3_lock(axi4asource_auto_out_ar_mem_3_lock),
    .auto_out_ar_mem_3_cache(axi4asource_auto_out_ar_mem_3_cache),
    .auto_out_ar_mem_3_prot(axi4asource_auto_out_ar_mem_3_prot),
    .auto_out_ar_mem_3_qos(axi4asource_auto_out_ar_mem_3_qos),
    .auto_out_ar_mem_4_id(axi4asource_auto_out_ar_mem_4_id),
    .auto_out_ar_mem_4_addr(axi4asource_auto_out_ar_mem_4_addr),
    .auto_out_ar_mem_4_len(axi4asource_auto_out_ar_mem_4_len),
    .auto_out_ar_mem_4_size(axi4asource_auto_out_ar_mem_4_size),
    .auto_out_ar_mem_4_burst(axi4asource_auto_out_ar_mem_4_burst),
    .auto_out_ar_mem_4_lock(axi4asource_auto_out_ar_mem_4_lock),
    .auto_out_ar_mem_4_cache(axi4asource_auto_out_ar_mem_4_cache),
    .auto_out_ar_mem_4_prot(axi4asource_auto_out_ar_mem_4_prot),
    .auto_out_ar_mem_4_qos(axi4asource_auto_out_ar_mem_4_qos),
    .auto_out_ar_mem_5_id(axi4asource_auto_out_ar_mem_5_id),
    .auto_out_ar_mem_5_addr(axi4asource_auto_out_ar_mem_5_addr),
    .auto_out_ar_mem_5_len(axi4asource_auto_out_ar_mem_5_len),
    .auto_out_ar_mem_5_size(axi4asource_auto_out_ar_mem_5_size),
    .auto_out_ar_mem_5_burst(axi4asource_auto_out_ar_mem_5_burst),
    .auto_out_ar_mem_5_lock(axi4asource_auto_out_ar_mem_5_lock),
    .auto_out_ar_mem_5_cache(axi4asource_auto_out_ar_mem_5_cache),
    .auto_out_ar_mem_5_prot(axi4asource_auto_out_ar_mem_5_prot),
    .auto_out_ar_mem_5_qos(axi4asource_auto_out_ar_mem_5_qos),
    .auto_out_ar_mem_6_id(axi4asource_auto_out_ar_mem_6_id),
    .auto_out_ar_mem_6_addr(axi4asource_auto_out_ar_mem_6_addr),
    .auto_out_ar_mem_6_len(axi4asource_auto_out_ar_mem_6_len),
    .auto_out_ar_mem_6_size(axi4asource_auto_out_ar_mem_6_size),
    .auto_out_ar_mem_6_burst(axi4asource_auto_out_ar_mem_6_burst),
    .auto_out_ar_mem_6_lock(axi4asource_auto_out_ar_mem_6_lock),
    .auto_out_ar_mem_6_cache(axi4asource_auto_out_ar_mem_6_cache),
    .auto_out_ar_mem_6_prot(axi4asource_auto_out_ar_mem_6_prot),
    .auto_out_ar_mem_6_qos(axi4asource_auto_out_ar_mem_6_qos),
    .auto_out_ar_mem_7_id(axi4asource_auto_out_ar_mem_7_id),
    .auto_out_ar_mem_7_addr(axi4asource_auto_out_ar_mem_7_addr),
    .auto_out_ar_mem_7_len(axi4asource_auto_out_ar_mem_7_len),
    .auto_out_ar_mem_7_size(axi4asource_auto_out_ar_mem_7_size),
    .auto_out_ar_mem_7_burst(axi4asource_auto_out_ar_mem_7_burst),
    .auto_out_ar_mem_7_lock(axi4asource_auto_out_ar_mem_7_lock),
    .auto_out_ar_mem_7_cache(axi4asource_auto_out_ar_mem_7_cache),
    .auto_out_ar_mem_7_prot(axi4asource_auto_out_ar_mem_7_prot),
    .auto_out_ar_mem_7_qos(axi4asource_auto_out_ar_mem_7_qos),
    .auto_out_ar_ridx(axi4asource_auto_out_ar_ridx),
    .auto_out_ar_widx(axi4asource_auto_out_ar_widx),
    .auto_out_ar_safe_ridx_valid(axi4asource_auto_out_ar_safe_ridx_valid),
    .auto_out_ar_safe_widx_valid(axi4asource_auto_out_ar_safe_widx_valid),
    .auto_out_ar_safe_source_reset_n(axi4asource_auto_out_ar_safe_source_reset_n),
    .auto_out_ar_safe_sink_reset_n(axi4asource_auto_out_ar_safe_sink_reset_n),
    .auto_out_r_mem_0_id(axi4asource_auto_out_r_mem_0_id),
    .auto_out_r_mem_0_data(axi4asource_auto_out_r_mem_0_data),
    .auto_out_r_mem_0_resp(axi4asource_auto_out_r_mem_0_resp),
    .auto_out_r_mem_0_last(axi4asource_auto_out_r_mem_0_last),
    .auto_out_r_mem_1_id(axi4asource_auto_out_r_mem_1_id),
    .auto_out_r_mem_1_data(axi4asource_auto_out_r_mem_1_data),
    .auto_out_r_mem_1_resp(axi4asource_auto_out_r_mem_1_resp),
    .auto_out_r_mem_1_last(axi4asource_auto_out_r_mem_1_last),
    .auto_out_r_mem_2_id(axi4asource_auto_out_r_mem_2_id),
    .auto_out_r_mem_2_data(axi4asource_auto_out_r_mem_2_data),
    .auto_out_r_mem_2_resp(axi4asource_auto_out_r_mem_2_resp),
    .auto_out_r_mem_2_last(axi4asource_auto_out_r_mem_2_last),
    .auto_out_r_mem_3_id(axi4asource_auto_out_r_mem_3_id),
    .auto_out_r_mem_3_data(axi4asource_auto_out_r_mem_3_data),
    .auto_out_r_mem_3_resp(axi4asource_auto_out_r_mem_3_resp),
    .auto_out_r_mem_3_last(axi4asource_auto_out_r_mem_3_last),
    .auto_out_r_mem_4_id(axi4asource_auto_out_r_mem_4_id),
    .auto_out_r_mem_4_data(axi4asource_auto_out_r_mem_4_data),
    .auto_out_r_mem_4_resp(axi4asource_auto_out_r_mem_4_resp),
    .auto_out_r_mem_4_last(axi4asource_auto_out_r_mem_4_last),
    .auto_out_r_mem_5_id(axi4asource_auto_out_r_mem_5_id),
    .auto_out_r_mem_5_data(axi4asource_auto_out_r_mem_5_data),
    .auto_out_r_mem_5_resp(axi4asource_auto_out_r_mem_5_resp),
    .auto_out_r_mem_5_last(axi4asource_auto_out_r_mem_5_last),
    .auto_out_r_mem_6_id(axi4asource_auto_out_r_mem_6_id),
    .auto_out_r_mem_6_data(axi4asource_auto_out_r_mem_6_data),
    .auto_out_r_mem_6_resp(axi4asource_auto_out_r_mem_6_resp),
    .auto_out_r_mem_6_last(axi4asource_auto_out_r_mem_6_last),
    .auto_out_r_mem_7_id(axi4asource_auto_out_r_mem_7_id),
    .auto_out_r_mem_7_data(axi4asource_auto_out_r_mem_7_data),
    .auto_out_r_mem_7_resp(axi4asource_auto_out_r_mem_7_resp),
    .auto_out_r_mem_7_last(axi4asource_auto_out_r_mem_7_last),
    .auto_out_r_ridx(axi4asource_auto_out_r_ridx),
    .auto_out_r_widx(axi4asource_auto_out_r_widx),
    .auto_out_r_safe_ridx_valid(axi4asource_auto_out_r_safe_ridx_valid),
    .auto_out_r_safe_widx_valid(axi4asource_auto_out_r_safe_widx_valid),
    .auto_out_r_safe_source_reset_n(axi4asource_auto_out_r_safe_source_reset_n),
    .auto_out_r_safe_sink_reset_n(axi4asource_auto_out_r_safe_sink_reset_n)
  );
  assign auto_buffer_in_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_buffer_in_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 309:16]
  assign io_port_c0_ddr4_adr = island_io_port_c0_ddr4_adr; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_bg = island_io_port_c0_ddr4_bg; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_ba = island_io_port_c0_ddr4_ba; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_reset_n = island_io_port_c0_ddr4_reset_n; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_act_n = island_io_port_c0_ddr4_act_n; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_ck_c = island_io_port_c0_ddr4_ck_c; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_ck_t = island_io_port_c0_ddr4_ck_t; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_cke = island_io_port_c0_ddr4_cke; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_cs_n = island_io_port_c0_ddr4_cs_n; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_odt = island_io_port_c0_ddr4_odt; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_ui_clk = island_io_port_c0_ddr4_ui_clk; // @[XilinxVCU118MIG.scala 157:13]
  assign io_port_c0_ddr4_ui_clk_sync_rst = island_io_port_c0_ddr4_ui_clk_sync_rst; // @[XilinxVCU118MIG.scala 157:13]
  assign buffer_clock = clock;
  assign buffer_reset = reset;
  assign buffer_auto_in_a_valid = auto_buffer_in_a_valid; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_opcode = auto_buffer_in_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_size = auto_buffer_in_a_bits_size; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_source = auto_buffer_in_a_bits_source; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_address = auto_buffer_in_a_bits_address; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_mask = auto_buffer_in_a_bits_mask; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_a_bits_data = auto_buffer_in_a_bits_data; // @[LazyModule.scala 309:16]
  assign buffer_auto_in_d_ready = auto_buffer_in_d_ready; // @[LazyModule.scala 309:16]
  assign buffer_auto_out_a_ready = toaxi4_auto_in_a_ready; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_d_valid = toaxi4_auto_in_d_valid; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_d_bits_opcode = toaxi4_auto_in_d_bits_opcode; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_d_bits_size = toaxi4_auto_in_d_bits_size; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_d_bits_source = toaxi4_auto_in_d_bits_source; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_d_bits_denied = toaxi4_auto_in_d_bits_denied; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_d_bits_data = toaxi4_auto_in_d_bits_data; // @[LazyModule.scala 298:16]
  assign buffer_auto_out_d_bits_corrupt = toaxi4_auto_in_d_bits_corrupt; // @[LazyModule.scala 298:16]
  assign toaxi4_clock = clock;
  assign toaxi4_reset = reset;
  assign toaxi4_auto_in_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_in_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_in_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_in_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_in_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_in_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_in_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_in_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_aw_ready = indexer_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_w_ready = indexer_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_b_valid = indexer_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_b_bits_id = indexer_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_b_bits_resp = indexer_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_b_bits_echo_tl_state_size = indexer_auto_in_b_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_b_bits_echo_tl_state_source = indexer_auto_in_b_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_ar_ready = indexer_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_r_valid = indexer_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_r_bits_id = indexer_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_r_bits_data = indexer_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_r_bits_resp = indexer_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_r_bits_echo_tl_state_size = indexer_auto_in_r_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_r_bits_echo_tl_state_source = indexer_auto_in_r_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign toaxi4_auto_out_r_bits_last = indexer_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_valid = toaxi4_auto_out_aw_valid; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_id = toaxi4_auto_out_aw_bits_id; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_addr = toaxi4_auto_out_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_len = toaxi4_auto_out_aw_bits_len; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_size = toaxi4_auto_out_aw_bits_size; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_burst = toaxi4_auto_out_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_lock = toaxi4_auto_out_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_cache = toaxi4_auto_out_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_prot = toaxi4_auto_out_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_qos = toaxi4_auto_out_aw_bits_qos; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_echo_tl_state_size = toaxi4_auto_out_aw_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_aw_bits_echo_tl_state_source = toaxi4_auto_out_aw_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_w_valid = toaxi4_auto_out_w_valid; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_w_bits_data = toaxi4_auto_out_w_bits_data; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_w_bits_strb = toaxi4_auto_out_w_bits_strb; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_w_bits_last = toaxi4_auto_out_w_bits_last; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_b_ready = toaxi4_auto_out_b_ready; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_valid = toaxi4_auto_out_ar_valid; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_id = toaxi4_auto_out_ar_bits_id; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_addr = toaxi4_auto_out_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_len = toaxi4_auto_out_ar_bits_len; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_size = toaxi4_auto_out_ar_bits_size; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_burst = toaxi4_auto_out_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_lock = toaxi4_auto_out_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_cache = toaxi4_auto_out_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_prot = toaxi4_auto_out_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_qos = toaxi4_auto_out_ar_bits_qos; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_echo_tl_state_size = toaxi4_auto_out_ar_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_ar_bits_echo_tl_state_source = toaxi4_auto_out_ar_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign indexer_auto_in_r_ready = toaxi4_auto_out_r_ready; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_aw_ready = deint_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_w_ready = deint_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_b_valid = deint_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_b_bits_id = deint_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_b_bits_resp = deint_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_b_bits_echo_tl_state_size = deint_auto_in_b_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_b_bits_echo_tl_state_source = deint_auto_in_b_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_ar_ready = deint_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_r_valid = deint_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_r_bits_id = deint_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_r_bits_data = deint_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_r_bits_resp = deint_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_r_bits_echo_tl_state_size = deint_auto_in_r_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_r_bits_echo_tl_state_source = deint_auto_in_r_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign indexer_auto_out_r_bits_last = deint_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign deint_clock = clock;
  assign deint_reset = reset;
  assign deint_auto_in_aw_valid = indexer_auto_out_aw_valid; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_id = indexer_auto_out_aw_bits_id; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_addr = indexer_auto_out_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_len = indexer_auto_out_aw_bits_len; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_size = indexer_auto_out_aw_bits_size; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_burst = indexer_auto_out_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_lock = indexer_auto_out_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_cache = indexer_auto_out_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_prot = indexer_auto_out_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_qos = indexer_auto_out_aw_bits_qos; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_echo_tl_state_size = indexer_auto_out_aw_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign deint_auto_in_aw_bits_echo_tl_state_source = indexer_auto_out_aw_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign deint_auto_in_w_valid = indexer_auto_out_w_valid; // @[LazyModule.scala 298:16]
  assign deint_auto_in_w_bits_data = indexer_auto_out_w_bits_data; // @[LazyModule.scala 298:16]
  assign deint_auto_in_w_bits_strb = indexer_auto_out_w_bits_strb; // @[LazyModule.scala 298:16]
  assign deint_auto_in_w_bits_last = indexer_auto_out_w_bits_last; // @[LazyModule.scala 298:16]
  assign deint_auto_in_b_ready = indexer_auto_out_b_ready; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_valid = indexer_auto_out_ar_valid; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_id = indexer_auto_out_ar_bits_id; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_addr = indexer_auto_out_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_len = indexer_auto_out_ar_bits_len; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_size = indexer_auto_out_ar_bits_size; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_burst = indexer_auto_out_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_lock = indexer_auto_out_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_cache = indexer_auto_out_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_prot = indexer_auto_out_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_qos = indexer_auto_out_ar_bits_qos; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_echo_tl_state_size = indexer_auto_out_ar_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign deint_auto_in_ar_bits_echo_tl_state_source = indexer_auto_out_ar_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign deint_auto_in_r_ready = indexer_auto_out_r_ready; // @[LazyModule.scala 298:16]
  assign deint_auto_out_aw_ready = yank_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign deint_auto_out_w_ready = yank_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign deint_auto_out_b_valid = yank_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign deint_auto_out_b_bits_id = yank_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign deint_auto_out_b_bits_resp = yank_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign deint_auto_out_b_bits_echo_tl_state_size = yank_auto_in_b_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign deint_auto_out_b_bits_echo_tl_state_source = yank_auto_in_b_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign deint_auto_out_ar_ready = yank_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign deint_auto_out_r_valid = yank_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign deint_auto_out_r_bits_id = yank_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign deint_auto_out_r_bits_data = yank_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign deint_auto_out_r_bits_resp = yank_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign deint_auto_out_r_bits_echo_tl_state_size = yank_auto_in_r_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign deint_auto_out_r_bits_echo_tl_state_source = yank_auto_in_r_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign deint_auto_out_r_bits_last = yank_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign yank_clock = clock;
  assign yank_reset = reset;
  assign yank_auto_in_aw_valid = deint_auto_out_aw_valid; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_id = deint_auto_out_aw_bits_id; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_addr = deint_auto_out_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_len = deint_auto_out_aw_bits_len; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_size = deint_auto_out_aw_bits_size; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_burst = deint_auto_out_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_lock = deint_auto_out_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_cache = deint_auto_out_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_prot = deint_auto_out_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_qos = deint_auto_out_aw_bits_qos; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_echo_tl_state_size = deint_auto_out_aw_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign yank_auto_in_aw_bits_echo_tl_state_source = deint_auto_out_aw_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign yank_auto_in_w_valid = deint_auto_out_w_valid; // @[LazyModule.scala 298:16]
  assign yank_auto_in_w_bits_data = deint_auto_out_w_bits_data; // @[LazyModule.scala 298:16]
  assign yank_auto_in_w_bits_strb = deint_auto_out_w_bits_strb; // @[LazyModule.scala 298:16]
  assign yank_auto_in_w_bits_last = deint_auto_out_w_bits_last; // @[LazyModule.scala 298:16]
  assign yank_auto_in_b_ready = deint_auto_out_b_ready; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_valid = deint_auto_out_ar_valid; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_id = deint_auto_out_ar_bits_id; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_addr = deint_auto_out_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_len = deint_auto_out_ar_bits_len; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_size = deint_auto_out_ar_bits_size; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_burst = deint_auto_out_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_lock = deint_auto_out_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_cache = deint_auto_out_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_prot = deint_auto_out_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_qos = deint_auto_out_ar_bits_qos; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_echo_tl_state_size = deint_auto_out_ar_bits_echo_tl_state_size; // @[LazyModule.scala 298:16]
  assign yank_auto_in_ar_bits_echo_tl_state_source = deint_auto_out_ar_bits_echo_tl_state_source; // @[LazyModule.scala 298:16]
  assign yank_auto_in_r_ready = deint_auto_out_r_ready; // @[LazyModule.scala 298:16]
  assign yank_auto_out_aw_ready = axi4asource_auto_in_aw_ready; // @[LazyModule.scala 298:16]
  assign yank_auto_out_w_ready = axi4asource_auto_in_w_ready; // @[LazyModule.scala 298:16]
  assign yank_auto_out_b_valid = axi4asource_auto_in_b_valid; // @[LazyModule.scala 298:16]
  assign yank_auto_out_b_bits_id = axi4asource_auto_in_b_bits_id; // @[LazyModule.scala 298:16]
  assign yank_auto_out_b_bits_resp = axi4asource_auto_in_b_bits_resp; // @[LazyModule.scala 298:16]
  assign yank_auto_out_ar_ready = axi4asource_auto_in_ar_ready; // @[LazyModule.scala 298:16]
  assign yank_auto_out_r_valid = axi4asource_auto_in_r_valid; // @[LazyModule.scala 298:16]
  assign yank_auto_out_r_bits_id = axi4asource_auto_in_r_bits_id; // @[LazyModule.scala 298:16]
  assign yank_auto_out_r_bits_data = axi4asource_auto_in_r_bits_data; // @[LazyModule.scala 298:16]
  assign yank_auto_out_r_bits_resp = axi4asource_auto_in_r_bits_resp; // @[LazyModule.scala 298:16]
  assign yank_auto_out_r_bits_last = axi4asource_auto_in_r_bits_last; // @[LazyModule.scala 298:16]
  assign island_clock = io_port_c0_ddr4_ui_clk; // @[XilinxVCU118MIG.scala 160:25]
  assign island_reset = io_port_c0_ddr4_ui_clk_sync_rst; // @[XilinxVCU118MIG.scala 161:25]
  assign island_auto_axi4in_xing_in_aw_mem_0_id = axi4asource_auto_out_aw_mem_0_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_0_addr = axi4asource_auto_out_aw_mem_0_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_0_len = axi4asource_auto_out_aw_mem_0_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_0_size = axi4asource_auto_out_aw_mem_0_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_0_burst = axi4asource_auto_out_aw_mem_0_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_0_lock = axi4asource_auto_out_aw_mem_0_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_0_cache = axi4asource_auto_out_aw_mem_0_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_0_prot = axi4asource_auto_out_aw_mem_0_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_0_qos = axi4asource_auto_out_aw_mem_0_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_id = axi4asource_auto_out_aw_mem_1_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_addr = axi4asource_auto_out_aw_mem_1_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_len = axi4asource_auto_out_aw_mem_1_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_size = axi4asource_auto_out_aw_mem_1_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_burst = axi4asource_auto_out_aw_mem_1_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_lock = axi4asource_auto_out_aw_mem_1_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_cache = axi4asource_auto_out_aw_mem_1_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_prot = axi4asource_auto_out_aw_mem_1_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_1_qos = axi4asource_auto_out_aw_mem_1_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_id = axi4asource_auto_out_aw_mem_2_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_addr = axi4asource_auto_out_aw_mem_2_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_len = axi4asource_auto_out_aw_mem_2_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_size = axi4asource_auto_out_aw_mem_2_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_burst = axi4asource_auto_out_aw_mem_2_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_lock = axi4asource_auto_out_aw_mem_2_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_cache = axi4asource_auto_out_aw_mem_2_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_prot = axi4asource_auto_out_aw_mem_2_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_2_qos = axi4asource_auto_out_aw_mem_2_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_id = axi4asource_auto_out_aw_mem_3_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_addr = axi4asource_auto_out_aw_mem_3_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_len = axi4asource_auto_out_aw_mem_3_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_size = axi4asource_auto_out_aw_mem_3_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_burst = axi4asource_auto_out_aw_mem_3_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_lock = axi4asource_auto_out_aw_mem_3_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_cache = axi4asource_auto_out_aw_mem_3_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_prot = axi4asource_auto_out_aw_mem_3_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_3_qos = axi4asource_auto_out_aw_mem_3_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_id = axi4asource_auto_out_aw_mem_4_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_addr = axi4asource_auto_out_aw_mem_4_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_len = axi4asource_auto_out_aw_mem_4_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_size = axi4asource_auto_out_aw_mem_4_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_burst = axi4asource_auto_out_aw_mem_4_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_lock = axi4asource_auto_out_aw_mem_4_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_cache = axi4asource_auto_out_aw_mem_4_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_prot = axi4asource_auto_out_aw_mem_4_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_4_qos = axi4asource_auto_out_aw_mem_4_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_id = axi4asource_auto_out_aw_mem_5_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_addr = axi4asource_auto_out_aw_mem_5_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_len = axi4asource_auto_out_aw_mem_5_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_size = axi4asource_auto_out_aw_mem_5_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_burst = axi4asource_auto_out_aw_mem_5_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_lock = axi4asource_auto_out_aw_mem_5_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_cache = axi4asource_auto_out_aw_mem_5_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_prot = axi4asource_auto_out_aw_mem_5_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_5_qos = axi4asource_auto_out_aw_mem_5_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_id = axi4asource_auto_out_aw_mem_6_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_addr = axi4asource_auto_out_aw_mem_6_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_len = axi4asource_auto_out_aw_mem_6_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_size = axi4asource_auto_out_aw_mem_6_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_burst = axi4asource_auto_out_aw_mem_6_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_lock = axi4asource_auto_out_aw_mem_6_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_cache = axi4asource_auto_out_aw_mem_6_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_prot = axi4asource_auto_out_aw_mem_6_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_6_qos = axi4asource_auto_out_aw_mem_6_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_id = axi4asource_auto_out_aw_mem_7_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_addr = axi4asource_auto_out_aw_mem_7_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_len = axi4asource_auto_out_aw_mem_7_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_size = axi4asource_auto_out_aw_mem_7_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_burst = axi4asource_auto_out_aw_mem_7_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_lock = axi4asource_auto_out_aw_mem_7_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_cache = axi4asource_auto_out_aw_mem_7_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_prot = axi4asource_auto_out_aw_mem_7_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_mem_7_qos = axi4asource_auto_out_aw_mem_7_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_widx = axi4asource_auto_out_aw_widx; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_safe_widx_valid = axi4asource_auto_out_aw_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_aw_safe_source_reset_n = axi4asource_auto_out_aw_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_0_data = axi4asource_auto_out_w_mem_0_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_0_strb = axi4asource_auto_out_w_mem_0_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_0_last = axi4asource_auto_out_w_mem_0_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_1_data = axi4asource_auto_out_w_mem_1_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_1_strb = axi4asource_auto_out_w_mem_1_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_1_last = axi4asource_auto_out_w_mem_1_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_2_data = axi4asource_auto_out_w_mem_2_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_2_strb = axi4asource_auto_out_w_mem_2_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_2_last = axi4asource_auto_out_w_mem_2_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_3_data = axi4asource_auto_out_w_mem_3_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_3_strb = axi4asource_auto_out_w_mem_3_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_3_last = axi4asource_auto_out_w_mem_3_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_4_data = axi4asource_auto_out_w_mem_4_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_4_strb = axi4asource_auto_out_w_mem_4_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_4_last = axi4asource_auto_out_w_mem_4_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_5_data = axi4asource_auto_out_w_mem_5_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_5_strb = axi4asource_auto_out_w_mem_5_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_5_last = axi4asource_auto_out_w_mem_5_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_6_data = axi4asource_auto_out_w_mem_6_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_6_strb = axi4asource_auto_out_w_mem_6_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_6_last = axi4asource_auto_out_w_mem_6_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_7_data = axi4asource_auto_out_w_mem_7_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_7_strb = axi4asource_auto_out_w_mem_7_strb; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_mem_7_last = axi4asource_auto_out_w_mem_7_last; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_widx = axi4asource_auto_out_w_widx; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_safe_widx_valid = axi4asource_auto_out_w_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_w_safe_source_reset_n = axi4asource_auto_out_w_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_b_ridx = axi4asource_auto_out_b_ridx; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_b_safe_ridx_valid = axi4asource_auto_out_b_safe_ridx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_b_safe_sink_reset_n = axi4asource_auto_out_b_safe_sink_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_id = axi4asource_auto_out_ar_mem_0_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_addr = axi4asource_auto_out_ar_mem_0_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_len = axi4asource_auto_out_ar_mem_0_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_size = axi4asource_auto_out_ar_mem_0_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_burst = axi4asource_auto_out_ar_mem_0_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_lock = axi4asource_auto_out_ar_mem_0_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_cache = axi4asource_auto_out_ar_mem_0_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_prot = axi4asource_auto_out_ar_mem_0_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_0_qos = axi4asource_auto_out_ar_mem_0_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_id = axi4asource_auto_out_ar_mem_1_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_addr = axi4asource_auto_out_ar_mem_1_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_len = axi4asource_auto_out_ar_mem_1_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_size = axi4asource_auto_out_ar_mem_1_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_burst = axi4asource_auto_out_ar_mem_1_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_lock = axi4asource_auto_out_ar_mem_1_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_cache = axi4asource_auto_out_ar_mem_1_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_prot = axi4asource_auto_out_ar_mem_1_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_1_qos = axi4asource_auto_out_ar_mem_1_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_id = axi4asource_auto_out_ar_mem_2_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_addr = axi4asource_auto_out_ar_mem_2_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_len = axi4asource_auto_out_ar_mem_2_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_size = axi4asource_auto_out_ar_mem_2_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_burst = axi4asource_auto_out_ar_mem_2_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_lock = axi4asource_auto_out_ar_mem_2_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_cache = axi4asource_auto_out_ar_mem_2_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_prot = axi4asource_auto_out_ar_mem_2_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_2_qos = axi4asource_auto_out_ar_mem_2_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_id = axi4asource_auto_out_ar_mem_3_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_addr = axi4asource_auto_out_ar_mem_3_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_len = axi4asource_auto_out_ar_mem_3_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_size = axi4asource_auto_out_ar_mem_3_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_burst = axi4asource_auto_out_ar_mem_3_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_lock = axi4asource_auto_out_ar_mem_3_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_cache = axi4asource_auto_out_ar_mem_3_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_prot = axi4asource_auto_out_ar_mem_3_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_3_qos = axi4asource_auto_out_ar_mem_3_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_id = axi4asource_auto_out_ar_mem_4_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_addr = axi4asource_auto_out_ar_mem_4_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_len = axi4asource_auto_out_ar_mem_4_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_size = axi4asource_auto_out_ar_mem_4_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_burst = axi4asource_auto_out_ar_mem_4_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_lock = axi4asource_auto_out_ar_mem_4_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_cache = axi4asource_auto_out_ar_mem_4_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_prot = axi4asource_auto_out_ar_mem_4_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_4_qos = axi4asource_auto_out_ar_mem_4_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_id = axi4asource_auto_out_ar_mem_5_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_addr = axi4asource_auto_out_ar_mem_5_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_len = axi4asource_auto_out_ar_mem_5_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_size = axi4asource_auto_out_ar_mem_5_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_burst = axi4asource_auto_out_ar_mem_5_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_lock = axi4asource_auto_out_ar_mem_5_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_cache = axi4asource_auto_out_ar_mem_5_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_prot = axi4asource_auto_out_ar_mem_5_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_5_qos = axi4asource_auto_out_ar_mem_5_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_id = axi4asource_auto_out_ar_mem_6_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_addr = axi4asource_auto_out_ar_mem_6_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_len = axi4asource_auto_out_ar_mem_6_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_size = axi4asource_auto_out_ar_mem_6_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_burst = axi4asource_auto_out_ar_mem_6_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_lock = axi4asource_auto_out_ar_mem_6_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_cache = axi4asource_auto_out_ar_mem_6_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_prot = axi4asource_auto_out_ar_mem_6_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_6_qos = axi4asource_auto_out_ar_mem_6_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_id = axi4asource_auto_out_ar_mem_7_id; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_addr = axi4asource_auto_out_ar_mem_7_addr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_len = axi4asource_auto_out_ar_mem_7_len; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_size = axi4asource_auto_out_ar_mem_7_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_burst = axi4asource_auto_out_ar_mem_7_burst; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_lock = axi4asource_auto_out_ar_mem_7_lock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_cache = axi4asource_auto_out_ar_mem_7_cache; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_prot = axi4asource_auto_out_ar_mem_7_prot; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_mem_7_qos = axi4asource_auto_out_ar_mem_7_qos; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_widx = axi4asource_auto_out_ar_widx; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_safe_widx_valid = axi4asource_auto_out_ar_safe_widx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_ar_safe_source_reset_n = axi4asource_auto_out_ar_safe_source_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_r_ridx = axi4asource_auto_out_r_ridx; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_r_safe_ridx_valid = axi4asource_auto_out_r_safe_ridx_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_auto_axi4in_xing_in_r_safe_sink_reset_n = axi4asource_auto_out_r_safe_sink_reset_n; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign island_io_port_c0_sys_clk_i = io_port_c0_sys_clk_i; // @[XilinxVCU118MIG.scala 157:13]
  assign island_io_port_c0_ddr4_aresetn = io_port_c0_ddr4_aresetn; // @[XilinxVCU118MIG.scala 157:13]
  assign island_io_port_sys_rst = io_port_sys_rst; // @[XilinxVCU118MIG.scala 157:13]
  assign axi4asource_clock = clock;
  assign axi4asource_reset = reset;
  assign axi4asource_auto_in_aw_valid = yank_auto_out_aw_valid; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_id = yank_auto_out_aw_bits_id; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_addr = yank_auto_out_aw_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_len = yank_auto_out_aw_bits_len; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_size = yank_auto_out_aw_bits_size; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_burst = yank_auto_out_aw_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_lock = yank_auto_out_aw_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_cache = yank_auto_out_aw_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_prot = yank_auto_out_aw_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_aw_bits_qos = yank_auto_out_aw_bits_qos; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_w_valid = yank_auto_out_w_valid; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_w_bits_data = yank_auto_out_w_bits_data; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_w_bits_strb = yank_auto_out_w_bits_strb; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_w_bits_last = yank_auto_out_w_bits_last; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_b_ready = yank_auto_out_b_ready; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_valid = yank_auto_out_ar_valid; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_id = yank_auto_out_ar_bits_id; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_addr = yank_auto_out_ar_bits_addr; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_len = yank_auto_out_ar_bits_len; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_size = yank_auto_out_ar_bits_size; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_burst = yank_auto_out_ar_bits_burst; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_lock = yank_auto_out_ar_bits_lock; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_cache = yank_auto_out_ar_bits_cache; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_prot = yank_auto_out_ar_bits_prot; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_ar_bits_qos = yank_auto_out_ar_bits_qos; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_in_r_ready = yank_auto_out_r_ready; // @[LazyModule.scala 298:16]
  assign axi4asource_auto_out_aw_ridx = island_auto_axi4in_xing_in_aw_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_aw_safe_ridx_valid = island_auto_axi4in_xing_in_aw_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_aw_safe_sink_reset_n = island_auto_axi4in_xing_in_aw_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_w_ridx = island_auto_axi4in_xing_in_w_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_w_safe_ridx_valid = island_auto_axi4in_xing_in_w_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_w_safe_sink_reset_n = island_auto_axi4in_xing_in_w_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_0_id = island_auto_axi4in_xing_in_b_mem_0_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_0_resp = island_auto_axi4in_xing_in_b_mem_0_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_1_id = island_auto_axi4in_xing_in_b_mem_1_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_1_resp = island_auto_axi4in_xing_in_b_mem_1_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_2_id = island_auto_axi4in_xing_in_b_mem_2_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_2_resp = island_auto_axi4in_xing_in_b_mem_2_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_3_id = island_auto_axi4in_xing_in_b_mem_3_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_3_resp = island_auto_axi4in_xing_in_b_mem_3_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_4_id = island_auto_axi4in_xing_in_b_mem_4_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_4_resp = island_auto_axi4in_xing_in_b_mem_4_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_5_id = island_auto_axi4in_xing_in_b_mem_5_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_5_resp = island_auto_axi4in_xing_in_b_mem_5_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_6_id = island_auto_axi4in_xing_in_b_mem_6_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_6_resp = island_auto_axi4in_xing_in_b_mem_6_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_7_id = island_auto_axi4in_xing_in_b_mem_7_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_mem_7_resp = island_auto_axi4in_xing_in_b_mem_7_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_widx = island_auto_axi4in_xing_in_b_widx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_safe_widx_valid = island_auto_axi4in_xing_in_b_safe_widx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_b_safe_source_reset_n = island_auto_axi4in_xing_in_b_safe_source_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_ar_ridx = island_auto_axi4in_xing_in_ar_ridx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_ar_safe_ridx_valid = island_auto_axi4in_xing_in_ar_safe_ridx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_ar_safe_sink_reset_n = island_auto_axi4in_xing_in_ar_safe_sink_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_0_id = island_auto_axi4in_xing_in_r_mem_0_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_0_data = island_auto_axi4in_xing_in_r_mem_0_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_0_resp = island_auto_axi4in_xing_in_r_mem_0_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_0_last = island_auto_axi4in_xing_in_r_mem_0_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_1_id = island_auto_axi4in_xing_in_r_mem_1_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_1_data = island_auto_axi4in_xing_in_r_mem_1_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_1_resp = island_auto_axi4in_xing_in_r_mem_1_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_1_last = island_auto_axi4in_xing_in_r_mem_1_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_2_id = island_auto_axi4in_xing_in_r_mem_2_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_2_data = island_auto_axi4in_xing_in_r_mem_2_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_2_resp = island_auto_axi4in_xing_in_r_mem_2_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_2_last = island_auto_axi4in_xing_in_r_mem_2_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_3_id = island_auto_axi4in_xing_in_r_mem_3_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_3_data = island_auto_axi4in_xing_in_r_mem_3_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_3_resp = island_auto_axi4in_xing_in_r_mem_3_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_3_last = island_auto_axi4in_xing_in_r_mem_3_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_4_id = island_auto_axi4in_xing_in_r_mem_4_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_4_data = island_auto_axi4in_xing_in_r_mem_4_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_4_resp = island_auto_axi4in_xing_in_r_mem_4_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_4_last = island_auto_axi4in_xing_in_r_mem_4_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_5_id = island_auto_axi4in_xing_in_r_mem_5_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_5_data = island_auto_axi4in_xing_in_r_mem_5_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_5_resp = island_auto_axi4in_xing_in_r_mem_5_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_5_last = island_auto_axi4in_xing_in_r_mem_5_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_6_id = island_auto_axi4in_xing_in_r_mem_6_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_6_data = island_auto_axi4in_xing_in_r_mem_6_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_6_resp = island_auto_axi4in_xing_in_r_mem_6_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_6_last = island_auto_axi4in_xing_in_r_mem_6_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_7_id = island_auto_axi4in_xing_in_r_mem_7_id; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_7_data = island_auto_axi4in_xing_in_r_mem_7_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_7_resp = island_auto_axi4in_xing_in_r_mem_7_resp; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_mem_7_last = island_auto_axi4in_xing_in_r_mem_7_last; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_widx = island_auto_axi4in_xing_in_r_widx; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_safe_widx_valid = island_auto_axi4in_xing_in_r_safe_widx_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign axi4asource_auto_out_r_safe_source_reset_n = island_auto_axi4in_xing_in_r_safe_source_reset_n; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
endmodule
module VCU118FPGATestHarness(
  input         sys_clock_p,
  input         sys_clock_n,
  inout         uart_txd,
  inout         uart_rxd,
  inout         uart_rtsn,
  inout         uart_ctsn,
  inout         sdio_spi_clk,
  inout         sdio_spi_cs,
  inout         sdio_spi_dat_0,
  inout         sdio_spi_dat_1,
  inout         sdio_spi_dat_2,
  inout         sdio_spi_dat_3,
  output [16:0] ddr_c0_ddr4_adr,
  output        ddr_c0_ddr4_bg,
  output [1:0]  ddr_c0_ddr4_ba,
  output        ddr_c0_ddr4_reset_n,
  output        ddr_c0_ddr4_act_n,
  output        ddr_c0_ddr4_ck_c,
  output        ddr_c0_ddr4_ck_t,
  output        ddr_c0_ddr4_cke,
  output        ddr_c0_ddr4_cs_n,
  output        ddr_c0_ddr4_odt,
  inout  [63:0] ddr_c0_ddr4_dq,
  inout  [7:0]  ddr_c0_ddr4_dqs_c,
  inout  [7:0]  ddr_c0_ddr4_dqs_t,
  inout  [7:0]  ddr_c0_ddr4_dm_dbi_n,
  input         reset
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  chiptop_tl_slave_0_a_ready; // @[TestHarness.scala 42:29]
  wire  chiptop_tl_slave_0_a_valid; // @[TestHarness.scala 42:29]
  wire [2:0] chiptop_tl_slave_0_a_bits_opcode; // @[TestHarness.scala 42:29]
  wire [2:0] chiptop_tl_slave_0_a_bits_param; // @[TestHarness.scala 42:29]
  wire [2:0] chiptop_tl_slave_0_a_bits_size; // @[TestHarness.scala 42:29]
  wire [3:0] chiptop_tl_slave_0_a_bits_source; // @[TestHarness.scala 42:29]
  wire [31:0] chiptop_tl_slave_0_a_bits_address; // @[TestHarness.scala 42:29]
  wire [7:0] chiptop_tl_slave_0_a_bits_mask; // @[TestHarness.scala 42:29]
  wire [63:0] chiptop_tl_slave_0_a_bits_data; // @[TestHarness.scala 42:29]
  wire  chiptop_tl_slave_0_a_bits_corrupt; // @[TestHarness.scala 42:29]
  wire  chiptop_tl_slave_0_d_ready; // @[TestHarness.scala 42:29]
  wire  chiptop_tl_slave_0_d_valid; // @[TestHarness.scala 42:29]
  wire [2:0] chiptop_tl_slave_0_d_bits_opcode; // @[TestHarness.scala 42:29]
  wire [1:0] chiptop_tl_slave_0_d_bits_param; // @[TestHarness.scala 42:29]
  wire [2:0] chiptop_tl_slave_0_d_bits_size; // @[TestHarness.scala 42:29]
  wire [3:0] chiptop_tl_slave_0_d_bits_source; // @[TestHarness.scala 42:29]
  wire  chiptop_tl_slave_0_d_bits_sink; // @[TestHarness.scala 42:29]
  wire  chiptop_tl_slave_0_d_bits_denied; // @[TestHarness.scala 42:29]
  wire [63:0] chiptop_tl_slave_0_d_bits_data; // @[TestHarness.scala 42:29]
  wire  chiptop_tl_slave_0_d_bits_corrupt; // @[TestHarness.scala 42:29]
  wire  chiptop_custom_boot; // @[TestHarness.scala 42:29]
  wire  chiptop_clock_clock; // @[TestHarness.scala 42:29]
  wire  chiptop_reset; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_sck; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_0_i; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_0_o; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_0_ie; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_0_oe; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_1_i; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_1_o; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_1_ie; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_1_oe; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_2_i; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_2_o; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_2_ie; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_2_oe; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_3_i; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_3_o; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_3_ie; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_dq_3_oe; // @[TestHarness.scala 42:29]
  wire  chiptop_spi_0_cs_0; // @[TestHarness.scala 42:29]
  wire  chiptop_uart_0_txd; // @[TestHarness.scala 42:29]
  wire  chiptop_uart_0_rxd; // @[TestHarness.scala 42:29]
  wire  dutWrangler_auto_in_1_clock; // @[TestHarness.scala 58:31]
  wire  dutWrangler_auto_in_1_reset; // @[TestHarness.scala 58:31]
  wire  dutWrangler_auto_in_0_clock; // @[TestHarness.scala 58:31]
  wire  dutWrangler_auto_in_0_reset; // @[TestHarness.scala 58:31]
  wire  dutWrangler_auto_out_1_reset; // @[TestHarness.scala 58:31]
  wire  dutWrangler_auto_out_0_clock; // @[TestHarness.scala 58:31]
  wire  dutWrangler_auto_out_0_reset; // @[TestHarness.scala 58:31]
  wire  dutGroup_auto_in_member_0_clock; // @[ClockGroup.scala 32:15]
  wire  dutGroup_auto_in_member_0_reset; // @[ClockGroup.scala 32:15]
  wire  dutGroup_auto_out_clock; // @[ClockGroup.scala 32:15]
  wire  dutGroup_auto_out_reset; // @[ClockGroup.scala 32:15]
  wire  mig_clock; // @[VCU118NewShell.scala 313:23]
  wire  mig_reset; // @[VCU118NewShell.scala 313:23]
  wire  mig_auto_buffer_in_a_ready; // @[VCU118NewShell.scala 313:23]
  wire  mig_auto_buffer_in_a_valid; // @[VCU118NewShell.scala 313:23]
  wire [2:0] mig_auto_buffer_in_a_bits_opcode; // @[VCU118NewShell.scala 313:23]
  wire [3:0] mig_auto_buffer_in_a_bits_size; // @[VCU118NewShell.scala 313:23]
  wire [3:0] mig_auto_buffer_in_a_bits_source; // @[VCU118NewShell.scala 313:23]
  wire [31:0] mig_auto_buffer_in_a_bits_address; // @[VCU118NewShell.scala 313:23]
  wire [7:0] mig_auto_buffer_in_a_bits_mask; // @[VCU118NewShell.scala 313:23]
  wire [63:0] mig_auto_buffer_in_a_bits_data; // @[VCU118NewShell.scala 313:23]
  wire  mig_auto_buffer_in_d_ready; // @[VCU118NewShell.scala 313:23]
  wire  mig_auto_buffer_in_d_valid; // @[VCU118NewShell.scala 313:23]
  wire [2:0] mig_auto_buffer_in_d_bits_opcode; // @[VCU118NewShell.scala 313:23]
  wire [1:0] mig_auto_buffer_in_d_bits_param; // @[VCU118NewShell.scala 313:23]
  wire [3:0] mig_auto_buffer_in_d_bits_size; // @[VCU118NewShell.scala 313:23]
  wire [3:0] mig_auto_buffer_in_d_bits_source; // @[VCU118NewShell.scala 313:23]
  wire  mig_auto_buffer_in_d_bits_sink; // @[VCU118NewShell.scala 313:23]
  wire  mig_auto_buffer_in_d_bits_denied; // @[VCU118NewShell.scala 313:23]
  wire [63:0] mig_auto_buffer_in_d_bits_data; // @[VCU118NewShell.scala 313:23]
  wire  mig_auto_buffer_in_d_bits_corrupt; // @[VCU118NewShell.scala 313:23]
  wire [16:0] mig_io_port_c0_ddr4_adr; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_bg; // @[VCU118NewShell.scala 313:23]
  wire [1:0] mig_io_port_c0_ddr4_ba; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_reset_n; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_act_n; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_ck_c; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_ck_t; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_cke; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_cs_n; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_odt; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_sys_clk_i; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_ui_clk; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_ui_clk_sync_rst; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_c0_ddr4_aresetn; // @[VCU118NewShell.scala 313:23]
  wire  mig_io_port_sys_rst; // @[VCU118NewShell.scala 313:23]
  wire  harnessSysPLL_clk_in1; // @[XilinxShell.scala 85:55]
  wire  harnessSysPLL_clk_out1; // @[XilinxShell.scala 85:55]
  wire  harnessSysPLL_reset; // @[XilinxShell.scala 85:55]
  wire  harnessSysPLL_locked; // @[XilinxShell.scala 85:55]
  wire  sys_clock_ibufds_O; // @[ClockOverlay.scala 15:24]
  wire  sys_clock_ibufds_I; // @[ClockOverlay.scala 15:24]
  wire  sys_clock_ibufds_IB; // @[ClockOverlay.scala 15:24]
  wire  a2b_b; // @[Util.scala 58:21]
  wire  a2b_b_en; // @[Util.scala 58:21]
  wire  bundleIn_0_rxd_a2b_b; // @[Util.scala 30:21]
  wire  a2b_1_b; // @[Util.scala 58:21]
  wire  a2b_1_b_en; // @[Util.scala 58:21]
  wire  a2b_2_b; // @[Util.scala 58:21]
  wire  a2b_2_b_en; // @[Util.scala 58:21]
  wire  a2b_3_b; // @[Util.scala 58:21]
  wire  a2b_3_b_en; // @[Util.scala 58:21]
  wire  a2b_4_b; // @[Util.scala 30:21]
  wire  resetIBUF_O; // @[TestHarness.scala 104:25]
  wire  resetIBUF_I; // @[TestHarness.scala 104:25]
  wire  fpga_power_on_clock; // @[Xilinx.scala 92:21]
  wire  fpga_power_on_power_on_reset; // @[Xilinx.scala 92:21]
  wire  plusarg_reader_out; // @[PlusArg.scala 80:11]
  wire  bundleOut_0_reset = resetIBUF_O | fpga_power_on_power_on_reset; // @[TestHarness.scala 117:38]
  wire  bundleIn_0_1_clock = dutWrangler_auto_out_0_clock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  reg  bundleIn_0_dq_1_i_REG; // @[SDIOOverlay.scala 20:39]
  reg  bundleIn_0_dq_1_i_REG_1; // @[SDIOOverlay.scala 20:31]
  wire  bundleIn_0_6_reset = dutWrangler_auto_out_1_reset; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  wire [3:0] bundleOut_0_7_d_bits_size = mig_auto_buffer_in_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  ChipTop chiptop ( // @[TestHarness.scala 42:29]
    .tl_slave_0_a_ready(chiptop_tl_slave_0_a_ready),
    .tl_slave_0_a_valid(chiptop_tl_slave_0_a_valid),
    .tl_slave_0_a_bits_opcode(chiptop_tl_slave_0_a_bits_opcode),
    .tl_slave_0_a_bits_param(chiptop_tl_slave_0_a_bits_param),
    .tl_slave_0_a_bits_size(chiptop_tl_slave_0_a_bits_size),
    .tl_slave_0_a_bits_source(chiptop_tl_slave_0_a_bits_source),
    .tl_slave_0_a_bits_address(chiptop_tl_slave_0_a_bits_address),
    .tl_slave_0_a_bits_mask(chiptop_tl_slave_0_a_bits_mask),
    .tl_slave_0_a_bits_data(chiptop_tl_slave_0_a_bits_data),
    .tl_slave_0_a_bits_corrupt(chiptop_tl_slave_0_a_bits_corrupt),
    .tl_slave_0_d_ready(chiptop_tl_slave_0_d_ready),
    .tl_slave_0_d_valid(chiptop_tl_slave_0_d_valid),
    .tl_slave_0_d_bits_opcode(chiptop_tl_slave_0_d_bits_opcode),
    .tl_slave_0_d_bits_param(chiptop_tl_slave_0_d_bits_param),
    .tl_slave_0_d_bits_size(chiptop_tl_slave_0_d_bits_size),
    .tl_slave_0_d_bits_source(chiptop_tl_slave_0_d_bits_source),
    .tl_slave_0_d_bits_sink(chiptop_tl_slave_0_d_bits_sink),
    .tl_slave_0_d_bits_denied(chiptop_tl_slave_0_d_bits_denied),
    .tl_slave_0_d_bits_data(chiptop_tl_slave_0_d_bits_data),
    .tl_slave_0_d_bits_corrupt(chiptop_tl_slave_0_d_bits_corrupt),
    .custom_boot(chiptop_custom_boot),
    .clock_clock(chiptop_clock_clock),
    .reset(chiptop_reset),
    .spi_0_sck(chiptop_spi_0_sck),
    .spi_0_dq_0_i(chiptop_spi_0_dq_0_i),
    .spi_0_dq_0_o(chiptop_spi_0_dq_0_o),
    .spi_0_dq_0_ie(chiptop_spi_0_dq_0_ie),
    .spi_0_dq_0_oe(chiptop_spi_0_dq_0_oe),
    .spi_0_dq_1_i(chiptop_spi_0_dq_1_i),
    .spi_0_dq_1_o(chiptop_spi_0_dq_1_o),
    .spi_0_dq_1_ie(chiptop_spi_0_dq_1_ie),
    .spi_0_dq_1_oe(chiptop_spi_0_dq_1_oe),
    .spi_0_dq_2_i(chiptop_spi_0_dq_2_i),
    .spi_0_dq_2_o(chiptop_spi_0_dq_2_o),
    .spi_0_dq_2_ie(chiptop_spi_0_dq_2_ie),
    .spi_0_dq_2_oe(chiptop_spi_0_dq_2_oe),
    .spi_0_dq_3_i(chiptop_spi_0_dq_3_i),
    .spi_0_dq_3_o(chiptop_spi_0_dq_3_o),
    .spi_0_dq_3_ie(chiptop_spi_0_dq_3_ie),
    .spi_0_dq_3_oe(chiptop_spi_0_dq_3_oe),
    .spi_0_cs_0(chiptop_spi_0_cs_0),
    .uart_0_txd(chiptop_uart_0_txd),
    .uart_0_rxd(chiptop_uart_0_rxd)
  );
  ResetWrangler_inVCU118FPGATestHarness dutWrangler ( // @[TestHarness.scala 58:31]
    .auto_in_1_clock(dutWrangler_auto_in_1_clock),
    .auto_in_1_reset(dutWrangler_auto_in_1_reset),
    .auto_in_0_clock(dutWrangler_auto_in_0_clock),
    .auto_in_0_reset(dutWrangler_auto_in_0_reset),
    .auto_out_1_reset(dutWrangler_auto_out_1_reset),
    .auto_out_0_clock(dutWrangler_auto_out_0_clock),
    .auto_out_0_reset(dutWrangler_auto_out_0_reset)
  );
  ClockGroup_7_inVCU118FPGATestHarness dutGroup ( // @[ClockGroup.scala 32:15]
    .auto_in_member_0_clock(dutGroup_auto_in_member_0_clock),
    .auto_in_member_0_reset(dutGroup_auto_in_member_0_reset),
    .auto_out_clock(dutGroup_auto_out_clock),
    .auto_out_reset(dutGroup_auto_out_reset)
  );
  XilinxVCU118MIG_inVCU118FPGATestHarness mig ( // @[VCU118NewShell.scala 313:23]
    .clock(mig_clock),
    .reset(mig_reset),
    .auto_buffer_in_a_ready(mig_auto_buffer_in_a_ready),
    .auto_buffer_in_a_valid(mig_auto_buffer_in_a_valid),
    .auto_buffer_in_a_bits_opcode(mig_auto_buffer_in_a_bits_opcode),
    .auto_buffer_in_a_bits_size(mig_auto_buffer_in_a_bits_size),
    .auto_buffer_in_a_bits_source(mig_auto_buffer_in_a_bits_source),
    .auto_buffer_in_a_bits_address(mig_auto_buffer_in_a_bits_address),
    .auto_buffer_in_a_bits_mask(mig_auto_buffer_in_a_bits_mask),
    .auto_buffer_in_a_bits_data(mig_auto_buffer_in_a_bits_data),
    .auto_buffer_in_d_ready(mig_auto_buffer_in_d_ready),
    .auto_buffer_in_d_valid(mig_auto_buffer_in_d_valid),
    .auto_buffer_in_d_bits_opcode(mig_auto_buffer_in_d_bits_opcode),
    .auto_buffer_in_d_bits_param(mig_auto_buffer_in_d_bits_param),
    .auto_buffer_in_d_bits_size(mig_auto_buffer_in_d_bits_size),
    .auto_buffer_in_d_bits_source(mig_auto_buffer_in_d_bits_source),
    .auto_buffer_in_d_bits_sink(mig_auto_buffer_in_d_bits_sink),
    .auto_buffer_in_d_bits_denied(mig_auto_buffer_in_d_bits_denied),
    .auto_buffer_in_d_bits_data(mig_auto_buffer_in_d_bits_data),
    .auto_buffer_in_d_bits_corrupt(mig_auto_buffer_in_d_bits_corrupt),
    .io_port_c0_ddr4_adr(mig_io_port_c0_ddr4_adr),
    .io_port_c0_ddr4_bg(mig_io_port_c0_ddr4_bg),
    .io_port_c0_ddr4_ba(mig_io_port_c0_ddr4_ba),
    .io_port_c0_ddr4_reset_n(mig_io_port_c0_ddr4_reset_n),
    .io_port_c0_ddr4_act_n(mig_io_port_c0_ddr4_act_n),
    .io_port_c0_ddr4_ck_c(mig_io_port_c0_ddr4_ck_c),
    .io_port_c0_ddr4_ck_t(mig_io_port_c0_ddr4_ck_t),
    .io_port_c0_ddr4_cke(mig_io_port_c0_ddr4_cke),
    .io_port_c0_ddr4_cs_n(mig_io_port_c0_ddr4_cs_n),
    .io_port_c0_ddr4_odt(mig_io_port_c0_ddr4_odt),
    .io_port_c0_ddr4_dq(ddr_c0_ddr4_dq),
    .io_port_c0_ddr4_dqs_c(ddr_c0_ddr4_dqs_c),
    .io_port_c0_ddr4_dqs_t(ddr_c0_ddr4_dqs_t),
    .io_port_c0_ddr4_dm_dbi_n(ddr_c0_ddr4_dm_dbi_n),
    .io_port_c0_sys_clk_i(mig_io_port_c0_sys_clk_i),
    .io_port_c0_ddr4_ui_clk(mig_io_port_c0_ddr4_ui_clk),
    .io_port_c0_ddr4_ui_clk_sync_rst(mig_io_port_c0_ddr4_ui_clk_sync_rst),
    .io_port_c0_ddr4_aresetn(mig_io_port_c0_ddr4_aresetn),
    .io_port_sys_rst(mig_io_port_sys_rst)
  );
  harnessSysPLL harnessSysPLL ( // @[XilinxShell.scala 85:55]
    .clk_in1(harnessSysPLL_clk_in1),
    .clk_out1(harnessSysPLL_clk_out1),
    .reset(harnessSysPLL_reset),
    .locked(harnessSysPLL_locked)
  );
  IBUFDS
    #(.DIFF_TERM("FALSE"), .IOSTANDARD("DEFAULT"), .DQS_BIAS("FALSE"), .CAPACITANCE("DONT_CARE"), .IFD_DELAY_VALUE("AUTO"), .IBUF_LOW_PWR("TRUE"), .IBUF_DELAY_VALUE(0))
    sys_clock_ibufds ( // @[ClockOverlay.scala 15:24]
    .O(sys_clock_ibufds_O),
    .I(sys_clock_ibufds_I),
    .IB(sys_clock_ibufds_IB)
  );
  UIntToAnalog_1 a2b ( // @[Util.scala 58:21]
    .a(uart_txd),
    .b(a2b_b),
    .b_en(a2b_b_en)
  );
  AnalogToUInt_1 bundleIn_0_rxd_a2b ( // @[Util.scala 30:21]
    .a(uart_rxd),
    .b(bundleIn_0_rxd_a2b_b)
  );
  UIntToAnalog_1 a2b_1 ( // @[Util.scala 58:21]
    .a(sdio_spi_clk),
    .b(a2b_1_b),
    .b_en(a2b_1_b_en)
  );
  UIntToAnalog_1 a2b_2 ( // @[Util.scala 58:21]
    .a(sdio_spi_dat_3),
    .b(a2b_2_b),
    .b_en(a2b_2_b_en)
  );
  UIntToAnalog_1 a2b_3 ( // @[Util.scala 58:21]
    .a(sdio_spi_cs),
    .b(a2b_3_b),
    .b_en(a2b_3_b_en)
  );
  AnalogToUInt_1 a2b_4 ( // @[Util.scala 30:21]
    .a(sdio_spi_dat_0),
    .b(a2b_4_b)
  );
  IBUF resetIBUF ( // @[TestHarness.scala 104:25]
    .O(resetIBUF_O),
    .I(resetIBUF_I)
  );
  PowerOnResetFPGAOnly fpga_power_on ( // @[Xilinx.scala 92:21]
    .clock(fpga_power_on_clock),
    .power_on_reset(fpga_power_on_power_on_reset)
  );
  plusarg_reader #(.FORMAT("custom_boot_pin=%d"), .DEFAULT(0), .WIDTH(1)) plusarg_reader ( // @[PlusArg.scala 80:11]
    .out(plusarg_reader_out)
  );
  assign ddr_c0_ddr4_adr = mig_io_port_c0_ddr4_adr; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_bg = mig_io_port_c0_ddr4_bg; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_ba = mig_io_port_c0_ddr4_ba; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_reset_n = mig_io_port_c0_ddr4_reset_n; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_act_n = mig_io_port_c0_ddr4_act_n; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_ck_c = mig_io_port_c0_ddr4_ck_c; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_ck_t = mig_io_port_c0_ddr4_ck_t; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_cke = mig_io_port_c0_ddr4_cke; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_cs_n = mig_io_port_c0_ddr4_cs_n; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign ddr_c0_ddr4_odt = mig_io_port_c0_ddr4_odt; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign chiptop_tl_slave_0_a_ready = mig_auto_buffer_in_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_tl_slave_0_d_valid = mig_auto_buffer_in_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_tl_slave_0_d_bits_opcode = mig_auto_buffer_in_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_tl_slave_0_d_bits_param = mig_auto_buffer_in_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_tl_slave_0_d_bits_size = bundleOut_0_7_d_bits_size[2:0]; // @[HarnessBinders.scala 42:23]
  assign chiptop_tl_slave_0_d_bits_source = mig_auto_buffer_in_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_tl_slave_0_d_bits_sink = mig_auto_buffer_in_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_tl_slave_0_d_bits_denied = mig_auto_buffer_in_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_tl_slave_0_d_bits_data = mig_auto_buffer_in_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_tl_slave_0_d_bits_corrupt = mig_auto_buffer_in_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 298:16]
  assign chiptop_custom_boot = plusarg_reader_out; // @[HarnessBinders.scala 329:21]
  assign chiptop_clock_clock = dutWrangler_auto_out_0_clock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign chiptop_reset = dutWrangler_auto_out_0_reset; // @[HarnessBinders.scala 342:51]
  assign chiptop_spi_0_dq_0_i = 1'h0; // @[Nodes.scala 1210:84 SDIOOverlay.scala 20:21]
  assign chiptop_spi_0_dq_1_i = bundleIn_0_dq_1_i_REG_1; // @[Nodes.scala 1210:84 SDIOOverlay.scala 20:21]
  assign chiptop_spi_0_dq_2_i = 1'h0; // @[Nodes.scala 1210:84 SDIOOverlay.scala 20:21]
  assign chiptop_spi_0_dq_3_i = 1'h0; // @[Nodes.scala 1210:84 SDIOOverlay.scala 20:21]
  assign chiptop_uart_0_rxd = bundleIn_0_rxd_a2b_b; // @[Nodes.scala 1210:84 UARTOverlay.scala 16:27]
  assign dutWrangler_auto_in_1_clock = mig_io_port_c0_ddr4_ui_clk; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign dutWrangler_auto_in_1_reset = mig_io_port_c0_ddr4_ui_clk_sync_rst; // @[Nodes.scala 1207:84 VCU118NewShell.scala 323:32]
  assign dutWrangler_auto_in_0_clock = dutGroup_auto_out_clock; // @[LazyModule.scala 296:16]
  assign dutWrangler_auto_in_0_reset = dutGroup_auto_out_reset; // @[LazyModule.scala 296:16]
  assign dutGroup_auto_in_member_0_clock = harnessSysPLL_clk_out1; // @[Nodes.scala 1207:84 PLLFactory.scala 78:17]
  assign dutGroup_auto_in_member_0_reset = ~harnessSysPLL_locked | bundleOut_0_reset; // @[PLLFactory.scala 79:35]
  assign mig_clock = dutWrangler_auto_out_0_clock; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign mig_reset = dutWrangler_auto_out_0_reset; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign mig_auto_buffer_in_a_valid = chiptop_tl_slave_0_a_valid; // @[HarnessBinders.scala 40:33 42:23]
  assign mig_auto_buffer_in_a_bits_opcode = chiptop_tl_slave_0_a_bits_opcode; // @[HarnessBinders.scala 40:33 42:23]
  assign mig_auto_buffer_in_a_bits_size = {{1'd0}, chiptop_tl_slave_0_a_bits_size}; // @[HarnessBinders.scala 40:33 42:23]
  assign mig_auto_buffer_in_a_bits_source = chiptop_tl_slave_0_a_bits_source; // @[HarnessBinders.scala 40:33 42:23]
  assign mig_auto_buffer_in_a_bits_address = chiptop_tl_slave_0_a_bits_address; // @[HarnessBinders.scala 40:33 42:23]
  assign mig_auto_buffer_in_a_bits_mask = chiptop_tl_slave_0_a_bits_mask; // @[HarnessBinders.scala 40:33 42:23]
  assign mig_auto_buffer_in_a_bits_data = chiptop_tl_slave_0_a_bits_data; // @[HarnessBinders.scala 40:33 42:23]
  assign mig_auto_buffer_in_d_ready = chiptop_tl_slave_0_d_ready; // @[HarnessBinders.scala 40:33 42:23]
  assign mig_io_port_c0_sys_clk_i = sys_clock_ibufds_O; // @[VCU118NewShell.scala 334:36]
  assign mig_io_port_c0_ddr4_aresetn = ~bundleIn_0_6_reset; // @[VCU118NewShell.scala 336:29]
  assign mig_io_port_sys_rst = resetIBUF_O | fpga_power_on_power_on_reset; // @[TestHarness.scala 117:38]
  assign harnessSysPLL_clk_in1 = sys_clock_ibufds_O; // @[Nodes.scala 1207:84 ClockOverlay.scala 21:13]
  assign harnessSysPLL_reset = resetIBUF_O | fpga_power_on_power_on_reset; // @[TestHarness.scala 117:38]
  assign sys_clock_ibufds_I = sys_clock_p; // @[ClockOverlay.scala 19:18]
  assign sys_clock_ibufds_IB = sys_clock_n; // @[ClockOverlay.scala 20:18]
  assign a2b_b = chiptop_uart_0_txd; // @[Nodes.scala 1207:84 HarnessBinders.scala 19:46]
  assign a2b_b_en = 1'h1; // @[Util.scala 61:17]
  assign a2b_1_b = chiptop_spi_0_sck; // @[Nodes.scala 1207:84 HarnessBinders.scala 28:45]
  assign a2b_1_b_en = 1'h1; // @[Util.scala 61:17]
  assign a2b_2_b = chiptop_spi_0_cs_0; // @[Nodes.scala 1207:84 HarnessBinders.scala 28:45]
  assign a2b_2_b_en = 1'h1; // @[Util.scala 61:17]
  assign a2b_3_b = chiptop_spi_0_dq_0_o; // @[Nodes.scala 1207:84 HarnessBinders.scala 28:45]
  assign a2b_3_b_en = 1'h1; // @[Util.scala 61:17]
  assign resetIBUF_I = reset; // @[TestHarness.scala 105:18]
  assign fpga_power_on_clock = sys_clock_ibufds_O; // @[Nodes.scala 1207:84 ClockOverlay.scala 21:13]
  always @(posedge bundleIn_0_1_clock) begin
    bundleIn_0_dq_1_i_REG <= a2b_4_b; // @[SDIOOverlay.scala 41:61]
    bundleIn_0_dq_1_i_REG_1 <= bundleIn_0_dq_1_i_REG; // @[SDIOOverlay.scala 20:31]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  bundleIn_0_dq_1_i_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  bundleIn_0_dq_1_i_REG_1 = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
