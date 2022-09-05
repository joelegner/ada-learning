with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;

procedure Roll_Dice is

   subtype Range_1D is Integer range 1 .. 6;
   subtype Range_2D is Integer range 2 .. 12;
   subtype Count_Range is Integer range 1 .. 100_000;

   -- This program features arrays
   type Count_Array_T is array (Range_2D) of Integer;

   package R is new Ada.Numerics.Discrete_Random (Range_1D);
   use R;

   G           : Generator;
   X           : Range_2D;
   Count_Array : Count_Array_T;
   Percent     : Float := 0.0;
   Cum_Percent : Float := 0.0;
begin
   Reset (G);

   Put_Line
     (Integer'Image (Count_Range'Last) & " random numbers between " &
      Integer'Image (Range_2D'First) & " and " &
      Integer'Image (Range_2D'Last) & ":");

   -- Initialize the array counts to zero
   -- There is probably a shortcut to do this
   for I in Range_2D'First .. Range_2D'Last loop
      Count_Array (I) := 0;
   end loop;

   for I in Count_Range'First .. Count_Range'Last loop
      X               := Random (G) + Random (G);
      Count_Array (X) := Count_Array (X) + 1;
      --  Put_Line ("Roll #" & Integer'Image (I) & " = " & Integer'Image (X));
   end loop;

   for Combo in Range_2D'First .. Range_2D'Last loop
      Percent :=
        Float (Count_Array (Combo)) / Float (Count_Range'Last) * 100.0;
      Cum_Percent := Cum_Percent + Percent;
      Put ("Combo ");
      Ada.Integer_Text_IO.Put (Combo, Width => 2);
      Put (": ");
      Ada.Float_Text_IO.Put (Float (Percent), Fore => 2, Aft => 1, Exp => 0);
      Put ("% ");
      Ada.Float_Text_IO.Put
        (Float (Cum_Percent), Fore => 2, Aft => 1, Exp => 0);
      Put ("%");
      New_Line;
   end loop;
end Roll_Dice;
