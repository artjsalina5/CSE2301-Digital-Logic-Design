<!--toc:start-->

- [Vocabulary](#vocabulary)
  - [What is a static hazard?](#what-is-a-static-hazard)
  - [What Does NRZ Stand for?](#what-does-nrz-stand-for)
  - [What is the difference between Polar and Unipolar encoding?](#what-is-the-difference-between-polar-and-unipolar-encoding)
  - [How is a "1" represented in Manchester Code?](#how-is-a-1-represented-in-manchester-code)
  - [What does ALU stand for?](#what-does-alu-stand-for)
  - [What is Path Sensitization?](#what-is-path-sensitization)
- [Knowledge Check](#knowledge-check)
  - [How many parity bits would we need for 12 data bits?](#how-many-parity-bits-would-we-need-for-12-data-bits)
  - [How can an 8-1 MUX be implemented using only 2-1 MUXs?](#how-can-an-8-1-mux-be-implemented-using-only-2-1-muxs)
  - [Will the checksum of POSTNET always catch an error? If not, why?](#will-the-checksum-of-postnet-always-catch-an-error-if-not-why)
  - [How many 4-bit adders are needed for a 3-bit by 4-bit multiplication?](#how-many-4-bit-adders-are-needed-for-a-3-bit-by-4-bit-multiplication)
  - [What is different about a carry-lookahead adder as opposed to a normal one?](#what-is-different-about-a-carry-lookahead-adder-as-opposed-to-a-normal-one)
  - [How do we check for parity in a triangular code?](#how-do-we-check-for-parity-in-a-triangular-code)
  <!--toc:end-->

# Vocabulary

- Primary Inputs: Inputs to the circuit that are not driven by any other circuit
  elements.
- Primary Outputs: Outputs of the circuit that are not connected to any other
  circuit elements.
- Forward Tracking: The process of propagating signals from the primary inputs
  to the primary outputs of a circuit.
- Backward Tracking: The process of propagating signals from the primary outputs
  to the primary inputs of a circuit.
- Stuck-at Faults: A type of fault where a signal line is stuck at a constant
  logic value (0 or 1).
- Fault Stimulation: The process of applying test patterns to a circuit to
  detect and locate faults.

### What is a static hazard?

- A static hazard is a glitch that occurs when the output of a circuit changes
  more than once during a single clock cycle. This can cause the circuit to behave
  unpredictably and can lead to incorrect results.

- Static hazards can occur in both combinational and sequential circuits, and
  can be caused by a variety of factors such as timing delays, feedback loops

### What Does NRZ Stand for?

- NRZ stands for Non-Return-to-Zero. It is a type of line code used in digital
  communications where the signal level is constant for the duration of the bit.

- To get more important information about NRZ, you can visit this
  [link](https://en.wikipedia.org/wiki/Non-return-to-zero)

### What is the difference between Polar and Unipolar encoding?

- Polar encoding refers to a type of line code where the signal levels are
  positive and negative, representing binary 1 and 0 respectively.

- Unipolar encoding, on the other hand, uses only positive signal levels to
  represent binary 1, while binary 0 is represented by a zero signal level.

### How is a "1" represented in Manchester Code?

- A Manchester code is a type of line code where the signal level changes in the
  middle of the bit period. In Manchester code, a "1" is represented by a
  transition from a low to a high signal level in the middle of the bit period.

- A "1" is represented by a transition from a low to a high signal level in the
  middle of the bit period.

- For more information about Manchester Code, you can visit this
  [link](https://en.wikipedia.org/wiki/Manchester_code)

### What does ALU stand for?

- ALU stands for Arithmetic Logic Unit. It is a digital circuit that performs
  arithmetic and logical operations on binary numbers.

- The ALU is a fundamental building block of the central processing unit (CPU)
  of a computer, and is responsible for performing operations such as addition,
  subtraction, multiplication, division, and bitwise logical operations.

### What is Path Sensitization?

- Path Sensitization refers to the process of identifying the paths in a circuit
  that are sensitive to a particular input signal.

- By identifying the sensitized paths in a circuit, we can determine which
  combinations of input signals will cause the circuit to produce a particular
  output.

# Knowledge Check

## How many parity bits would we need for 12 data bits?

- Given the formula equation for the number of parity bits needed for a given
  number we would need 4 parity bits for 12 data bits.

```math
2^p >= m + p + 1 -- Richard Hamming
```

- Essentially, it is a logarithmic function that calculates the number of parity
  bits needed for a given number of data bits.

## How can an 8-1 MUX be implemented using only 2-1 MUXs?

- Simply put, each 2-1 MUX can be stacked in a binary fashion, that is, we know
  we need 2^n 2-1 MUXs to implement an n-but MUX.
- We start with the least significant bit and work our way up to the most
  significant bit.
- The first row of 2-1 MUXs will be stacked such as:

`code 2-1 MUX 1 2-1 MUX 2 2-1 MUX 3 2-1 MUX 4`

with the first selection bit passed through all of them.

- The second row will be stacked such as:

`code 2-1 MUX 1 2-1 MUX 2`

with the second selection bit passed through them.

- The final output will be the output of the most significant bit.

## Will the checksum of POSTNET always catch an error? If not, why?

- A POSTNET code is just a binary representation of a ZIP code. It is used to
  encode ZIP codes for postal services.
- The weighting of each digit is 7-4-2-1, with the last digit being the checksum
  digit.
- To decode the last digit, the sum of all the digits is calculated and the
  checksum digit is the number that when added to the sum is divisible by 10.
- This means that the checksum digit is not always guaranteed to catch an error
  as there are cases where the sum of the digits and the checksum digit will be
  divisible by 10.

## How many 4-bit adders are needed for a 3-bit by 4-bit multiplication?

- Again, to solve this we must think in binary terms. A 3-bit by 4-bit
  multiplication is essentially 3 4-bit numbers being multiplied together.
- To simplify, we can think of 2^n 4-bit adders being needed for an n-bit by
  4-bit multiplication.
- This means that 2^3 4-bit adders will be needed for a 3-bit by 4-bit
  multiplication. This is 8.

## What is different about a carry-lookahead adder as opposed to a normal one?

- A carry-lookahead is slightly faster as it calculates the carry bit for each
  bit position in parallel, rather than waiting for the carry bit to propagate
  through the adder.

- This is done by using a series of logic gates to calculate the carry bit for
  each bit position based on the input signals, rather than waiting for the carry
  bit to propagate through the adder.

## How do we check for parity in a triangular code?

- A triangular codes simply means that the parity bits are arranged in a
  triangular pattern. This is done to reduce the number of parity bits needed

- To check for parity in a triangular code, we can use the same method as we
  would for a regular parity code. We calculate the sum of all the bits in the
  code and check if it is even or odd.

```math 0 1 1 1 0 1 0 C8 = ? 1 0 1 0 1 0 C4 = ?

```

<!-- vim:set noai tw=80 ts=2 sw=2: -->
