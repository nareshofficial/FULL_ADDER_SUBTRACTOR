# FULL_ADDER_SUBTRACTOR

Implementation-of-Full-Adder-and-Full-subtractor-circuit

**AIM:**

To design a Full Adder and Full Subtractor circuit and verify its truth table in Quartus using Verilog programming.

**Equipments Required:**

Hardware – PCs, Cyclone II , USB flasher

Software – Quartus prime

**Full Adder and Full Subtractor**

**Full Adder**

Full adder is a digital circuit used to calculate the sum of three binary bits. It consists of three inputs and two outputs. Two of the input variables, denoted by A and B, represent the two significant bits to be added. The third input, Cin, represents the carry from the previous lower significant position. Two outputs are necessary because the arithmetic sum of three binary digits ranges in value from 0 to 3, and binary 2 or 3 needs two digits. The two outputs are sum and carry.

Sum =A’B’Cin + A’BCin’ + ABCin + AB’Cin’ = A ⊕ B ⊕ Cin 

Carry = AB + ACin + BCin

![image](https://github.com/naavaneetha/FULL_ADDER_SUBTRACTOR/assets/154305477/0f30ba51-5ffb-4198-845f-18e054f675e7)

**Figure -1 FULL ADDER**

**Full Subtractor**

A full subtractor is a combinational circuit that performs subtraction involving three bits, namely minuend, subtrahend, and borrow-in . It accepts three inputs: minuend, subtrahend and a borrow bit and it produces two outputs: difference and borrow.

![image](https://github.com/naavaneetha/FULL_ADDER_SUBTRACTOR/assets/154305477/02b24f51-ab51-4304-9ad6-7b81ffc1ead5)

Diff = A ⊕ B ⊕ Bin 

Borrow out = A'Bin + A'B + BBin

### Truthtable
#### Full Adder
<img width="413" alt="Screenshot 2024-03-25 at 9 03 58 AM" src="https://github.com/aaron-h-2k5/FULL_ADDER_SUBTRACTOR/assets/144250957/266d60fe-2137-491c-9301-3c0b3487268e">

#### Full Subtractor
<img width="413" alt="Screenshot 2024-03-25 at 9 02 42 AM" src="https://github.com/aaron-h-2k5/FULL_ADDER_SUBTRACTOR/assets/144250957/4408afe0-6f11-40c0-9ad0-6a4d0add06e6">

**Procedure**

1. Type the program in Quartus software.

2. Compile and run the program.

3. Generate the RTL schematic and save the logic diagram.

4. Create nodes for inputs and outputs to generate the timing diagram.

5. For different input combinations generate the timing diagram.

**Program:**

/* Program to design a half subtractor and full subtractor circuit and verify its truth table in quartus using Verilog programming. 
*/
### Developed By: NARESH.P.S
### Register number: 212223040127
```
module FULL_addsub(a,b,cin,sum,carry,BO,DIFF);
input a,b,cin;
output sum,carry,BO,DIFF;
assign sum = a^b^cin;
assign carry = (a&b) | (b&cin) | (a&cin);
wire a0;
not (a0,a);
//Write syntax for full subtractor Borrow and Difference in data flow modelling
assign DIFF = a^b^cin;
assign BO = (a0&b) | (b&cin) | (a0&cin);
endmodule
```

### RTL Schematic
![WhatsApp Image 2024-03-30 at 10 12 53](https://github.com/aaron-h-2k5/FULL_ADDER_SUBTRACTOR/assets/144250957/2a82b38e-6b93-4d9f-b47e-cee6ab218fb5)

### Output Timing Waveform
![WhatsApp Image 2024-03-30 at 10 12 52](https://github.com/aaron-h-2k5/FULL_ADDER_SUBTRACTOR/assets/144250957/30360404-5a1c-479e-9357-67df02d1df13)

### Result:

Thus the Full Adder and Full Subtractor circuits are designed and the truth tables is verified using Quartus software.



