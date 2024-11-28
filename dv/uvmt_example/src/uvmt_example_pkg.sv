import uvm_pkg::*;
`include "uvm_macros.svh"


package uvmt_example_pkg;
   import uvm_pkg::*;
  `include "uvmt_example_macros.svh"
  `include "uvmt_example_smoke_test.sv"
endpackage

`include "uvmt_example_tb.sv"
