
# ABench2020: A WCET Benchmark Suite in Ada Programming Language

ABench2020 is a benchmark suite written in Ada programming languge and aimed to help WCET research. It is a collection of programs which can be used to compare real-time platforms, WCET tools and techniques. All programs in the benchmark suite is open source and licensed under the MIT license.


## Citing ABench2020

The paper of ABench2020 can be accessed through the link below.

https://www.acperpro.com/document/ISITES2020ID99

If you use ABench2020 in your research, please consider citing.

Ö. Gökçe and V. H. Şahin, “ABench2020: A WCET Benchmark Suite In Ada Programming Language,” in Academic Perspective Procedia, Bursa, Turkey, Oct. 2020, vol. 3, pp. 509–518, doi: 10.33793/acperpro.03.01.99

```bibtex
@inproceedings{ABench2020_2020,
	address = {Bursa, Turkey},
	title = {{ABench2020}: {A} {WCET} {Benchmark} {Suite} {In} {Ada} {Programming} {Language}},
	volume = {3},
	url = {https://www.acperpro.com/document/ISITES2020ID99},
	doi = {10.33793/acperpro.03.01.99},
	booktitle = {Academic {Perspective} {Procedia}},
	publisher = {Academic Perspective},
	author = {Gökçe, Özge and Şahin, Veysel Harun},
	month = oct,
	year = {2020},
	keywords = {Ada, Benchmark, Real-Time Systems, Worst-Case Execution Time Analysis},
	pages = {509--518},
}
```


## Feature Matrix


### Features

Below is the list of features of this benchmark suite. Abbreviations and descriptions of the features are given together with the feature names.

* Single Threaded (ST): Single threaded execution.
* Multithreaded (MT): Multithreaded execution.
* External Routine (ER): Cals external routine.
* Single Path (SP): Single path execution.
* Multipath (MP): Multipath execution.
* Dynamic Memory (DM): Performs dynamic memory allocation.
* Loop (L): Includes loop structure.
* Nested Loop (NL): Includes nested loop structure.
* Decision (D): Includes decision structure.
* Array (A): Includes arrays.
* Recursion (R): Includes recursive routine call.
* Bit Level Operation (BLOp): Performs bit level operation.
* Floating-Point Operation (FPOp): Performs floating point operation.
* Integer Operation (IntOp): Performs integer operation.
* Command Line Argument (CmdArg): Take command line argument.
* File Input/Output (FileIO): Performs file input/output operation.


### Programs and Features

Program Name         | ST  | MT  | ER  | SP  | MP  | DM  | L   | NL  | D   | A   | R   | BLOp | FPOp | IntOp | CmdArg | FileIO |
:---                 |:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---: |:---: |:---:  |:---:   |:---:   |
BinarySearchTree 	 | +   | -   | -   | +   | -   | +   | +   | -   | +   | +   | +   | -    | -    | -     | -      | -      |
BitwiseShift 		 | +   | -   | +   | +   | -   | -   | -   | -   | -   | -   | -   | +    | -    | -     | -      | -      |
Corelation           | +   | -   | +   | +   | -   | -   | +   | -   | -   | +   | -   | -    | +    | -     | -      | -      |
CorelationFI         | +   | -   | +   | +   | -   | -   | +   | -   | -   | +   | -   | -    | +    | -     | -      | +      |
Factorial 			 | +   | -   | +   | +   | -   | -   | +   | -   | -   | -   | -   | -    | -    | +     | +      | -      |
Fibonacci 			 | +   | -   | +   | -   | +   | -   | -   | -   | +   | -   | +   | -    | -    | +     | +      | -      |
LinearSearch 		 | +   | -   | -   | +   | -   | -   | +   | -   | +   | +   | -   | -    | -    | -     | -      | -      |
LinkedList 			 | +   | -   | -   | +   | -   | +   | +   | -   | +   | +   | -   | -    | -    | -     | -      | -      |
MatrixMultiplication | +   | -   | -   | +   | -   | -   | +   | +   | -   | +   | -   | -    | -    | +     | -      | -      |
PFactorial 			 | -   | +   | +   | -   | +   | -   | +   | -   | +   | -   | -   | -    | -    | +     | +      | -      |
SelectionSort 		 | +   | -   | -   | +   | -   | -   | +   | +   | +   | +   | -   | -    | -    | -     | -      | -      |
Softmax 			 | +   | -   | -   | +   | -   | -   | +   | -   | -   | +   | -   | -    | +    | -     | -      | -      |