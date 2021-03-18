--
-- ABench2020 Benchmark Suite
--
-- Softmax Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the lines below to print the result.
-- with Ada.Text_IO; use Ada.Text_IO;


procedure Softmax is

    type Vector is array (1..15) of Integer;
    Result : array (1..15) of Float;
    Exp    : constant := 2.71828;

    procedure Calculate_Softmax (Sample: Vector) is
        Denonminator : Float := 0.0;
    begin
        for I in Sample'Range loop
            Denonminator := Denonminator + (Exp ** Sample (I));
        end loop;

        for I in Sample'Range loop
            Result (I) := (Exp ** Sample (I)) / Denonminator;
        end loop;
    end;


    Sample : Vector := (1, 5, 3, 7, 4, 10, 4, 9, 4, 1, 9, 12, 3, 8, 5);

begin
    
    Calculate_Softmax (Sample);

    -- Uncomment the lines below to print the result.
    -- for I in Sample'Range loop
    --     Put (Float'Image (Result (I)) & " ");
    -- end loop;

end;
