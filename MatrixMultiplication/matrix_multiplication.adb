--
-- ABench2020 Benchmark Suite
--
-- Matrix Multiplication Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO;   use Ada.Text_IO;


procedure Matrix_Multiplication is


    type MMatrix is array (Positive range<>, Positive range<>) of Integer;


    procedure Multiply (First_Matrix, Second_Matrix : in MMatrix; Third_Matrix : out MMatrix) is
        Product : Integer := 0;
    begin
        for T in 1 .. First_Matrix'Last (1) loop
            for Y in 1 .. Second_Matrix'Last (2) loop
                Product := 0;
                for U in 1 .. First_Matrix'Last (2) loop
                    Product := Product + First_Matrix (T, U) * Second_Matrix (U, Y);
                end loop;
                Third_Matrix (T, Y) := Product;
            end loop;
        end loop;
    end;


    First_Matrix : constant MMatrix :=
        (   (1,  1,  22, 83, 98, 1,  10, 2, 9,  11),
            (5,  1,  14, 8,  9,  10, 7,  2, 10, 30),
            (6,  5,  32, 0,  1,  60, 10, 0, 2,  0),
            (22, 9,  23, 4,  1,  9,  3,  1, 4,  1),
            (8,  1,  82, 3,  5,  6,  3,  4, 7,  2),
            (9,  0,  17, 4,  4,  99, 9,  0, 1,  10),
            (2,  5,  27, 2,  1,  40, 7,  1, 0,  20),
            (0,  7,  12, 1,  1,  13, 4,  8, 2,  75),
            (21, 33, 1,  1,  7,  8,  2,  0, 9,  3),
            (5,  98, 0,  2,  0,  9,  1,  1, 5,  12)
        );

    Second_Matrix : constant MMatrix :=
        (   (1,  1,  22, 83, 98, 1,  10, 2, 9,  11),
            (5,  1,  14, 8,  9,  10, 7,  2, 10, 30),
            (6,  5,  32, 0,  1,  60, 10, 0, 2,  0),
            (22, 9,  23, 4,  1,  9,  3,  1, 4,  1),
            (8,  1,  82, 3,  5,  6,  3,  4, 7,  2),
            (9,  0,  17, 4,  4,  99, 9,  0, 1,  10),
            (2,  5,  27, 2,  1,  40, 7,  1, 0,  20),
            (0,  7,  12, 1,  1,  13, 4,  8, 2,  75),
            (21, 33, 1,  1,  7,  8,  2,  0, 9,  3),
            (5,  98, 0,  2,  0,  9,  1,  1, 5,  12)
        );


    Third_Matrix : MMatrix (1 .. 10, 1 .. 10);

begin
    loop
        Multiply (First_Matrix, Second_Matrix, Third_Matrix);
    end loop;
    -- Uncomment the lines below to print the result.
    -- for I in 1 .. Third_Matrix'Last (1) loop
    --     for J in 1 .. Third_Matrix'Last (2) loop
    --         Put (Integer'Image (Third_Matrix (I, J)));
    --     end loop;
    --     New_Line;
    -- end loop;

end;
