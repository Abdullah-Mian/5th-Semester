LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Mypackage.all;

entity LAB is 
port(
	operation 	 			: in std_logic;
	displaySwitch 			: in std_logic_vector(1 downto 0);
	clock			  			: in  std_logic;
	SevenSegement0,SevenSegement1,SevenSegement2,SevenSegement3  : out std_logic_vector(6 downto 0);
	Operationleds 			: out std_logic_vector(1 downto 0)
	--result 	 	  : out std_logic
);

end LAB;
architecture behav of LAB is
type matrix is array( 0 to 1) of std_logic_vector(15 downto 0);

	shared variable twoCrosTwoMatirx : matrix := (
		X"0123", --0
		X"1423"	--1
	);
	
	shared variable index1 : integer  := 0;
	shared variable index2 : integer  := 1;
	
--	shared variable twoCrosTwoMatirx1 : std_logic_vector(15 downto 0) := X"0123";
--	shared variable twoCrosTwoMatirx2 : std_logic_vector(15 downto 0) := X"0524";
	
	SIGNAL 	result 			: std_logic_vector(15 downto 0);
	signal sevenSegmentWire : std_logic_vector(6 downto 0);
	signal matrixx			: std_logic_vector(15 downto 0);
	
begin

process (clock)
begin
	if(clock'event and clock = '0') then
	--wait until falling_edge(clock);
--		if (operation = '0') then
--			result <= twoCrosTwoMatirx1 or twoCrosTwoMatirx2;
--		elsif (operation = '1') then
--			result <= twoCrosTwoMatirx1 and twocrosTwoMatirx2;
--		end if;
		
		
		if (operation = '0') then
			result <= twoCrosTwoMatirx(index1) or twoCrosTwoMatirx(index2);
			operationleds(0) <= '1';
			operationleds(1) <= '0';
		elsif (operation = '1') then
			result <= twoCrosTwoMatirx(index1) and twocrosTwoMatirx(index2);
			operationleds(0) <= '0';
			operationleds(1) <= '1';
			
		end if;
	end if;
	
		index1 := index1 + 1;
		index2 := index2 + 1;
end process;

--	with displaySwitch select 
--	matrix <= twoCrosTwoMatirx1 when "00",
--	twoCrosTwoMatirx2 			  when "01",
--	result 							  when "10",
--	X"0000" when others;

	with displaySwitch select 
	matrixx <= twoCrosTwoMatirx(index1) when "00",
	twoCrosTwoMatirx(index2) 			  when "01",
	result 							  when "10",
	X"0000" when others;
	
	
   
    u3: sevenSegementDisp port map (
        bininput => matrixx(15 downto 12),
        cat => SevenSegement3
    );
    u2: sevenSegementDisp port map (
        bininput => matrixx(11 downto 8),
        cat => SevenSegement2
    );
    u1: sevenSegementDisp port map (
        bininput => matrixx(7 downto 4),
        cat => SevenSegement1
    );
    u0: sevenSegementDisp port map (
        bininput => matrixx(3 downto 0),
        cat => SevenSegement0
    );
	
	
end behav;