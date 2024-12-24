library ieee;
use ieee.std_logic_1164.all;

package Mypackage is 
	
	component sevenSegementDisp IS
    PORT (
        bininput : IN std_logic_vector(3 DOWNTO 0);  
        cat : OUT std_logic_vector(6 DOWNTO 0)  
    );
	end component;
	
end Mypackage ;