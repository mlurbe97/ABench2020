--
-- ABench2020 Benchmark Suite
--
-- Parallel Factorial Program
--
-- Licensed under the MIT License. See LICENSE file in the ABench root 
-- directory for license information.
--


-- Uncomment the line below to print the result.
-- with Ada.Text_IO;      use Ada.Text_IO;

with Ada.Command_Line; use Ada.Command_Line;
 

procedure PFactorial is


    function Calculate_Factorial (Start_Value : Long_Integer; End_Value : Long_Integer) return Long_Integer is
        Result : Long_Integer := 1; 
    begin
        for I in Long_Integer range Start_Value .. End_Value loop
            Result := Result * I;
        end loop;

        return  Result;
    end;


    task type Factorial_Task is
      entry Start (Start_Value : in Long_Integer; End_Value : in Long_Integer);
      entry Report (Result_Value : out Long_Integer);
    end Factorial_Task;


    task body Factorial_Task is
        Local_Start_Value  : Long_Integer;
        Local_End_Value    : Long_Integer;
        Local_Result_Value : Long_Integer;      
    begin
        accept Start (Start_Value : in Long_Integer; End_Value : in Long_Integer) do
            Local_Start_Value := Start_Value;
            Local_End_Value := End_Value;
        end Start;
        Local_Result_Value := Calculate_Factorial (Local_Start_Value, Local_End_Value);
        accept Report (Result_Value : out Long_Integer) do
            Result_Value := Local_Result_Value;
        end Report;
    end;


    Task1 : Factorial_Task;
    Task2 : Factorial_Task;

    External_Value  : Long_Integer := Long_Integer'Value (Ada.Command_Line.Argument (1));
    Factorial_Value : Long_Integer := 1;
    Thread1_Value   : Long_Integer := 1;
    Thread2_Value   : Long_Integer := 1;

begin
    Task1.Start (1, External_Value / 2);
    Task2.Start (External_Value / 2 + 1 , External_Value);
    Task1.Report (Thread1_Value);
    Task2.Report (Thread2_Value);
    Factorial_Value := Thread1_Value * Thread2_Value;
    
    -- Uncomment the line below to print the result.
    -- Put_Line (Long_Integer'Image (Factorial_Value));

end;
