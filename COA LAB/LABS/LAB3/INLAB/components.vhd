library ieee; 

use ieee.std_logic_1164.all;

package components is 
	component HalfAdder is 
		port (
        a : in  STD_LOGIC;
        b : out STD_LOGIC;
		  s : out STD_LOGIC;
		  c : out STD_LOGIC
    );
end component;

component FullAdder is
    port (
        a : in  STD_LOGIC;
        b : out STD_LOGIC;
		  c : out STD_LOGIC;
		  sum : out STD_LOGIC;
		  carry : out STD_LOGIC
    );
end component;
component FourBitAdder is
    port (
        a        : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b        : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        sum      : out STD_LOGIC_VECTOR(3 DOWNTO 0);
        carryOut : out STD_LOGIC
    );
end component;

component FourBitAND is
    port (
        a        : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b        : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
        r      : out STD_LOGIC_VECTOR(3 DOWNTO 0);
        
    );
end component;

end components;