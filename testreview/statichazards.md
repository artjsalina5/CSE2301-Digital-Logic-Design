# Static and Dynamic Hazards

## Static Hazards

- Static hazards are the hazards that occur in the output of a combinational circuit due to change in the input variables.

- Static hazards are of two types:

  - **1. Essential Static Hazard:** It is the hazard that occurs in the output of a combinational circuit due to change in the input variables.

  - **2. Redundant Static Hazard:** It is the hazard that occurs in the output of a combinational circuit due to change in the input variables.

- Static hazards can be eliminated by adding some additional gates to the circuit.
- The Karnaugh Map can give a clue as to where the hazard is occurring.
- We avoid this by adding a redundant term to the K-map.

- The redundant term is added in such a way that it does not affect the output of the circuit.

### Static-1 hazard

- A static-1 hazard occurs when the output of a circuit changes from 1 to 0 and then back to 1.

- The output of the circuit should remain at 1.

### Static-0 Hazard

- A static-0 Hazard typically occurs during Sum-of-Products.

- The only exist if both variable and compliment are connected to the same AND gate

## Dynamic Hazards

- Dynamic hazards are the hazards that occur in the output of a combinational circuit due to change in the input variables.
  Dynamic hazards can be eliminated by adding some additional gates to the circuit.
  It is the possibility of an output changing more than once

## Troubleshooting

### Terminology

- Primary inputs and outputs
- Forward tracing
- Backward tracking
- Stuck-at-faults
- Fault stimulation
- Path sensitization
- Test Vector

### Stuck at faults

- Fault Stimulation - Setting the input conditions opposite to which you suspect
- Path Sensitization - Setting the input conditions to the fault
- Test Vector - The input conditions that will detect the fault
