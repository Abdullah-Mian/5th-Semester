LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use work.components.all;

entity ALU is
    port (
        x : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        y : in STD_LOGIC_VECTOR(3 DOWNTO 0);
		  result : out STD_LOGIC_VECTOR(3 DOWNTO 0);
		  carry: out std_logic;
		  opcode : in STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
end ALU;

architecture struct of ALU is 
	Signal add,andd : out STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal c out std_logic;
begin 
	U1: FourBitAdder Port MAP(
	a => x,
	b => y,
	sum => add,
	carryOut => c;
	)
	else when opcode = "001"
	U1: FourBitAND PORT MAP(
	a => x,
	b => y,
	r => andd;
		
	)
	
	
	when opcode = "000"
	y <= add;
	carry <= c;
	else when opcode = "001"
	y <= andd;
	else y <= "0000";
	
end ALU;