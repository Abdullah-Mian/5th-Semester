library IEEE;

--Code for or4.vhd

use ieee.std_logic_1164.all;

entity or_4 is
port(
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector(3 downto 0);
c: out std_logic_vector(3 downto 0) );
end or_4;

architecture df of or_4 is
begin
c(0) <= a(0) OR b(0); 
c(1) <= a(1) OR b(1);
c(2) <= a(2) OR b(2); 
c(3) <= a(3) OR b(3); 
end df;

