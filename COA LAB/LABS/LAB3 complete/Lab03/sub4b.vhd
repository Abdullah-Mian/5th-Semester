library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use work.my_components.all;

entity sub4b is
port(
	a: in std_logic_vector(3 downto 0);
	b: in std_logic_vector(3 downto 0);
	d: out std_logic_vector(3 downto 0);
   boutt: out std_logic	);
end sub4b;

architecture struct of sub4b is

component FS is
    Port (
        a : in  STD_LOGIC;       -- Minuend
        b : in  STD_LOGIC;       -- Subtrahend
        bin : in  STD_LOGIC;     -- Borrow input
        d : out  STD_LOGIC;      -- Difference output
        bout : out  STD_LOGIC    -- Borrow output
    );
end component;

component HS is
    Port (
        a : in  STD_LOGIC;       -- Minuend
        b : in  STD_LOGIC;       -- Subtrahend
        d : out  STD_LOGIC;      -- Difference output
        bout : out  STD_LOGIC    -- Borrow output
    );
end component;

signal bout : std_logic_vector(2 downto 0);

begin

UA1:HS port map(
	a => a(0),
	b => b(0),
	d => d(0),
	bout => bout(0) );

UA2:FS port map(
	a => a(1),
	b => b(1),
	bin => bout(0),
	d => d(1),
	bout => bout(1) );

UA3:FS port map(
	a => a(2),
	b => b(2),
	bin => bout(1),
	d => d(2),
	bout => bout(2) );
	
UA4:FS port map(
	a => a(3),
	b => b(3),
	bin => bout(2),
	d => d(3),
	bout => boutt );
	

end struct;