 ## How do you OR three signals together by using only 2-input OR gates?
    If you are limited to only dual input OR gates, you can stack two dual input OR gates such that the output of the first feeds into the second OR gate.

## Create a truth table for the arrangement in part a with the three signals labelled CBA and the output "F".
    C   |   B    |   A   |   F   |
    0   |   0    |   0   |   0   |
    0   |   0    |   1   |   1   |
    0   |   1    |   0   |   1   |
    0   |   1    |   1   |   1   |
    1   |   0    |   0   |   1   |
    1   |   0    |   1   |   1   |
    1   |   1    |   0   |   1   |
    1   |   1    |   1   |   1   |  

## Create a table reflecting all CBA inputs and XYZ outputs from the circuit in exercise 1. You should also include the hex value. The table will be graded on correctness.

    C   |   B    |   A   |   X   |   Y   |   Z   |   Hex   |
    0   |   0    |   0   |   0   |   0   |   0   |   0     |
    0   |   0    |   1   |   0   |   0   |   1   |   1     |
    0   |   1    |   0   |   0   |   1   |   0   |   2     |
    0   |   1    |   1   |   0   |   1   |   1   |   3     |
    1   |   0    |   0   |   0   |   1   |   1   |   4     |
    1   |   0    |   1   |   1   |   0   |   0   |   5     |
    1   |   1    |   0   |   1   |   0   |   1   |   6     |
    1   |   1    |   1   |   1   |   1   |   0   |   7     |

## Explain the operation

    The hex output effectively converts from a 3 bit binary input into 2^3 possible combinations, or 8 different combinations through the use of a multiplexed signal that weighs the input values "A, B, C", to "1, 2, 3" respectively. Each output line represents a "power of two" such that the Z is 2^0, Y is 2^1, and Z is 2^2. This is then onverted to Hex.

## LED in series with a 7k-ohm resistor with 18V applied. 

    Voltage drop 

## Logic 0 and 1 in TTL

    A logic 0 in TTL is defined as 0V-0.8V while the logic 1 is defined as 2V-5V for the input. However for the output, it is 0.0V - 0.4V for logic 0 and 2.7V to 5V for logic 1.
