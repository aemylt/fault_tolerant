LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY addsub IS
  GENERIC (size: INTEGER := 8);
  PORT (
    a: IN std_logic_vector(size-1 downto 0);
    b: IN std_logic_vector(size-1 downto 0);
    clk:IN std_logic;
    sub: IN std_logic; -- sub = 0 => addition;
                       -- sub = 1 => subtraction
    sum: OUT std_logic_vector(size-1 downto 0);
    cout: OUT std_logic);
END addsub;

architecture structure of addsub is

	signal b_int: std_logic_vector(size-1 downto 0);
	signal cout_int: std_logic_vector(size-1 downto 0);
	signal sumout: std_logic_vector(size-1 downto 0);
	signal ain,bin: std_logic_vector(size-1 downto 0);
        signal subin :std_logic;

    component FA is port
    (
		a: in std_logic;
		b: in std_logic;
		cin: in std_logic;
		sum: out std_logic;
		cout: out std_logic
    );
    end component;

begin

	b_int(0) <= bin(0) xor sub;		-- invert b when sub = 1
	
	FA0: FA port map
	(
		a => ain(0),
		b => b_int(0),
		cin => sub,			-- for two's compliment
		sum => sumout(0),
		cout => cout_int(0)
	);
	
	FA_array: FOR i IN 1 TO size-1 GENERATE
	
		b_int(i) <= bin(i) xor sub;
		
		FA_unit: FA port map
		(
			a => ain(i),
			b => b_int(i),
			cin => cout_int(i-1),
			sum => sumout(i),
			cout => cout_int(i)
		);
		
	END GENERATE FA_array;

	

process(clk,a,b)
begin
if clk='1' and clk'event then
ain<=a;
bin<=b;
subin<=sub;

sum<=sumout;
cout <= cout_int(size-1);

end if;
end process;



end structure;