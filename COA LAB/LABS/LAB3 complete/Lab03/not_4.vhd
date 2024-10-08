library IEEE;

--Code for not4.vhd

use ieee.std_logic_1164.all;

entity not_4 is
port(
a: in std_logic_vector(3 downto 0);
c: out std_logic_vector(3 downto 0) );
end not_4;

architecture df of not_4 is
begin
c(0) <= not a(0); 
c(1) <= not a(1);
c(2) <= not a(2); 
c(3) <= not a(3);
end df;

