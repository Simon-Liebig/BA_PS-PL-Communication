--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
--Date        : Tue Jan 21 11:57:21 2020
--Host        : simon-ThinkPad-X250 running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_UYSKKA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_UYSKKA;

architecture STRUCTURE of s00_couplers_imp_UYSKKA is
  component design_1_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component design_1_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_pc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end design_1_ps7_0_axi_periph_0;

architecture STRUCTURE of design_1_ps7_0_axi_periph_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal s00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_ps7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_ps7_0_axi_periph_AWVALID;
  M00_AXI_bready <= s00_couplers_to_ps7_0_axi_periph_BREADY;
  M00_AXI_rready <= s00_couplers_to_ps7_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_ps7_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  ps7_0_axi_periph_ACLK_net <= M00_ACLK;
  ps7_0_axi_periph_ARESETN_net <= M00_ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_ps7_0_axi_periph_ARREADY <= M00_AXI_arready;
  s00_couplers_to_ps7_0_axi_periph_AWREADY <= M00_AXI_awready;
  s00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_ps7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_ps7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_ps7_0_axi_periph_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_UYSKKA
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => s00_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => s00_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => s00_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => s00_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => s00_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wvalid => s00_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    JA4_5_N : out STD_LOGIC;
    JA4_5_P : out STD_LOGIC;
    JA6_7_N : out STD_LOGIC;
    JA6_7_P : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=10,numNonXlnxBlks=1,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_bram_cntlr_cnt=1,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_processing_system7_0_1 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component design_1_processing_system7_0_1;
  component design_1_fir_memo_top_0_0 is
  port (
    clk_in : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    JA6_7_N : out STD_LOGIC;
    JA6_7_P : out STD_LOGIC;
    JA4_5_N : out STD_LOGIC;
    JA4_5_P : out STD_LOGIC;
    conv_start_adc : out STD_LOGIC;
    hi_out : out STD_LOGIC;
    adc_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_dat_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_fir_memo_top_0_0;
  component design_1_axi_cdma_0_0 is
  port (
    m_axi_aclk : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    cdma_introut : out STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_axi_cdma_0_0;
  component design_1_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axi_bram_ctrl_0_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 12 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC
  );
  end component design_1_axi_smc_0;
  component design_1_rst_ps7_0_102M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_ps7_0_102M_0;
  component design_1_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_1_AXI_wlast : in STD_LOGIC;
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rlast : in STD_LOGIC;
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component design_1_system_ila_0_0;
  signal axi_bram_ctrl_0_bram_addr_a : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_bram_clk_a : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_en_a : STD_LOGIC;
  signal axi_bram_ctrl_0_bram_we_a : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_bram_wrdata_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_ARADDR : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_ARADDR : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_ARCACHE : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_ARCACHE : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_ARLEN : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_ARLEN : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_ARPROT : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_ARPROT : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_ARREADY : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_ARREADY : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_ARSIZE : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_ARSIZE : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_ARVALID : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_ARVALID : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_AWADDR : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_AWADDR : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_AWCACHE : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_AWCACHE : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_AWLEN : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_AWLEN : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_AWPROT : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_AWPROT : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_AWREADY : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_AWREADY : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_AWSIZE : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_AWSIZE : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_AWVALID : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_AWVALID : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_BREADY : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_BREADY : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_BRESP : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_BRESP : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_BVALID : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_BVALID : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_RDATA : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_RDATA : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_RLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_RLAST : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_RLAST : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_RREADY : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_RREADY : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_RRESP : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_RRESP : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_RVALID : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_RVALID : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_WDATA : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_WDATA : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_WLAST : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_WLAST : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_WREADY : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_WREADY : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_WSTRB : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_WSTRB : signal is std.standard.true;
  signal axi_cdma_0_M_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_cdma_0_M_AXI_WVALID : signal is "axi_cdma_0_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID";
  attribute DONT_TOUCH of axi_cdma_0_M_AXI_WVALID : signal is std.standard.true;
  signal axi_cdma_0_cdma_introut : STD_LOGIC;
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARADDR : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARADDR";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARADDR : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARBURST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARBURST";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARBURST : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARCACHE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARCACHE";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARCACHE : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARLEN : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARLEN";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARLEN : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARLOCK : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARLOCK";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARLOCK : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARPROT : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARPROT";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARPROT : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARQOS : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARQOS";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARQOS : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARREADY";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARSIZE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARSIZE";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARSIZE : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 ARVALID";
  attribute DONT_TOUCH of axi_smc_M00_AXI_ARVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWADDR : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWADDR";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWADDR : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWBURST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWBURST";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWBURST : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWCACHE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWCACHE";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWCACHE : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWLEN : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWLEN";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWLEN : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWLOCK : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWLOCK";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWLOCK : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWPROT : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWPROT";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWPROT : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWQOS : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWQOS";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWQOS : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWREADY";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWSIZE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWSIZE";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWSIZE : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 AWVALID";
  attribute DONT_TOUCH of axi_smc_M00_AXI_AWVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BREADY";
  attribute DONT_TOUCH of axi_smc_M00_AXI_BREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BRESP : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BRESP";
  attribute DONT_TOUCH of axi_smc_M00_AXI_BRESP : signal is std.standard.true;
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 BVALID";
  attribute DONT_TOUCH of axi_smc_M00_AXI_BVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RDATA : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RDATA";
  attribute DONT_TOUCH of axi_smc_M00_AXI_RDATA : signal is std.standard.true;
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RLAST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RLAST";
  attribute DONT_TOUCH of axi_smc_M00_AXI_RLAST : signal is std.standard.true;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RREADY";
  attribute DONT_TOUCH of axi_smc_M00_AXI_RREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RRESP : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RRESP";
  attribute DONT_TOUCH of axi_smc_M00_AXI_RRESP : signal is std.standard.true;
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 RVALID";
  attribute DONT_TOUCH of axi_smc_M00_AXI_RVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WDATA : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WDATA";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WDATA : signal is std.standard.true;
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WLAST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WLAST";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WLAST : signal is std.standard.true;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WREADY";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WSTRB : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WSTRB";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WSTRB : signal is std.standard.true;
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI3 WVALID";
  attribute DONT_TOUCH of axi_smc_M00_AXI_WVALID : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARADDR : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARADDR : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARBURST : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARBURST : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARCACHE : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARCACHE : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARLEN : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARLEN : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARLOCK : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARLOCK : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARPROT : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARPROT : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARQOS : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARQOS : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARREADY : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARREADY : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARSIZE : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARSIZE : signal is std.standard.true;
  signal axi_smc_M01_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_ARVALID : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID";
  attribute DONT_TOUCH of axi_smc_M01_AXI_ARVALID : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWADDR : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWADDR : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWBURST : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWBURST : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWCACHE : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWCACHE : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWLEN : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWLEN : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWLOCK : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWLOCK : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWPROT : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWPROT : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWQOS : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWQOS : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWREADY : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWREADY : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWSIZE : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWSIZE : signal is std.standard.true;
  signal axi_smc_M01_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_AWVALID : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID";
  attribute DONT_TOUCH of axi_smc_M01_AXI_AWVALID : signal is std.standard.true;
  signal axi_smc_M01_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_BREADY : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY";
  attribute DONT_TOUCH of axi_smc_M01_AXI_BREADY : signal is std.standard.true;
  signal axi_smc_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_BRESP : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP";
  attribute DONT_TOUCH of axi_smc_M01_AXI_BRESP : signal is std.standard.true;
  signal axi_smc_M01_AXI_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_BVALID : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID";
  attribute DONT_TOUCH of axi_smc_M01_AXI_BVALID : signal is std.standard.true;
  signal axi_smc_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_RDATA : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA";
  attribute DONT_TOUCH of axi_smc_M01_AXI_RDATA : signal is std.standard.true;
  signal axi_smc_M01_AXI_RLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_RLAST : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST";
  attribute DONT_TOUCH of axi_smc_M01_AXI_RLAST : signal is std.standard.true;
  signal axi_smc_M01_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_RREADY : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY";
  attribute DONT_TOUCH of axi_smc_M01_AXI_RREADY : signal is std.standard.true;
  signal axi_smc_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_RRESP : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP";
  attribute DONT_TOUCH of axi_smc_M01_AXI_RRESP : signal is std.standard.true;
  signal axi_smc_M01_AXI_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_RVALID : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID";
  attribute DONT_TOUCH of axi_smc_M01_AXI_RVALID : signal is std.standard.true;
  signal axi_smc_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_WDATA : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA";
  attribute DONT_TOUCH of axi_smc_M01_AXI_WDATA : signal is std.standard.true;
  signal axi_smc_M01_AXI_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_WLAST : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST";
  attribute DONT_TOUCH of axi_smc_M01_AXI_WLAST : signal is std.standard.true;
  signal axi_smc_M01_AXI_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_WREADY : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY";
  attribute DONT_TOUCH of axi_smc_M01_AXI_WREADY : signal is std.standard.true;
  signal axi_smc_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_WSTRB : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB";
  attribute DONT_TOUCH of axi_smc_M01_AXI_WSTRB : signal is std.standard.true;
  signal axi_smc_M01_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M01_AXI_WVALID : signal is "axi_smc_M01_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID";
  attribute DONT_TOUCH of axi_smc_M01_AXI_WVALID : signal is std.standard.true;
  signal fir_memo_top_0_JA4_5_N : STD_LOGIC;
  signal fir_memo_top_0_JA4_5_P : STD_LOGIC;
  signal fir_memo_top_0_JA6_7_N : STD_LOGIC;
  signal fir_memo_top_0_JA6_7_P : STD_LOGIC;
  signal fir_memo_top_0_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_ARADDR : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_ARADDR : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_ARREADY : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_ARREADY : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_ARVALID : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_ARVALID : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_AWADDR : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_AWADDR : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_AWREADY : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_AWREADY : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_AWVALID : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_AWVALID : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_BREADY : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_BREADY : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_BRESP : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_BRESP : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_BVALID : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_BVALID : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_RDATA : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_RDATA : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_RREADY : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_RREADY : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_RRESP : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_RRESP : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_RVALID : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_RVALID : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_WDATA : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_WDATA : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_WREADY : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_WREADY : signal is std.standard.true;
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of ps7_0_axi_periph_M00_AXI_WVALID : signal is "ps7_0_axi_periph_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID";
  attribute DONT_TOUCH of ps7_0_axi_periph_M00_AXI_WVALID : signal is std.standard.true;
  signal rst_ps7_0_102M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_102M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_axi_bram_ctrl_0_bram_rst_a_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_memo_top_0_conv_start_adc_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_memo_top_0_hi_out_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_memo_top_0_dac_dat_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_ps7_0_102M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_102M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_102M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  JA4_5_N <= fir_memo_top_0_JA4_5_N;
  JA4_5_P <= fir_memo_top_0_JA4_5_P;
  JA6_7_N <= fir_memo_top_0_JA6_7_N;
  JA6_7_P <= fir_memo_top_0_JA6_7_P;
axi_bram_ctrl_0: component design_1_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_bram_addr_a(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_bram_clk_a,
      bram_en_a => axi_bram_ctrl_0_bram_en_a,
      bram_rddata_a(31 downto 0) => fir_memo_top_0_douta(31 downto 0),
      bram_rst_a => NLW_axi_bram_ctrl_0_bram_rst_a_UNCONNECTED,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_bram_wrdata_a(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(12 downto 0) => axi_smc_M01_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => axi_smc_M01_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_smc_M01_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps7_0_102M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => axi_smc_M01_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_smc_M01_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_smc_M01_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_smc_M01_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_smc_M01_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_smc_M01_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_smc_M01_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => axi_smc_M01_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_smc_M01_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_smc_M01_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_smc_M01_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_smc_M01_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_smc_M01_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_smc_M01_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_smc_M01_AXI_AWVALID,
      s_axi_bready => axi_smc_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      s_axi_rlast => axi_smc_M01_AXI_RLAST,
      s_axi_rready => axi_smc_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_smc_M01_AXI_WLAST,
      s_axi_wready => axi_smc_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M01_AXI_WVALID
    );
axi_cdma_0: component design_1_axi_cdma_0_0
     port map (
      cdma_introut => axi_cdma_0_cdma_introut,
      m_axi_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_araddr(31 downto 0) => axi_cdma_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_cdma_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_cdma_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_cdma_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arprot(2 downto 0) => axi_cdma_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_cdma_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => axi_cdma_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_cdma_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_cdma_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_cdma_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_cdma_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_cdma_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awprot(2 downto 0) => axi_cdma_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_cdma_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => axi_cdma_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_cdma_0_M_AXI_AWVALID,
      m_axi_bready => axi_cdma_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_cdma_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_cdma_0_M_AXI_BVALID,
      m_axi_rdata(63 downto 0) => axi_cdma_0_M_AXI_RDATA(63 downto 0),
      m_axi_rlast => axi_cdma_0_M_AXI_RLAST,
      m_axi_rready => axi_cdma_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_cdma_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_cdma_0_M_AXI_RVALID,
      m_axi_wdata(63 downto 0) => axi_cdma_0_M_AXI_WDATA(63 downto 0),
      m_axi_wlast => axi_cdma_0_M_AXI_WLAST,
      m_axi_wready => axi_cdma_0_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => axi_cdma_0_M_AXI_WSTRB(7 downto 0),
      m_axi_wvalid => axi_cdma_0_M_AXI_WVALID,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(5 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(5 downto 0),
      s_axi_lite_aresetn => rst_ps7_0_102M_peripheral_aresetn(0),
      s_axi_lite_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      s_axi_lite_awaddr(5 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(5 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      s_axi_lite_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph_M00_AXI_WVALID
    );
axi_smc: component design_1_axi_smc_0
     port map (
      M00_AXI_araddr(31 downto 0) => axi_smc_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_smc_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_smc_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_smc_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      M01_AXI_araddr(12 downto 0) => axi_smc_M01_AXI_ARADDR(12 downto 0),
      M01_AXI_arburst(1 downto 0) => axi_smc_M01_AXI_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => axi_smc_M01_AXI_ARCACHE(3 downto 0),
      M01_AXI_arlen(7 downto 0) => axi_smc_M01_AXI_ARLEN(7 downto 0),
      M01_AXI_arlock(0) => axi_smc_M01_AXI_ARLOCK(0),
      M01_AXI_arprot(2 downto 0) => axi_smc_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arqos(3 downto 0) => axi_smc_M01_AXI_ARQOS(3 downto 0),
      M01_AXI_arready => axi_smc_M01_AXI_ARREADY,
      M01_AXI_arsize(2 downto 0) => axi_smc_M01_AXI_ARSIZE(2 downto 0),
      M01_AXI_arvalid => axi_smc_M01_AXI_ARVALID,
      M01_AXI_awaddr(12 downto 0) => axi_smc_M01_AXI_AWADDR(12 downto 0),
      M01_AXI_awburst(1 downto 0) => axi_smc_M01_AXI_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => axi_smc_M01_AXI_AWCACHE(3 downto 0),
      M01_AXI_awlen(7 downto 0) => axi_smc_M01_AXI_AWLEN(7 downto 0),
      M01_AXI_awlock(0) => axi_smc_M01_AXI_AWLOCK(0),
      M01_AXI_awprot(2 downto 0) => axi_smc_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awqos(3 downto 0) => axi_smc_M01_AXI_AWQOS(3 downto 0),
      M01_AXI_awready => axi_smc_M01_AXI_AWREADY,
      M01_AXI_awsize(2 downto 0) => axi_smc_M01_AXI_AWSIZE(2 downto 0),
      M01_AXI_awvalid => axi_smc_M01_AXI_AWVALID,
      M01_AXI_bready => axi_smc_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_smc_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rlast => axi_smc_M01_AXI_RLAST,
      M01_AXI_rready => axi_smc_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_smc_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wlast => axi_smc_M01_AXI_WLAST,
      M01_AXI_wready => axi_smc_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_smc_M01_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => axi_cdma_0_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_cdma_0_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_cdma_0_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_cdma_0_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => axi_cdma_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => axi_cdma_0_M_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_cdma_0_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_cdma_0_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_cdma_0_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_cdma_0_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_cdma_0_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_cdma_0_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => '0',
      S00_AXI_awprot(2 downto 0) => axi_cdma_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => B"0000",
      S00_AXI_awready => axi_cdma_0_M_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_cdma_0_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_cdma_0_M_AXI_AWVALID,
      S00_AXI_bready => axi_cdma_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_cdma_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_cdma_0_M_AXI_BVALID,
      S00_AXI_rdata(63 downto 0) => axi_cdma_0_M_AXI_RDATA(63 downto 0),
      S00_AXI_rlast => axi_cdma_0_M_AXI_RLAST,
      S00_AXI_rready => axi_cdma_0_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_cdma_0_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_cdma_0_M_AXI_RVALID,
      S00_AXI_wdata(63 downto 0) => axi_cdma_0_M_AXI_WDATA(63 downto 0),
      S00_AXI_wlast => axi_cdma_0_M_AXI_WLAST,
      S00_AXI_wready => axi_cdma_0_M_AXI_WREADY,
      S00_AXI_wstrb(7 downto 0) => axi_cdma_0_M_AXI_WSTRB(7 downto 0),
      S00_AXI_wvalid => axi_cdma_0_M_AXI_WVALID,
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => rst_ps7_0_102M_peripheral_aresetn(0)
    );
fir_memo_top_0: component design_1_fir_memo_top_0_0
     port map (
      JA4_5_N => fir_memo_top_0_JA4_5_N,
      JA4_5_P => fir_memo_top_0_JA4_5_P,
      JA6_7_N => fir_memo_top_0_JA6_7_N,
      JA6_7_P => fir_memo_top_0_JA6_7_P,
      adc_data(15 downto 0) => B"0000000000000000",
      addra(10 downto 0) => xlslice_0_Dout(10 downto 0),
      clk_in => axi_bram_ctrl_0_bram_clk_a,
      conv_start_adc => NLW_fir_memo_top_0_conv_start_adc_UNCONNECTED,
      dac_dat_out(15 downto 0) => NLW_fir_memo_top_0_dac_dat_out_UNCONNECTED(15 downto 0),
      dina(31 downto 0) => axi_bram_ctrl_0_bram_wrdata_a(31 downto 0),
      douta(31 downto 0) => fir_memo_top_0_douta(31 downto 0),
      ena => axi_bram_ctrl_0_bram_en_a,
      hi_out => NLW_fir_memo_top_0_hi_out_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_bram_we_a(3 downto 0)
    );
processing_system7_0: component design_1_processing_system7_0_1
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      IRQ_F2P(0) => xlconcat_0_dout(0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_smc_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => axi_smc_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_smc_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_smc_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_smc_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_smc_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_smc_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => axi_smc_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_smc_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => axi_smc_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => axi_smc_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_smc_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_smc_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => axi_smc_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_smc_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_smc_M00_AXI_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.design_1_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_102M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_102M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_102M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
rst_ps7_0_102M: component design_1_rst_ps7_0_102M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_102M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_ps7_0_102M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_102M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_102M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_102M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
system_ila_0: component design_1_system_ila_0_0
     port map (
      SLOT_0_AXI_araddr(31 downto 0) => axi_cdma_0_M_AXI_ARADDR(31 downto 0),
      SLOT_0_AXI_arcache(3 downto 0) => axi_cdma_0_M_AXI_ARCACHE(3 downto 0),
      SLOT_0_AXI_arlen(7 downto 0) => axi_cdma_0_M_AXI_ARLEN(7 downto 0),
      SLOT_0_AXI_arprot(2 downto 0) => axi_cdma_0_M_AXI_ARPROT(2 downto 0),
      SLOT_0_AXI_arready => axi_cdma_0_M_AXI_ARREADY,
      SLOT_0_AXI_arsize(2 downto 0) => axi_cdma_0_M_AXI_ARSIZE(2 downto 0),
      SLOT_0_AXI_arvalid => axi_cdma_0_M_AXI_ARVALID,
      SLOT_0_AXI_awaddr(31 downto 0) => axi_cdma_0_M_AXI_AWADDR(31 downto 0),
      SLOT_0_AXI_awcache(3 downto 0) => axi_cdma_0_M_AXI_AWCACHE(3 downto 0),
      SLOT_0_AXI_awlen(7 downto 0) => axi_cdma_0_M_AXI_AWLEN(7 downto 0),
      SLOT_0_AXI_awprot(2 downto 0) => axi_cdma_0_M_AXI_AWPROT(2 downto 0),
      SLOT_0_AXI_awready => axi_cdma_0_M_AXI_AWREADY,
      SLOT_0_AXI_awsize(2 downto 0) => axi_cdma_0_M_AXI_AWSIZE(2 downto 0),
      SLOT_0_AXI_awvalid => axi_cdma_0_M_AXI_AWVALID,
      SLOT_0_AXI_bready => axi_cdma_0_M_AXI_BREADY,
      SLOT_0_AXI_bresp(1 downto 0) => axi_cdma_0_M_AXI_BRESP(1 downto 0),
      SLOT_0_AXI_bvalid => axi_cdma_0_M_AXI_BVALID,
      SLOT_0_AXI_rdata(63 downto 0) => axi_cdma_0_M_AXI_RDATA(63 downto 0),
      SLOT_0_AXI_rlast => axi_cdma_0_M_AXI_RLAST,
      SLOT_0_AXI_rready => axi_cdma_0_M_AXI_RREADY,
      SLOT_0_AXI_rresp(1 downto 0) => axi_cdma_0_M_AXI_RRESP(1 downto 0),
      SLOT_0_AXI_rvalid => axi_cdma_0_M_AXI_RVALID,
      SLOT_0_AXI_wdata(63 downto 0) => axi_cdma_0_M_AXI_WDATA(63 downto 0),
      SLOT_0_AXI_wlast => axi_cdma_0_M_AXI_WLAST,
      SLOT_0_AXI_wready => axi_cdma_0_M_AXI_WREADY,
      SLOT_0_AXI_wstrb(7 downto 0) => axi_cdma_0_M_AXI_WSTRB(7 downto 0),
      SLOT_0_AXI_wvalid => axi_cdma_0_M_AXI_WVALID,
      SLOT_1_AXI_araddr(31 downto 0) => axi_smc_M00_AXI_ARADDR(31 downto 0),
      SLOT_1_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      SLOT_1_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      SLOT_1_AXI_arlen(3 downto 0) => axi_smc_M00_AXI_ARLEN(3 downto 0),
      SLOT_1_AXI_arlock(1 downto 0) => axi_smc_M00_AXI_ARLOCK(1 downto 0),
      SLOT_1_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      SLOT_1_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      SLOT_1_AXI_arready => axi_smc_M00_AXI_ARREADY,
      SLOT_1_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      SLOT_1_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      SLOT_1_AXI_awaddr(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      SLOT_1_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      SLOT_1_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      SLOT_1_AXI_awlen(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      SLOT_1_AXI_awlock(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      SLOT_1_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      SLOT_1_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      SLOT_1_AXI_awready => axi_smc_M00_AXI_AWREADY,
      SLOT_1_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      SLOT_1_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      SLOT_1_AXI_bready => axi_smc_M00_AXI_BREADY,
      SLOT_1_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      SLOT_1_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      SLOT_1_AXI_rdata(63 downto 0) => axi_smc_M00_AXI_RDATA(63 downto 0),
      SLOT_1_AXI_rlast => axi_smc_M00_AXI_RLAST,
      SLOT_1_AXI_rready => axi_smc_M00_AXI_RREADY,
      SLOT_1_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      SLOT_1_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      SLOT_1_AXI_wdata(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      SLOT_1_AXI_wlast => axi_smc_M00_AXI_WLAST,
      SLOT_1_AXI_wready => axi_smc_M00_AXI_WREADY,
      SLOT_1_AXI_wstrb(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      SLOT_1_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      SLOT_2_AXI_araddr(12 downto 0) => axi_smc_M01_AXI_ARADDR(12 downto 0),
      SLOT_2_AXI_arburst(1 downto 0) => axi_smc_M01_AXI_ARBURST(1 downto 0),
      SLOT_2_AXI_arcache(3 downto 0) => axi_smc_M01_AXI_ARCACHE(3 downto 0),
      SLOT_2_AXI_arlen(7 downto 0) => axi_smc_M01_AXI_ARLEN(7 downto 0),
      SLOT_2_AXI_arlock(0) => axi_smc_M01_AXI_ARLOCK(0),
      SLOT_2_AXI_arprot(2 downto 0) => axi_smc_M01_AXI_ARPROT(2 downto 0),
      SLOT_2_AXI_arqos(3 downto 0) => axi_smc_M01_AXI_ARQOS(3 downto 0),
      SLOT_2_AXI_arready => axi_smc_M01_AXI_ARREADY,
      SLOT_2_AXI_arsize(2 downto 0) => axi_smc_M01_AXI_ARSIZE(2 downto 0),
      SLOT_2_AXI_arvalid => axi_smc_M01_AXI_ARVALID,
      SLOT_2_AXI_awaddr(12 downto 0) => axi_smc_M01_AXI_AWADDR(12 downto 0),
      SLOT_2_AXI_awburst(1 downto 0) => axi_smc_M01_AXI_AWBURST(1 downto 0),
      SLOT_2_AXI_awcache(3 downto 0) => axi_smc_M01_AXI_AWCACHE(3 downto 0),
      SLOT_2_AXI_awlen(7 downto 0) => axi_smc_M01_AXI_AWLEN(7 downto 0),
      SLOT_2_AXI_awlock(0) => axi_smc_M01_AXI_AWLOCK(0),
      SLOT_2_AXI_awprot(2 downto 0) => axi_smc_M01_AXI_AWPROT(2 downto 0),
      SLOT_2_AXI_awqos(3 downto 0) => axi_smc_M01_AXI_AWQOS(3 downto 0),
      SLOT_2_AXI_awready => axi_smc_M01_AXI_AWREADY,
      SLOT_2_AXI_awsize(2 downto 0) => axi_smc_M01_AXI_AWSIZE(2 downto 0),
      SLOT_2_AXI_awvalid => axi_smc_M01_AXI_AWVALID,
      SLOT_2_AXI_bready => axi_smc_M01_AXI_BREADY,
      SLOT_2_AXI_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      SLOT_2_AXI_bvalid => axi_smc_M01_AXI_BVALID,
      SLOT_2_AXI_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      SLOT_2_AXI_rlast => axi_smc_M01_AXI_RLAST,
      SLOT_2_AXI_rready => axi_smc_M01_AXI_RREADY,
      SLOT_2_AXI_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      SLOT_2_AXI_rvalid => axi_smc_M01_AXI_RVALID,
      SLOT_2_AXI_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      SLOT_2_AXI_wlast => axi_smc_M01_AXI_WLAST,
      SLOT_2_AXI_wready => axi_smc_M01_AXI_WREADY,
      SLOT_2_AXI_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      SLOT_2_AXI_wvalid => axi_smc_M01_AXI_WVALID,
      SLOT_3_AXI_araddr(5 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(5 downto 0),
      SLOT_3_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      SLOT_3_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      SLOT_3_AXI_awaddr(5 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(5 downto 0),
      SLOT_3_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      SLOT_3_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      SLOT_3_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      SLOT_3_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      SLOT_3_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      SLOT_3_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      SLOT_3_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      SLOT_3_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      SLOT_3_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      SLOT_3_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      SLOT_3_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      SLOT_3_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      clk => processing_system7_0_FCLK_CLK0,
      resetn => rst_ps7_0_102M_peripheral_aresetn(0)
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(0) => axi_cdma_0_cdma_introut,
      dout(0) => xlconcat_0_dout(0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(12 downto 0) => axi_bram_ctrl_0_bram_addr_a(12 downto 0),
      Dout(10 downto 0) => xlslice_0_Dout(10 downto 0)
    );
end STRUCTURE;
