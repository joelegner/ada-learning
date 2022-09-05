with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Float_Text_IO;
with Ada.Text_IO;                       use Ada.Text_IO;
with Ada.Integer_Text_IO;

package body Pole_Embed is
   function Get_Embed (B, P, H : Float; Qa : Float := 300.0) return Float is
      D         : Float;
      D0        : Float          := 30.0;
      Converge  : constant Float := 0.05;
      A         : Float;
      S1        : Float;
      Iteration : Natural        := 0;
   begin
      loop
         Iteration := Iteration + 1;
         Put ("Iteration # ");
         Ada.Integer_Text_IO.Put (Iteration);
         New_Line;
         Put ("D0 = ");
         Ada.Float_Text_IO.Put (D0);
         New_Line;
         S1 := Qa * D0 / 3.0;
         Put ("S1 = ");
         Ada.Float_Text_IO.Put (S1);
         New_Line;
         A := B * 2.34 * P / S1;
         Put ("A = ");
         Ada.Float_Text_IO.Put (A);
         New_Line;
         --  d = 0.5A{1 + [1 + (4.36h/A)]1/2}
         D := 0.5 * A * (1.0 + Sqrt (1.0 + 4.36 * H / A));
         Put ("D = ");
         Ada.Float_Text_IO.Put (D);
         New_Line;
         Put ("Delta = ");
         Ada.Float_Text_IO.Put (abs (D - D0));
         New_Line;
         exit when abs (D - D0) <= Converge;
         D0 := (D + D0) / 2.0;
      end loop;
      return D;
   end Get_Embed;

end Pole_Embed;
