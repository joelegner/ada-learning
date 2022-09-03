with Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
--  with Physical_Units;    use Physical_Units;

procedure Main is
    Str  : String (1 .. 80);
    Force : Float := 0.0;
    Height : Float := 0.0;
    Moment : Float;
begin
    Ada.Text_IO.Put_Line ("Pole Embedment Calculator in Ada 2012");
    Ada.Text_IO.Put_Line ("=====================================");
    Ada.Text_IO.Put ("Enter force in kips: ");
    Ada.Float_Text_IO.Get (Item => Force);
    Ada.Float_Text_IO.Put (Force, Aft => 2, Exp => 0);
    Ada.Text_IO.Put(" kips");
    Ada.Text_IO.New_Line;
    Ada.Text_IO.Put ("Enter height to force in feet: ");
    Ada.Float_Text_IO.Get (Item => Height);
    Ada.Float_Text_IO.Put (Height, Aft => 2, Exp => 0);
    Ada.Text_IO.Put(" feet");
    Ada.Text_IO.New_Line;
    Moment := Force*Height;
    Ada.Text_IO.Put ("Ground-line moment: ");
    Ada.Float_Text_IO.Put (Moment, Fore => 1, Aft => 0, Exp => 0);
    Ada.Text_IO.Put(" kip-ft");
end Main;
