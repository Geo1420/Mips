----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:16 04/05/2021 
-- Design Name: 
-- Module Name:    ROM32x32_3a2b - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM32x32_3a2b is

    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end ROM32x32_3a2b;

architecture ROM32x32_3a2b_arch of ROM32x32_3a2b is
	
	type tROM is array (0 to 31) of std_logic_vector(31 downto 0);
	
	constant ROM : tROM :=(		   -- for PC codemem test
						x"8c020040",	--0  lw $2, 0x40($0)
						x"8c030044",	--1  lw $3, 0x44($0)
						x"00432020",	--2  add $4, $2, $3
						x"00432822",	--3  sub $5, $2, $3
						x"00433024",	--4  and $6, $2, $3
						x"00433825",	--5  or $7, $2, $3
						x"ac020048",	--6  sw $2, 0x48($0)
						x"ac030048",	--7  sw $3, 0x48($0)
						x"ac040048",	--8  sw $4, 0x48($0)
						x"ac050048",	--9  sw $5, 0x48($0)
						x"ac060048",	--10 sw $6, 0x48($0)
						x"ac070048",	--11 sw $7, 0x48($0)
						x"1043fff3",       
						x"1000fff2",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000",
						x"00000000"
						);
begin

	Data <= ROM(conv_integer(Addr));

end ROM32x32_3a2b_arch;


