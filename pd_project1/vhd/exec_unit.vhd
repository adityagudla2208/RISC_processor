library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

-- VHDL code for ALU of the MIPS Processor
entity exec_unit is
port(
 RegA,RegB: in std_logic_vector(15 downto 0); -- src1, src2
 Imm_data : in std_logic_vector(15 downto 0); -- src1, src2
 PC_In    : in std_logic_vector(15 downto 0); -- src1, src2
 PCplus1  : in std_logic_vector(15 downto 0);
 data_mem : in std_logic_vector(15 downto 0);
 PC_target_cntrl : in std_logic_vector(2 downto 0); -- 
 
 alu_control : in std_logic_vector(1 downto 0); -- function select
 alu1_result: out std_logic_vector(15 downto 0); -- ALU Output Result
 barrel_shifter_out : out std_logic_vector(15 downto 0); -- barrel shifter Output Result
 shift : in std_logic_vector(2 downto 0);
 Branch : in std_logic;
 zero: out std_logic;   -- Zero Flag
 carry : out std_logic -- Zero Flag
 );
end exec_unit;

architecture Behavioral of exec_unit is

component alu_with_barrel_shifter is
port(
 a,b : in std_logic_vector(15 downto 0); -- src1, src2
 alu_control : in std_logic_vector(1 downto 0); -- function select
 alu_result: out std_logic_vector(15 downto 0); -- ALU Output Result
 barrel_shifter_out : out std_logic_vector(15 downto 0); -- barrel shifter Output Result
 shift : in std_logic_vector(2 downto 0);
 zero: out std_logic;   -- Zero Flag
 carry : out std_logic -- Zero Flag
 );
end alu_with_barrel_shifter;


signal result: std_logic_vector(15 downto 0);
signal add_result: std_logic_vector(16 downto 0);
signal barrel_shifter_result : std_logic_vector(15 downto 0);

signal ALU2_RESULT : std_logic_vector(15 downto 0);
signal ALU2_op1 : std_logic_vector(15 downto 0);
signal ALU2_op2 : std_logic_vector(15 downto 0);

signal slr : std_logic;
signal BZ : std_logic;
signal M6_out : std_logic_vector(15 downto 0);
signal barrel_shifter_en : std_logic;

begin
process(ALU2_op1,ALU2_op2)
begin

ALU2_RESULT <= ALU2_op1 + ALU2_op2;

end process;


u0: entity work.Barrel_shifter 
        port map
       (
		  en => '1',
		   slr => '0',-- shift selection 
		  opr1 => b, -- src1
        shift => "0000000000000" & shift, -- src2
		  shifted_result=> barrel_shifter_result
        );

u0: entity work.alu_with_barrel_shifter 		  
port map(
 a => ALU1_op1,
 b => ALU2_op2,
 
 alu_control => alu_op, -- function select
 alu_result  => alu1_result, -- ALU Output Result
 barrel_shifter_out => barrel_shifter_out, -- barrel shifter Output Result
 shift => shift,
 zero  => zero, -- Zero Flag
 carry => carry -- Zero Flag
 );
end alu_with_barrel_shifter;


ALU1_op1 <= RegA when (ALU1OP1_SEL='0') else RegB;
ALU1_op2 <= Imm_data when (ALU1OP2_SEL='0') else RegB;

ALU2_op1 <= PC_In;
ALU2_op2 <= Imm_data ;--when (ALU1OP2_SEL='0') else RegB;

M6_out <= ALU2_RESULT when (BZ ='1') else PCplus1;

BZ <= branch and zero;


process(data_mem,PC_target_cntrl,PCplus1,RegB,ALU2_RESULT)
begin

 case PC_target_cntrl is
 when "000" =>

  PC_target_address <= PCplus1; -- add
 when "001" =>

  PC_target_address <= ALU2_RESULT; -- nand
 when "010" => 

  PC_target_address <= RegB; -- sub
 when "011" =>

  PC_target_address <= data_mem; -- or
 when "100" =>

  PC_target_address <= M6_out; 
 when "101" =>

  PC_target_address <= PCplus1; 
 when "110" =>

  PC_target_address <= PCplus1; 
 when "111" =>

  PC_target_address <= PCplus1;  
  
 when others => result <= "xxxx";

end process;


  
end Behavioral;
