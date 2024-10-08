library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package my_components is

component and_4 is port(
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector(3 downto 0);
c: out std_logic_vector(3 downto 0) );
end component;

component or_4 is port(
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector(3 downto 0);
c: out std_logic_vector(3 downto 0) );
end component;

component xor_4 is port(
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector(3 downto 0);
c: out std_logic_vector(3 downto 0) );
end component;

component not_4 is port(
a: in std_logic_vector(3 downto 0);
c: out std_logic_vector(3 downto 0) );
end component;

component HA is port(
		  a : in  STD_LOGIC;    -- First input
        b : in  STD_LOGIC;    -- Second input
        s : out  STD_LOGIC; -- Sum output
        cout : out  STD_LOGIC -- Carry output
    );
end component;

component FA is port(
		  a : in  STD_LOGIC;    -- First input
        b : in  STD_LOGIC;    -- Second input
        cin : in  STD_LOGIC;  -- Carry input
        s : out  STD_LOGIC; -- Sum output
        cout : out  STD_LOGIC -- Carry output
    );
end component;

component HS is port(
		  a : in  STD_LOGIC;     -- Minuend
        b : in  STD_LOGIC;     -- Subtrahend
        d : out  STD_LOGIC; -- Difference output
        bout : out  STD_LOGIC -- Borrow output
    );
end component;

component FS is port(
		  a : in  STD_LOGIC;       -- Minuend
        b : in  STD_LOGIC;       -- Subtrahend
        bin : in  STD_LOGIC;     -- Borrow input
        d : out  STD_LOGIC;   -- Difference output
        bout : out  STD_LOGIC    -- Borrow output
    );
end component;

component add4b is port(
		  a: in std_logic_vector(3 downto 0);
		  b: in std_logic_vector(3 downto 0);
	     s: out std_logic_vector(3 downto 0);
        c: out std_logic	);
end component;

component sub4b is port(
		  a: in std_logic_vector(3 downto 0);
		  b: in std_logic_vector(3 downto 0);
		  d: out std_logic_vector(3 downto 0);
		  boutt: out std_logic	);
end component;

end my_components;
