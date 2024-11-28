class uvmt_example_smoke_test_c extends uvm_test;

  bit  sample_bit = 0;

  covergroup test_cg;
    coverpoint sample_bit;
  endgroup

  `uvm_component_utils(uvmt_example_smoke_test_c)
  
  function new(string name="uvmt_example_smoke_test", uvm_component parent=null);
    super.new(name, parent);
    test_cg = new();
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    `uvm_info("TB", $sformatf("Hello, World! DATA_WIDTH=%0d", `DATA_WIDTH), UVM_NONE)
    test_cg.sample();
    sample_bit = 1;
    test_cg.sample();
  endtask
endclass