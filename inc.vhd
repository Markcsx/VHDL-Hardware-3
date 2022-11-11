library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
---------------------------------
entity inc is
	port(
		A:in std_logic_vector(7 downto 0);
		A_plus:out std_logic_vector	(7 downto 0));

end inc;
---------------------------------
architecture design of inc is
	attribute keep: boolean;
	attribute keep of A_plus: signal is true;
begin
	process(A)
	begin
		A_plus <= A+1;
	end process;
end design;