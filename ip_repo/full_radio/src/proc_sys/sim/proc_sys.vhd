--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Wed Nov  1 22:49:21 2023
--Host        : DESKTOP-VI6CF62 running 64-bit major release  (build 9200)
--Command     : generate_target proc_sys.bd
--Design      : proc_sys
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proc_sys is
  port (
    M_AXIS_DOUT_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_DOUT_0_tvalid : out STD_LOGIC;
    S_AXIS_A_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_A_0_tvalid : in STD_LOGIC;
    S_AXIS_B_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_B_0_tvalid : in STD_LOGIC;
    aclk_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of proc_sys : entity is "proc_sys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=proc_sys,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of proc_sys : entity is "proc_sys.hwdef";
end proc_sys;

architecture STRUCTURE of proc_sys is
  component proc_sys_cmpy_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component proc_sys_cmpy_0_0;
  signal S_AXIS_A_0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXIS_A_0_1_TVALID : STD_LOGIC;
  signal S_AXIS_B_0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXIS_B_0_1_TVALID : STD_LOGIC;
  signal aclk_0_1 : STD_LOGIC;
  signal cmpy_0_M_AXIS_DOUT_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmpy_0_M_AXIS_DOUT_TVALID : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_DOUT_0_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_A_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_B_0_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TVALID";
  attribute X_INTERFACE_INFO of aclk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_0 : signal is "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF S_AXIS_A_0:S_AXIS_B_0:M_AXIS_DOUT_0, CLK_DOMAIN proc_sys_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of M_AXIS_DOUT_0_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DOUT_0 TDATA";
  attribute X_INTERFACE_PARAMETER of M_AXIS_DOUT_0_tdata : signal is "XIL_INTERFACENAME M_AXIS_DOUT_0, CLK_DOMAIN proc_sys_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency set_width format long minimum {} maximum {}} value 16} stride {attribs {resolve_type generated dependency set_stride format long minimum {} maximum {}} value 16} real {fixed {fractwidth {attribs {resolve_type generated dependency set_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_offset format long minimum {} maximum {}} value 0}}} field_ctrl_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ctrl_tuser} enabled {attribs {resolve_type generated dependency ctrl_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency ctrl_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency ctrl_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_A_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A_0 TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_A_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_A_0, CLK_DOMAIN proc_sys_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_B_0_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_B_0 TDATA";
  attribute X_INTERFACE_PARAMETER of S_AXIS_B_0_tdata : signal is "XIL_INTERFACENAME S_AXIS_B_0, CLK_DOMAIN proc_sys_aclk_0, FREQ_HZ 10000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  M_AXIS_DOUT_0_tdata(31 downto 0) <= cmpy_0_M_AXIS_DOUT_TDATA(31 downto 0);
  M_AXIS_DOUT_0_tvalid <= cmpy_0_M_AXIS_DOUT_TVALID;
  S_AXIS_A_0_1_TDATA(31 downto 0) <= S_AXIS_A_0_tdata(31 downto 0);
  S_AXIS_A_0_1_TVALID <= S_AXIS_A_0_tvalid;
  S_AXIS_B_0_1_TDATA(31 downto 0) <= S_AXIS_B_0_tdata(31 downto 0);
  S_AXIS_B_0_1_TVALID <= S_AXIS_B_0_tvalid;
  aclk_0_1 <= aclk_0;
cmpy_0: component proc_sys_cmpy_0_0
     port map (
      aclk => aclk_0_1,
      m_axis_dout_tdata(31 downto 0) => cmpy_0_M_AXIS_DOUT_TDATA(31 downto 0),
      m_axis_dout_tvalid => cmpy_0_M_AXIS_DOUT_TVALID,
      s_axis_a_tdata(31 downto 0) => S_AXIS_A_0_1_TDATA(31 downto 0),
      s_axis_a_tvalid => S_AXIS_A_0_1_TVALID,
      s_axis_b_tdata(31 downto 0) => S_AXIS_B_0_1_TDATA(31 downto 0),
      s_axis_b_tvalid => S_AXIS_B_0_1_TVALID
    );
end STRUCTURE;
