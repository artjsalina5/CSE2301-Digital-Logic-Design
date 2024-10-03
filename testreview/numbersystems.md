# Number Systems

## Decimal Number System

- computers operate on both integers and fractional numbers
- fixed-point notation has an implied binary point

## IEEE-754 Floating Point Numbers

- 1st, convert to binary
- 2nd, normalize the binary number by "floating" the binary point to the left \( S \times M \times 2^E\)
- 3rd, convert exponent to binary
- 4th, add bias (127 for single precision, 1023 for double precision)
- 5th, convert to binary
- 6th, add sign bit
- 7th, combine all the bits

## Binary Number System

- 0s and 1s
- To convert from binary to decimal, multiply each bit by 2 raised to the power of its position
- To convert from decimal to binary, divide the number by 2 and keep track of the remainders
ie 127 to binary is 172/2 = 86 remainder 1, 86/2 = 43 remainder 0, 43/2 = 21 remainder 1, 21/2 = 10 remainder 1, 10/2 = 5 remainder 0, 5/2 = 2 remainder 1, 2/2 = 1 remainder 0, 1/2 = 0 remainder 1
- 127 in binary is 1111111
