# IEEE-754 Format

## Single Precision

### Sign Bit

The sign bit is the leftmost bit of the 32-bit IEEE-754 representation. It is 0 for positive numbers and 1 for negative numbers.

### Exponent

The next 8 bits represent the exponent. The exponent is biased by 127, which means that the actual exponent is the value of the 8-bit field minus 127. This allows for both positive and negative exponents to be represented.

### Mantissa

The remaining 23 bits represent the mantissa. The mantissa is the fractional part of the number and is used to represent the precision of the floating-point number.

The whole point of this is to float the decimal point to a more convenient location to store the floating value in 32 bits.
The first bit is the sign bit
The second 8 bits are the Exponent with the first bit being the sign bit

Finally, the mantissa that is the remaining 23 bits
This means that the mantissa is the fractional part of the number and is used to represent the precision of the floating-point number.
