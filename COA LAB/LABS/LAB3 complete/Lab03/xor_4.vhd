library IEEE;

--Code for xor4.vhd

use ieee.std_logic_1164.all;

entity xor_4 is
port(
a: in std_logic_vector(3 downto 0);
b: in std_logic_vector(3 downto 0);
c: out std_logic_vector(3 downto 0) );
end xor_4;

architecture df of xor_4 is
begin
c(0) <= a(0) XOR b(0); 
c(1) <= a(1) XOR b(1);
c(2) <= a(2) XOR b(2); 
c(3) <= a(3) XOR b(3); 
end df;

