--
-- ABench2020 Benchmark Suite
--
-- Bitwise Shift Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO; use Ada.Text_IO;
with Interfaces;  use Interfaces;


procedure Bitwise_Shift is


    function S_Right (Value : Unsigned_32; Shift_Amount : Natural) return Unsigned_32 is
        Result : Unsigned_32;
    begin
        Result := Shift_Right (Value, Shift_Amount);
        return Result;
    end;

    function S_Left (Value : Unsigned_32; Shift_Amount : Natural) return Unsigned_32 is
        Result : Unsigned_32;
    begin
        Result := Shift_Left (Value, Shift_Amount);
        return Result;
    end;

    Result_1 : Unsigned_32;
    Result_2 : Unsigned_32;

begin
    loop
        Result_1 := S_Right (100, 7);
        Result_2 := S_Left (50, 9);
    end loop;
    -- Uncomment the lines below to print the results.
    -- Put (Unsigned_32'Image (Result_1));
    -- Put (Unsigned_32'Image (Result_2));
end;
