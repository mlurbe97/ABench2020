--
-- ABench2020 Benchmark Suite
--
-- Sample Correlation Coefficient Calculation Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


with Ada.Text_IO;                       use Ada.Text_IO;
with Ada.Strings.Fixed;                 use Ada.Strings.Fixed;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;


procedure Correlation_FI is

    type Float_Array is array (1..10) of Float;
    Sample_X : Float_Array;
    Sample_Y : Float_Array;

    procedure Read_File is
        Input_File : File_Type;
        Start      : Integer;
        Location   : Integer;
        Value      : Float;
        Arr_Index  : Integer;
    begin
        Open (File => Input_File, Mode => In_File, Name => "input.txt");
        declare
            Line1 : String := Get_Line (Input_File);
            Line2 : String := Get_Line (Input_File);
        begin
            Arr_Index := 1;
            Start := Line1'First;
            loop
                Location := Index (Line1, ",", From => Start);
                exit when Location = 0;
                Value := Float'Value (Line1 (Start..Location - 1));
                Sample_X (Arr_Index) := Value;
                Start := Location + 1;
                Arr_Index := Arr_Index + 1;
            end loop;
            Value := Float'Value (Line1 (Start..Line1'Last));
            Sample_X (Arr_Index) := Value;

            Arr_Index := 1;
            Start := Line2'First;
            loop
                Location := Index (Line2, ",", From => Start);
                exit when Location = 0;
                Value := Float'Value (Line2 (Start..Location - 1));
                Sample_Y (Arr_Index) := Value;
                Start := Location + 1;
                Arr_Index := Arr_Index + 1;
            end loop;
            Value := Float'Value (Line2 (Start..Line2'Last));
            Sample_Y (Arr_Index) := Value;
        end;
        Close (Input_File);
    exception
        when End_Error =>
            if Is_Open(Input_File) then 
                Close (Input_File);
            end if;
    end;

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

    Result : Float;
begin
    Read_File;
    Result := Calc_Coefficient (Sample_X, Sample_Y);

    -- Uncomment the line below to print the result.
    -- Put_Line (Float'Image (Result));
end;
