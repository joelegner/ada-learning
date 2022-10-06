with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;

procedure Numbers is
   type Money is delta 0.01 digits 15; -- Decimal fixed type
   subtype Salary is Money digits 10;

   -- Decimal fixed type objects
   My_Salary : Salary := 142_509.44;

   -- Lets create a custom IO package
   
begin
   Put_Line("Numbers Program");
   Put_Line("by Joe Legner 10/5/2022");
   New_Line;
   Put_Line("Decimal Fixed Type");
   Put_Line(My_Salary'Image);
   

end Numbers;
