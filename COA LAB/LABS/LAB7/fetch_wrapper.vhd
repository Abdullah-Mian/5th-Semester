-- Library declarations
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Single library for arithmetic and conversion
use work.MyPackage.all;
--use ieee.std_logic_unsigned.all;

-- Entity Declaration
entity fetch_wrapper is
    port (
	 		  SevenSegement0,SevenSegement1,SevenSegement2,SevenSegement3,SevenSegement4,SevenSegement5,SevenSegement6,SevenSegement7: out STD_LOGIC_VECTOR (6 downto 0);
			  leds : std_logic_VECTOR(3 downto 0);
			  clk,reset, branch_des,jump_des : in std_logic); end fetch_wrapper;
			  
architecture bhv of fetch_wrapper is
signal SevenSegementWire,top_pcout : std_LOGIC_VECTOR(31 downto 0);
begin
	f1: fetch port map (
        PC_out             => top_pcout,
        instruction        => Sevensegmentwire,
        branch_addr			=> X"3",
		  jump_addr 			=> X"9",
        branch_decision		=> branch_des,
		  jump_decision		=> jump_des, 
		  reset					=> reset, 
		  clock 					=> clk );

		leds <= top_pcout(3 downto 0);

   u7: sevenSegement port map (
        bininput => SevenSegementWire(31 downto 28),
        cathodes => SevenSegement7    
    );
    u6: sevenSegement port map (
        bininput => SevenSegementWire(27 downto 24),
        cathodes => SevenSegement6    
    );
    u5: sevenSegement port map (
        bininput => SevenSegementWire(23 downto 20),
        cathodes => SevenSegement5    
    );
    u4: sevenSegement port map (
        bininput => SevenSegementWire(19 downto 16),
        cathodes => SevenSegement4    
    );
	  u3: sevenSegement port map (
        bininput => SevenSegementWire(15 downto 12),
        cathodes => SevenSegement3  
    );
    u2: sevenSegement port map (
        bininput => SevenSegementWire(11 downto 8),
        cathodes => SevenSegement2    
    );
    u1: sevenSegement port map (
        bininput => SevenSegementWire(7 downto 4),
        cathodes => SevenSegement1    
    );
    u0: sevenSegement port map (
        bininput => SevenSegementWire(3 downto 0),
        cathodes => SevenSegement0    
    );




end bhv;

			  
