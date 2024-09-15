### Part 1: ORing Three Signals Using 2-Input OR Gates

To OR three signals (C, B, A) together using only 2-input OR gates, follow this method:

- Connect signals B and A to the inputs of the first OR gate.
- The output of this OR gate is then connected to one input of the second OR gate.
- The remaining signal (C) is connected to the other input of the second OR gate.

This arrangement ensures that the output of the circuit will be the logical OR of all three inputs.

### Part 2: Truth Table for the Arrangement

Here’s the truth table for the arrangement:

| C   | B   | A   | F   |
|-----|-----|-----|-----|
| 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 1   |
| 0   | 1   | 0   | 1   |
| 0   | 1   | 1   | 1   |
| 1   | 0   | 0   | 1   |
| 1   | 0   | 1   | 1   |
| 1   | 1   | 0   | 1   |
| 1   | 1   | 1   | 1   |

### Part 3: Table Reflecting CBA Inputs and XYZ Outputs

Here’s the table reflecting all possible inputs and their corresponding outputs along with the Hex value:

| C   | B   | A   | X   | Y   | Z   | Hex   |
|-----|-----|-----|-----|-----|-----|-------|
| 0   | 0   | 0   | 0   | 0   | 0   | 0x0   |
| 0   | 0   | 1   | 0   | 0   | 1   | 0x1   |
| 0   | 1   | 0   | 0   | 1   | 0   | 0x2   |
| 0   | 1   | 1   | 0   | 1   | 1   | 0x3   |
| 1   | 0   | 0   | 1   | 0   | 0   | 0x4   |
| 1   | 0   | 1   | 1   | 0   | 1   | 0x5   |
| 1   | 1   | 0   | 1   | 1   | 0   | 0x6   |
| 1   | 1   | 1   | 1   | 1   | 1   | 0x7   |

### Part 4: Operation Explanation

The hex output effectively converts a 3-bit binary input into 8 possible combinations through the use of a multiplexed signal that weighs the input values `A`, `B`, and `C` to `1`, `2`, and `4`, respectively. Each output line represents a "power of two" such that `Z` is 2^0, `Y` is 2^1, and `X` is 2^2. This is then converted to a hexadecimal value.

### Part 5: Voltage Drop Across LED and Resistor

Given that the voltage across the LED is 4V:

- The remaining voltage across the resistor is \( 18V - 4V = 14V \).
- Using Ohm's Law, \( I = \frac{V}{R} = \frac{14V}{7000\Omega} \approx 2mA \).

### Part 6: Logic 0 and 1 in TTL

In TTL (Transistor-Transistor Logic):

- **Logic 0**: A voltage between 0V and 0.8V for TTL or, more generally, 0 to V~OL~ is considered a logical '0'.
- **Logic 1**: A voltage between 2V and 5V for TTL or, more generally, V~IH~ to V~DD~ is considered a logical '1'.

This ensures the circuit can clearly distinguish between low (0) and high (1) signals by incorporating a 'Noise Margin' where the signal can still be interpreted as a valid input. What lies inbetween is referred as the "Forbidden Zone."
