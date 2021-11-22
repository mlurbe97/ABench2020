--
-- ABench2020 Benchmark Suite
--
-- Fibonacci Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO;   use Ada.Text_IO;

with Ada.Command_Line; use Ada.Command_Line;


procedure Fibonacci is

    function Calculate_Fibonacci (Index_Value: Positive) return Positive is
    begin
        if Index_Value <= 2 then
            return 1;
        else
            return Calculate_Fibonacci (Index_Value - 1) + Calculate_Fibonacci (Index_Value - 2);
        end if;
    end;

    
    External_Value : Positive := Positive'Value (Ada.Command_Line.Argument (1));
    Result         : Positive; 

begin
    loop
        Result := Calculate_Fibonacci (External_Value);
    end loop;
    -- Uncomment the line below to print the result.
    -- Put_Line (Integer'Image (Result));

end Fibonacci;
