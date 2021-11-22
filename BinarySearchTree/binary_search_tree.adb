--
-- ABench2020 Benchmark Suite
--
-- Binary Search Tree Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO; use Ada.Text_IO;


procedure Binary_Search_Tree is

    type Vector is array (Positive range<>) of Integer;

    type Node;
    type Node_Pointer is access Node;

    type Node is record
        Value : Integer;
        Left  : Node_Pointer := null;
        Right : Node_Pointer := null;
    end record;

    Root_Node : Node_Pointer := null;


    function Insert_Node (Parent_Node : in Node_Pointer; Node_Value : in Integer) return Node_Pointer is
        New_Node : Node_Pointer;
    begin

        if Parent_Node = null then
            New_Node := new Node;
            New_Node.Value := Node_Value;
            return New_Node;
        elsif Node_Value < Parent_Node.Value then
            Parent_Node.Left := Insert_Node (Parent_Node.Left, Node_Value);
        elsif Node_Value > Parent_Node.Value then
            Parent_Node.Right := Insert_Node (Parent_Node.Right, Node_Value);
        end if;
        
        return Parent_Node;

    end;


    procedure Insert (Node_Value : in Integer) is
        Temp_Node : Node_Pointer;
    begin

        if Root_Node = null then
            Root_Node := new Node;
            Root_Node.Value := Node_Value;
        else
            Temp_Node := Insert_Node (Root_Node, Node_Value);
        end if;
    
    end;


    procedure Traverse (Current_Node : in Node_Pointer) is
    begin
        if Current_Node /= null then
            Traverse (Current_Node.Right);
            -- Uncomment the lines below to print the result.
            -- Put (Integer'Image (Current_Node.Value) & " ");
            Traverse (Current_Node.Left);
        end if;
    end;
     

    Node_Array : Vector := (3, 4, 7, 8, 9, 10, 11, 24, 25, 55, 56, 78, 90, 
        98, 120, 134, 152, 155, 165, 167, 168, 198, 250, 287, 298, 300, 310,
        333, 338, 350, 399, 442, 475, 567);

begin
    loop
        for I in Node_Array'Range loop
            Insert (Node_Array (I));
        end loop;
    end loop;

    Traverse (Root_Node);

end;
