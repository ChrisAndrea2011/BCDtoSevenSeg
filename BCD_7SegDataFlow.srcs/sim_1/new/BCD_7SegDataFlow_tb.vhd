----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2020 02:41:51 PM
-- Design Name: 
-- Module Name: BCD_7SegDataFlow_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_7SegDataFlow_tb is
--  Port ( );
end BCD_7SegDataFlow_tb;

architecture Behavioral of BCD_7SegDataFlow_tb is
Component BCD_7SegDataFlow is
    Port ( A : in STD_LOGIC_VECTOR (0 to 3);
           B : out STD_LOGIC_VECTOR (0 to 6);
           An : out STD_LOGIC_VECTOR (0 to 7));
end Component;
Signal A    : std_logic_vector(0 to 3);
Signal B    : std_logic_vector(0 to 6);
Signal An   : std_logic_vector(0 to 7);
begin

uut: BCD_7SegDataFlow port map ( A => A, B => B, An => An);

stim_process:  process 
                    begin
                        wait for 20ns;
                            A <= "0000";
                        wait for 20ns;
                            A <= "0001";
                        wait for 20ns;
                            A <= "0010";
                        wait for 20ns;
                            A <= "0011";
                        wait for 20ns;
                            A <= "0100";
                        wait for 20ns;
                            A <= "0101";
                        wait for 20ns;
                            A <= "0110";
                        wait for 20ns;
                            A <= "0111";
                        wait for 20ns;
                            A <= "1000";
                        wait for 20ns;
                            A <= "1001";
                        wait for 20ns;
                End process;       
end Behavioral;
