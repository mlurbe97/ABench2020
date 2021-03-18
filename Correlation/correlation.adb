--
-- ABench2020 Benchmark Suite
--
-- Sample Correlation Coefficient Calculation Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO;   use Ada.Text_IO;
with Ada.Numerics.Elementary_Functions;  use Ada.Numerics.Elementary_Functions;


procedure Correlation is

    type Float_Array is array (1..10) of Float;

    function Calc_Coefficient (Sample_X, Sample_Y : in Float_Array) return Float is
        Coefficient                : Float := 0.0;
        Sum_X, Sum_Y, Sum_XY       : Float := 0.0;
        Square_Sum_X, Square_Sum_Y : Float := 0.0;
        Avg_X, Avg_Y               : Float := 0.0;
    begin
        for I in Sample_X'First..Sample_X'Last loop
            Sum_X := Sum_X + Sample_X (I);
        end loop;
        Avg_X := Sum_X / Float(Sample_X'Length);

        for I in Sample_Y'First..Sample_Y'Last loop
            Sum_Y := Sum_Y + Sample_Y (I);
        end loop;
        Avg_Y := Sum_Y / Float(Sample_Y'Length);

        for I in Sample_X'First..Sample_X'Last loop
            Sum_XY := Sum_XY + ((Sample_X (I) - Avg_X) * (Sample_Y (I) - Avg_Y));
        end loop;

        for I in Sample_X'First..Sample_X'Last loop
            Square_Sum_X := Square_Sum_X + ((Sample_X (I) - Avg_X) * (Sample_X (I) - Avg_X));
            Square_Sum_Y := Square_Sum_Y + ((Sample_Y (I) - Avg_Y) * (Sample_Y (I) - Avg_Y));
        end loop;

        Coefficient := Sum_XY / Sqrt (Square_Sum_X * Square_Sum_Y);
        return Coefficient;
    end;

    Result   : Float;
    Sample_X : Float_Array := (15.0, 18.0, 21.0, 23.0, 27.0, 33.4, 4.7, 21.2, 
        15.0, 34.2);
    Sample_Y : Float_Array := (25.0, 12.1, 27.0, 31.0, 32.0, 1.1, 6.5, 23.0, 
        4.4, 6.2);
begin
    Result := Calc_Coefficient (Sample_X, Sample_Y);

    -- Uncomment the line below to print the result.
    -- Put_Line (Float'Image (Result));
end;
