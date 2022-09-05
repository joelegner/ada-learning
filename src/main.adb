with Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Physical_Units;    use Physical_Units;
with Pole_Embed;

procedure Main is
   Str           : String (1 .. 80);
   Force         : Kips  := 0.0;
   Diameter      : Feet  := 0.0;
   Height        : Feet  := 0.0;
   Moment        : Kip_Feet;
   Depth         : Feet;
   Soil_Capacity : Float := 300.0;
begin
   Ada.Text_IO.Put_Line ("Pole Embedment Calculator in Ada 2012");
   Ada.Text_IO.Put_Line ("=====================================");
   Diameter := Get_Feet ("Enter pole diameter feet: ");
   Ada.Float_Text_IO.Put (Float (Diameter), Aft => 2, Exp => 0);
   Ada.Text_IO.Put (" feet");
   Ada.Text_IO.New_Line;
   Force := Get_Kips ("Enter force in kips: ");
   Ada.Float_Text_IO.Put (Float (Force), Aft => 2, Exp => 0);
   Ada.Text_IO.Put (" kips");
   Ada.Text_IO.New_Line;
   Height := Get_Feet ("Enter height to force in feet: ");
   Ada.Float_Text_IO.Put (Float (Height), Aft => 2, Exp => 0);
   Ada.Text_IO.Put (" feet");
   Ada.Text_IO.New_Line;
   Soil_Capacity :=
     Float (Get_Feet ("Enter allowable pressure in psf/foot of depth: "));
   Ada.Float_Text_IO.Put (Float (Soil_Capacity), Aft => 2, Exp => 0);
   Ada.Text_IO.Put (" psf/foot");
   Ada.Text_IO.New_Line;
   Moment := Force * Height;
   Ada.Text_IO.Put ("Ground-line moment: ");
   Ada.Float_Text_IO.Put (Float (Moment), Fore => 1, Aft => 0, Exp => 0);
   Ada.Text_IO.Put (" kip-feet");
   Ada.Text_IO.New_Line;
   Depth :=
     Feet
       (Pole_Embed.Get_Embed
          (Float (Diameter), Float (Force) * 1_000.0, Float (Height),
           Soil_Capacity));
   Ada.Text_IO.Put ("Required embedment depth: ");
   Ada.Float_Text_IO.Put (Float (Depth), Fore => 1, Aft => 1, Exp => 0);
   Ada.Text_IO.Put (" feet");
   Ada.Text_IO.New_Line;
end Main;
