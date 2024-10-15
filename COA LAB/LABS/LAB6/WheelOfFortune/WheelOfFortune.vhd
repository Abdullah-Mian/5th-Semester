
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity WheelOfFortune is
    port (
        clk    : in  std_logic;
        led   : out std_logic_vector(3 downto 0);
        opcode : in  std_logic_vector(2 downto 0);
		  ssd0,ssd1,ssd2,ssd3 : out std_logic_vector(6 downto 0);
		  reset : in std_logic
    );
end WheelOfFortune;

architecture behv of WheelOfFortune is
    signal count: std_logic_vector(31 downto 0) :=  X"00000000";--(others => '0'); -- Changed to unsigned type
    signal fcount: std_logic_vector(15 downto 0) :=  X"0000";
	 signal countSpeed : std_logic_vector(3 downto 0);
	 signal sclk,fclk: std_logic;
	 signal ledout: std_logic_vector(3 downto 0):= "0001";
begin
   process (clk, reset)
		begin
			if (reset = '1') then
				count <= X"00000000"; -- Reset the counter to all zeros
				--ledout<="0001";
			elsif (clk'event and clk = '1') then
				count <= count + 1; -- Increment the counter
			end if;
	end process;
	
	fclk=count(25);
	
	
	fcount(11 downto 8)-------> SSD2
	fcount(7 downto 4)-------> SSD1
	fcount(3 downto 0)-------> SSD0
	
	u3: ssd port map
	(
		hexin => fcount(15 downto 12), -------> SSD3 
		hexout => ssd3	
	);
	u2: ssd port map.
	(
		hexin => fcount(11 downto 8), -------> SSD3 
		hexout => ssd2	
	);
	
	
	
	
	
	
	ssdounter: process (fclk)
		begin
			if (fclk'event and fclk = '1') then
				fcount <= fcount + 1; -- Increment the counter
			end if;
	end process;
	
	
	process (sclk) is
	begin
		if sclk'event and sclk='1'then
		--ledout <= ledout NAND LEDout;

		ledout <= ledout(2 downto 0) & ledout(3);
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
	
	

end behv;
