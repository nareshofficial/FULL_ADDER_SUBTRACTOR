

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
### Developed By: NARESH.p.s
### Register number: 212223040127
```

## Full_adder
module ex5(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire w1,w2,w3,w4;       
xor(w1,a,b);
xor(sum,w1,cin);        

and(w2,a,b);
and(w3,b,cin);
and(w4,cin,a);

or(carry,w2,w3,w4);
endmodule 

## Full_subtractor
module ex5(df,bo,a,b,bin);
output df,bo;
input a,b,bin;
wire w1,w2,w3;
assign w1=a^b;
assign w2=(~a&b);
assign w3=(~w1&bin);
assign df=w1^bin;
assign bo=w2|w3;
endmodule


```

### RTL Schematic
![319855210-8e962897-cc6b-4cf5-83bb-b022ab4f2950](https://github.com/nareshofficial/FULL_ADDER_SUBTRACTOR/assets/155141830/b0219b23-5e76-4558-9fe3-dadf37ecd277)
![319871549-28461f45-19a2-46dd-984e-17424abe2905](https://github.com/nareshofficial/FULL_ADDER_SUBTRACTOR/assets/155141830/1ab621c3-72b6-40ad-a6d6-2462675b46f1)



### Output Timing Waveform

![319877323-9a365a36-d985-43a9-8079-4faa42373cda](https://github.com/nareshofficial/FULL_ADDER_SUBTRACTOR/assets/155141830/dd250e44-5541-4409-bbee-d5dd38df232e)

![319871575-8bb71c44-59e2-4c7d-82ea-7a7e6c4f1601](https://github.com/nareshofficial/FULL_ADDER_SUBTRACTOR/assets/155141830/4f7d35c3-836a-4442-a477-2e0fa733e070)

### Result:

Thus the Full Adder and Full Subtractor circuits are designed and the truth tables is verified using Quartus software.



