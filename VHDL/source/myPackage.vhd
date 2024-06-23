library IEEE;
use IEEE.std_logic_1164.all;

package myPackage is
  type opType is (sum, mult, sub);
  type regType is array(0 to 9) of std_logic_vector(7 downto 0);
end myPackage;
