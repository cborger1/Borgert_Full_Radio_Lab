--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Wed Nov  1 22:49:21 2023
--Host        : DESKTOP-VI6CF62 running 64-bit major release  (build 9200)
--Command     : generate_target proc_sys_wrapper.bd
--Design      : proc_sys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity proc_sys_wrapper is
  port (
    M_AXIS_DOUT_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_DOUT_0_tvalid : out STD_LOGIC;
    S_AXIS_A_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_A_0_tvalid : in STD_LOGIC;
    S_AXIS_B_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_B_0_tvalid : in STD_LOGIC;
    aclk_0 : in STD_LOGIC
  );
end proc_sys_wrapper;

architecture STRUCTURE of proc_sys_wrapper is
  component proc_sys is
  port (
    aclk_0 : in STD_LOGIC;
    S_AXIS_A_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_A_0_tvalid : in STD_LOGIC;
    S_AXIS_B_0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_B_0_tvalid : in STD_LOGIC;
    M_AXIS_DOUT_0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_DOUT_0_tvalid : out STD_LOGIC
  );
  end component proc_sys;
begin
proc_sys_i: component proc_sys
     port map (
      M_AXIS_DOUT_0_tdata(31 downto 0) => M_AXIS_DOUT_0_tdata(31 downto 0),
      M_AXIS_DOUT_0_tvalid => M_AXIS_DOUT_0_tvalid,
      S_AXIS_A_0_tdata(31 downto 0) => S_AXIS_A_0_tdata(31 downto 0),
      S_AXIS_A_0_tvalid => S_AXIS_A_0_tvalid,
      S_AXIS_B_0_tdata(31 downto 0) => S_AXIS_B_0_tdata(31 downto 0),
      S_AXIS_B_0_tvalid => S_AXIS_B_0_tvalid,
      aclk_0 => aclk_0
    );
end STRUCTURE;
