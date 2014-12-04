LIBRARY  ieee ;
USE ieee.std_logic_1164.all ;
--
-- Full Adder
--
ENTITY FA IS
   PORT(a:    IN   std_logic ;
        b:    IN   std_logic ;
        cin:  IN   std_logic ;
        sum: OUT  std_logic ;
        cout:  OUT  std_logic
   ) ;
END FA ;

ARCHITECTURE equations OF FA IS
BEGIN
   sum  <= a XOR b XOR cin ;
   cout <= (a AND b) OR (a AND cin) OR (b AND cin) ;
END ;


