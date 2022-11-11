library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
---------------------------------
entity reg is
port(
	asynResetn : in std_logic;
	ck : in std_logic;
	load : in std_logic;
	datain : in std_logic_vector(11 downto 0);
	dataout : out std_logic_vector(11 downto 0));
end reg;
---------------------------------
architecture design of reg is
begin
	process(ck, asynResetn) is
	begin
		if(asynResetn = '0') then
			dataout <= "000000000000";
		elsif(ck'event and ck = '1') then
			if(load = '1') then
				dataout <= datain;
			end if;
		end if;
	end process;
end design;

