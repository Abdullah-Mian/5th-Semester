LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE components IS 
    COMPONENT HalfAdder IS 
        PORT (
            a : IN  STD_LOGIC;
            b : IN  STD_LOGIC;
            s : OUT STD_LOGIC;
            c : OUT STD_LOGIC
        );
    END COMPONENT;
	 
	 COMPONENT HalfSubractor IS
			PORT (
				a : in std_logic;
				b : in std_logic;
				diff : out std_logic;
				borr : out std_logic
			);
		END COMPONENT;

    COMPONENT FullAdder IS
        PORT (
            a : IN  STD_LOGIC;
            b : IN  STD_LOGIC;
            c : IN  STD_LOGIC;
            sum : OUT STD_LOGIC;
            carry : OUT STD_LOGIC
        );
    END COMPONENT;
	 
	COMPONENT FullSubractor is 
		Port(
			a : in std_logic;
			b : in std_logic;
			bin : in std_logic;
			diff : out std_logic;
			borr : out std_logic
		);
	END COMPONENT;

    COMPONENT FourBitAdder IS
        PORT (
            a        : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            b        : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            sum      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            carryOut : OUT STD_LOGIC
        );
    END COMPONENT;
	 
	 COMPONENT FourBitSubtractor is
		Port (
		  a        : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b        : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        Difference      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        Borrow : OUT STD_LOGIC
			);
	END COMPONENT;

    COMPONENT FourBitAND IS
        PORT (
            a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            b : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
	 
	 COMPONENT FourBitOR IS
    PORT (
        a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	 END COMPONENT;
	 
	 COMPONENT FourBitXOR IS
    PORT (
        a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        b : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	 END COMPONENT;
	 
	 COMPONENT FourBitNOT IS
    PORT (
        a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	 END COMPONENT;
		
END components;
