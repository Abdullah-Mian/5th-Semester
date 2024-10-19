	library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;

	entity Slowclock is
		 port (
			  clk  : in  std_logic;
			  sclk : out std_logic
		 );
	end Slowclock;

	architecture behv of Slowclock is
		 signal count   : std_logic_vector(31 downto 0) := X"00000000";
	begin
		 process (clk)
		 begin
			  if (clk'event and clk = '1') then
					count <= count + 1; -- Corrected addition for unsigned type
			  end if;
		 end process;

		 sclk <= count(2); -- Output the 21st bit of count
	end behv;
