--
-- ABench2020 Benchmark Suite
--
-- Factorial Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO;   use Ada.Text_IO;

with Ada.Command_Line; use Ada.Command_Line;


procedure Factorial is

    function Calculate_Factorial (Start_Value : Long_Integer; End_Value : Long_Integer) return Long_Integer is
        Result : Long_Integer := 1; 
    begin
        for I in Long_Integer range Start_Value .. End_Value loop
            Result := Result * I;
        end loop;

        return  Result;
    end;

    External_Value : Long_Integer := Long_Integer'Value (Ada.Command_Line.Argument (1));
    Result         : Long_Integer; 

begin
    Result := Calculate_Factorial (1, External_Value);
   
    -- Uncomment the line below to print the result.
    -- Put_Line (Integer'Image (Result));
end;
