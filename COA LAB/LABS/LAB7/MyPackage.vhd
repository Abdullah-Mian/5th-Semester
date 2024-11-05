	library ieee;
	use ieee.std_logic_1164.all;

	package MyPackage is
		 component sevenSegement is
        port (
            bininput : in  std_logic_vector(3 downto 0);
            cathodes : out std_logic_vector(6 downto 0)
        );
    end component;
	end package MyPackage;