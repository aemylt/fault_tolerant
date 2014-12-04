USE WORK.all; -- all compiled components end up in the
              -- library work.
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY alu IS
GENERIC (size: INTEGER);
PORT
(
	a:IN std_logic_vector (size-1 downto 0);
	b:IN std_logic_vector (size-1 downto 0);
	ctrl:IN std_logic_vector (1 downto 0);
	q:OUT std_logic_vector (size-1 downto 0);
	cout:OUT std_logic
);
END alu;

architecture structure of alu is 

	component addsub is
	generic (size: integer :=8);
	port
	(
		a: in std_logic_vector(size-1 downto 0);
		b: in std_logic_vector(size-1 downto 0);
		sub: in std_logic;
		sum: out std_logic_vector(size-1 downto 0);
		cout: out std_logic	
	);
	end component;
	
	alias s0: std_logic is ctrl(0);
	alias s1: std_logic is ctrl(1);
	
	signal addsub_result: std_logic_vector(size-1 downto 0);
	signal vector_AND_result: std_logic_vector(size-1 downto 0);
	signal vector_OR_result: std_logic_vector(size-1 downto 0);
	signal q_int: std_logic_vector(size-1 downto 0);
	
begin

	addsub_UNIT: addsub port map
	(
		a => a,
		b => b,
		sub => s0,
		sum => addsub_result,
		cout => cout	
	);

	q_int <= (a and b) when s0 = '0' else (a or b); 
	q <= addsub_result when s1 = '0' else q_int;


end structure;