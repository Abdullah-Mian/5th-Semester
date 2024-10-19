library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity WheelOfFortune is
    port (
        clk    : in  std_logic;
        led    : out std_logic_vector(3 downto 0);
        opcode : in  std_logic_vector(2 downto 0);
        ssd0, ssd1, ssd2, ssd3 : out std_logic_vector(6 downto 0);
        reset  : in std_logic
    );
end WheelOfFortune;

architecture behv of WheelOfFortune is
    signal count   : std_logic_vector(31 downto 0) := X"00000000";
    signal fcount  : std_logic_vector(15 downto 0) := X"0000";
    signal countSpeed : std_logic_vector(3 downto 0);
    signal sclk, fclk : std_logic;
    signal ledout  : std_logic_vector(3 downto 0) := "0001";
    
    component sevenSegement is
        port (
            bininput : in  std_logic_vector(3 downto 0);
            cathodes : out std_logic_vector(6 downto 0)
        );
    end component;
    
begin
    process (clk, reset)
    begin
        if (reset = '1') then
            count <= X"00000000";
        elsif (clk'event and clk = '1') then
            count <= count + 1;
        end if;
    end process;
    
    fclk <= count(25);
    
    u3: sevenSegement port map (
        bininput => fcount(15 downto 12),
        cathodes => ssd3    
    );
    u2: sevenSegement port map (
        bininput => fcount(11 downto 8),
        cathodes => ssd2    
    );
    u1: sevenSegement port map (
        bininput => fcount(7 downto 4),
        cathodes => ssd1    
    );
    u0: sevenSegement port map (
        bininput => fcount(3 downto 0),
        cathodes => ssd0    
    );
	 
    --Fast Counter
    sevenSegementCounter: process (fclk)
    begin
        if (fclk'event and fclk = '1') then
            fcount <= fcount + 1;
        end if;
    end process;
	 
    --Slow Clock
    process (sclk) is
    begin
        if sclk'event and sclk='1' then
            ledout <= ledout(2 downto 0) & ledout(3);
        end if;
    end process;
    led <= ledout;
	 
    --different Speeds based on Opcode
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
                sclk <= count(22);
        end case;
    end process;
    
end behv;