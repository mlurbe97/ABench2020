--
-- ABench2020 Benchmark Suite
--
-- Selection Sort Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO; use Ada.Text_IO;


procedure Selection_Sort is

    type Vector is array (Positive range<>) of Integer;


    procedure Sort (Sort_Array : in out Vector) is
        Temp_Value : Integer;
    begin

        for I in 1 .. Sort_Array'Last loop
            for J in I .. Sort_Array'Last loop
                if Sort_Array (I) > Sort_Array (J) then
                    Temp_Value := Sort_Array (I);
                    Sort_Array (I) := Sort_Array (J);
                    Sort_Array (J) := Temp_Value;
                end if;
            end loop;
        end loop;

    end;


    Sort_Array : Vector := (1, 9, 5, 31, 25, 46, 98, 17, 21, 82, 2, 33, 64, 73,
        56, 567, 5, 45, 445, 4, 76, 22, 34, 45, 56, 888, 66, 89, 9, 32, 46, 78,
        87, 23, 37, 12, 3, 6, 89, 7);

begin
    Sort (Sort_Array);

    -- Uncomment the lines below to print the result.
    -- Put_Line("Sorted Array:");
    -- for I in Sort_Array'Range loop
    --    Put (Integer'Image (Sort_Array (I)) & " ");
    -- end loop;
end;
