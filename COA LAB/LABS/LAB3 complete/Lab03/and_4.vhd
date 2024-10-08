library IEEE;

--Code for and4.vhd

use ieee.std_logic_1164.all;

entity and_4 is
port(
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector(3 downto 0);
c: out std_logic_vector(3 downto 0) );
end and_4;

architecture df of and_4 is
begin
c(0) <= a(0) AND b(0); 
c(1) <= a(1) AND b(1);
c(2) <= a(2) AND b(2); 
c(3) <= a(3) AND b(3);  
end df;

