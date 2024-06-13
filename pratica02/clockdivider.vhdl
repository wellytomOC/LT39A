library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity ClockDivider is
	port ( clk: in std_logic;
		clock_out: out std_logic);
end entity;
  
architecture behavior of ClockDivider is
  
	signal count: integer:=1;
	signal tmp : std_logic := '0';

    signal oscillator: integer := 50000000;
    signal newfrequency: integer := 1;
        

begin
  
	process(clk)
	
		variable halfPeriod: integer := (oscillator)/(newfrequency*2);
	
	begin
		  

		if(clk'event and clk='1') then
			count <=count+1;
			if (count > halfPeriod) then -- usar 2500000 na FPGA
				tmp <= NOT tmp;
				count <= 1;
			end if;
		end if;
		clock_out <= tmp;
	end process;
  
end architecture;

