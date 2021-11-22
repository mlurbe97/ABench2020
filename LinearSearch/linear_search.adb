--
-- ABench2020 Benchmark Suite
--
-- Linear Search Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO; use Ada.Text_IO;


procedure Linear_Search is

    type Vector is array (Natural range<>) of Integer;


    procedure Search (Search_Array : Vector; Search_Value : Integer) is
        Count : Integer := 0;
        Index : Integer := 0;
    begin

        for I in 1 .. Search_Array'Last loop
            if Search_Array (I) = Search_Value then
                Count := Count + 1;
            end if;
        end loop;

        if Count = 0 then
            return;
        end if;
        
        declare
            Index_Array : Vector (1 .. Count);            
        begin

            for I in 1 .. Search_Array'Last loop
                if Search_Array (I) = Search_Value then
                    Index := Index + 1;
                    Index_Array (Index) := I;
                end if;
            end loop;

            -- Uncomment the line below to print the result.
            -- for I in 1 .. Index_Array'Last loop
            --     Put (Integer'Image (Index_Array (I)));
            -- end loop;
        end;

    end;

    Search_Value : Integer;
    Search_Array : Vector := (3, 4, 7, 8, 9, 10, 11, 24, 25, 55, 56, 78, 90, 
        98, 120, 134, 152, 155, 165, 167, 168, 198, 250, 287, 298, 300, 310,
        333, 338, 350, 399, 442, 475, 567);

begin
    loop
        Search_Value := 250;
        Search (Search_Array, Search_Value);
    end loop;
end;
