with Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Physical_Units; use Physical_Units;

procedure Main is
    force    : Kips := 12.0;
    distance : Feet := 23.7;
begin
    Text_IO.Put_line ("procedure Main");
   Put (Float (force));
   Put (Float (distance));
end Main;
