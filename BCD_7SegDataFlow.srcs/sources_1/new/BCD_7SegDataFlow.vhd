----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/29/2020 08:18:54 AM
-- Design Name: 
-- Module Name: BCD_7SegDataFlow - Behavioral
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

entity BCD_7SegDataFlow is
    Port ( A : in STD_LOGIC_VECTOR (0 to 3);
           B : out STD_LOGIC_VECTOR (0 to 6);
           An : out STD_LOGIC_VECTOR (0 to 7));
end BCD_7SegDataFlow;

architecture Behavioral of BCD_7SegDataFlow is
begin
   -- The anode of the first digit is asserted.
    AN <= "01111111";
        B(0) <= Not (A(0) or A(2) or (A(1) And A(3)) or ( Not A(1) And Not A(3)));
        B(1) <= Not ((Not A(1)) or (Not A(2) and Not A(3)) Or (A(2) And A(3)));
        B(2) <= Not (A(1) Or (Not A(2)) Or A(3));
        B(3) <= Not (A(0) Or ( Not A(1) And Not A(3)) or ( Not A(1) And A(2) ) or (A(1) And Not A(2) And A(3)));
        B(4) <= Not ((A(2) And Not A(3)) Or ( Not A(1) And Not A(3)));
        B(5) <= Not (A(0) or (A(1) And Not A(2)) Or (A(1) And Not A(3)) or ( Not A(2) And Not A(3)));
        B(6) <= Not (A(0) Or ( A(2) And Not A(3)) Or ( A(1) And Not A(2)) Or ( Not A(1) And A(2)));
end Behavioral;
