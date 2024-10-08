library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.my_components.all;

entity add4b is
port(
	a: in std_logic_vector(3 downto 0);
	b: in std_logic_vector(3 downto 0);
	s: out std_logic_vector(3 downto 0);
   c: out std_logic	);
end add4b;

architecture struct of add4b is

signal cout : std_logic_vector(2 downto 0);

begin

U1:HA port map(
	a => a(0),
	b => b(0),
	s => s(0),
	cout => cout(0) );

U2:FA port map(
	a => a(1),
	b => b(1),
	cin => cout(0),
	s => s(1),
	cout => cout(1) );

U3:FA port map(
	a => a(2),
	b => b(2),
	cin => cout(1),
	s => s(2),
	cout => cout(2) );
	
U4:FA port map(
	a => a(3),
	b => b(3),
	cin => cout(2),
	s => s(3),
	cout => c );
	

end struct;