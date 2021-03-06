library ieee;
use ieee.std_logic_1164.all;

entity mux4_5 is
  port (
    a, b, c, d : in  std_logic_vector(4 downto 0);
    sel        : in  std_logic_vector(1 downto 0);
    o          : out std_logic_vector(4 downto 0));
end entity mux4_5;

architecture arc of mux4_5 is

begin  -- architecture arc
  process(a, b, c, d, sel)
  begin
    case sel is
      when "00"   => o <= a;
      when "01"   => o <= b;
      when "10"   => o <= c;
      when "11"   => o <= d;
      when others => o <= (others => 'Z');
    end case;
  end process;
end architecture arc;
