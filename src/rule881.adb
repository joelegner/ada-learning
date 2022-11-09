with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;
with Ieee738;

-- The purpose of this program is to calculate line ratings on
-- 5-degree increments for the most common conductor in the
-- transmission system

-- What I do to run it as fast as possible is:
-- $ gprbuild -P rule881.gpr&&./bin/rule881

procedure Rule881 is
   Current : Float := Ieee738.Current;
begin
   Put_Line("FERC Rule 881 Calculator");
   Put_Line("by Joe Legner 10/25/2022");
   Put_Line("""A goal without steps is merely a wish.""");
   Put("Current = ");
   Ada.Float_Text_IO.Put(Current, Exp=>0, Aft=>1);
   Put_Line(" amps");
end Rule881;
