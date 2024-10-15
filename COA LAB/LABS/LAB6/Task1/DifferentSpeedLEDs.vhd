library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity DifferentSpeedLEDs is
    port (
        clk    : in  std_logic;
        led   : out std_logic_vector(3 downto 0);
        opcode : in  std_logic_vector(2 downto 0);
		  reset : in std_logic
    );
end DifferentSpeedLEDs;

architecture behv of DifferentSpeedLEDs is
    signal count: std_logic_vector(31 downto 0) :=  X"00000000";--(others => '0'); -- Changed to unsigned type
    signal countSpeed : std_logic_vector(3 downto 0);
	 signal sclk: std_logic;
	 signal ledout: std_logic_vector(3 downto 0);
begin
   process (clk, reset)
		begin
			if (reset = '1') then
				count <= X"00000000"; -- Reset the counter to all zeros
			elsif (clk'event and clk = '1') then
				count <= count + 1; -- Increment the counter
			end if;
	end process;

	
	process (sclk) is
	begin
		if sclk'event and sclk='1' then
		ledout <= ledout NAND LEDout;
--			ledout(0) <= not ledout(0);
--			ledout(1) <= not ledout(1);
--			ledout(2) <= not ledout(2);
--			ledout(3) <= not ledout(3);
		
		end if;
	
	end process;
	led <= ledout;


	process(opcode)
		begin
			case opcode is
				when "000" =>
					sclk <= count(22);
				when "010" =>
					sclk <= count(25);
				when "100" =>
					sclk <= count(2);
				when "001" =>
					sclk <= count(15);
				when others =>
					sclk <=count(22);
			end case;
	end process;
	
	

    -- Assign different speed signals from count
--    countSpeed(0) <= count(20);
--    countSpeed(1) <= count(26);
--    countSpeed(2) <= count(15);
--    countSpeed(3) <= count(2);

    -- Select sclk based on opcode value
--    with opcode select
--        sclk <= countSpeed(0) when "000",
--                countSpeed(1) when "100",
--                countSpeed(2) when "010",
--                countSpeed(3) when "001",
--                '0'            when others; -- Default case
end behv;
