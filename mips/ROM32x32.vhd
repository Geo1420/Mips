----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:16 04/05/2021 
-- Design Name: 
-- Module Name:    ROM32x32 - Behavioral 
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

entity ROM32x32 is

    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end ROM32x32;

architecture ROM32x32_arch of ROM32x32 is
	
	type tROM is array (0 to 31) of std_logic_vector(31 downto 0);
	
	constant ROM : tROM :=(
						x"00000001",
						x"00000002",
						x"00000004",
						x"00000008",
						x"00000010",
						x"00000020",
						x"00000040",
						x"00000080",
						x"00000100",
						x"00000200",
						x"00000400",
						x"00000800",
						x"00001000",
						x"00002000",
						x"00004000",
						x"00008000",
						x"00010000",
						x"00020000",
						x"00040000",
						x"00080000",
						x"00100000",
						x"00200000",
						x"00400000",
						x"00800000",
						x"01000000",
						x"02000000",
						x"04000000",
						x"08000000",
						x"10000000",
						x"20000000",
						x"40000000",
						x"80000000"
						);
begin

	Data <= ROM(conv_integer(Addr));

end ROM32x32_arch;

