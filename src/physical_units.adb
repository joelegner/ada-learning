package body Physical_Units is

   function "*" (Left : Kips; Right : Feet) return Kip_Feet is
   begin
      return Kip_Feet (Float (Left) * Float (Right));
   end "*";

   function Get_Float (Message : String) return Float is
      Value : Float;
   begin
      Ada.Text_IO.Put (Message);
      Ada.Float_Text_IO.Get (Item => Value);
      return Value;
   end Get_Float;

   function Get_Kips (Message : String := "Enter kips: ") return Kips is
   begin
      return Kips (Get_Float (Message));
   end Get_Kips;

   function Get_Feet (Message : String := "Enter feet: ") return Feet is
   begin
      return Feet (Get_Float (Message));
   end Get_Feet;

end Physical_Units;
