--
-- ABench2020 Benchmark Suite
--
-- Linked List Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO; use Ada.Text_IO;


procedure Linked_List is

    type Vector is array (Positive range<>) of Integer;

    type Frame;
    type Frame_Pointer is access Frame;

    type Frame is record
        Frame_Number : Integer;
        Next         : Frame_Pointer;
    end record;

    Head          : Frame_Pointer;
    Free_Frame    : Frame_Pointer;
    Current_Frame : Frame_Pointer;

    procedure Create_List (Number : in Integer) is
        Count : Integer := 0;
        Index : Integer := 0;
    begin

        Free_Frame := new Frame;
        Free_Frame.Frame_Number := Number;
        Free_Frame.Next := null;
        if Head = null then
            Head := Free_Frame;
        else
            Current_Frame.Next := Free_Frame;
        end if;
        Current_Frame := Free_Frame;
    
    end;

    Frame_Array : Vector := (3, 4, 7, 8, 9, 10, 11, 24, 25, 55, 56, 78, 90, 
        98, 120, 134, 152, 155, 165, 167, 168, 198, 250, 287, 298, 300, 310,
        333, 338, 350, 399, 442, 475, 567);

begin
    loop
        for I in Frame_Array'Range loop
            Create_List (Frame_Array (I));
        end loop;
    end loop;
    -- Uncomment the lines below to print the result.
    -- declare
    --    Print_Frame   : Frame_Pointer;
    -- begin
    --     Print_Frame := Head;
    --     loop
    --         exit when Print_Frame = null;
    --         Put (Integer'Image (Print_Frame.Frame_Number) & " ");
    --         Print_Frame := Print_Frame.Next;
    --     end loop;
    -- end;

end;
