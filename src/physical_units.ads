with Ada.Text_IO;
with Ada.Float_Text_IO;
package Physical_Units is
   type Kips is new Float;
   type Feet is new Float;
   type Kip_Feet is new Float;
   function "*" (Left : Kips; Right : Feet) return Kip_Feet;
   function Get_Kips (Message : String := "Enter kips: ") return Kips;
   function Get_Feet (Message : String := "Enter feet: ") return Feet;
end Physical_Units;
