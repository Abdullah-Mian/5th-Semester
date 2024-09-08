library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity nandgate is
port
(
A: in std_logic;
B: in std_logic;
cout : out std_logic
);
end nandgate;
architecture behavorial of nandgate is
begin
cout<= not (A and B);
end behavorial;