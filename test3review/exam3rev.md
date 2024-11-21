# **Exam 3 Review: Sequential Circuits and State Machines**

---
 
### **Definitions and Types**
- **SR Flip-Flop**: Basic latch; avoid \( S = R = 1 \).
- **D Flip-Flop**: \( Q^+ = D \), eliminates indeterminate states.
- **JK Flip-Flop**: Most versatile, \( Q^+ = J \cdot \overline{Q} + \overline{K} \cdot Q \).
- **T Flip-Flop**: \( T = J = K \), toggles when \( T = 1 \).

### **Characteristic Equations**
- **SR**: \( S \cdot R = 0 \).
- **D**: \( Q^+ = D \).
- **JK**: \( Q^+ = J \cdot \overline{Q} + \overline{K} \cdot Q \).
- **T**: \( Q^+ = T \oplus Q \).

### **Practice**
- Complete truth tables.
- Draw JK and D flip-flop symbols.

---

## **2. Registers and Counters**
### **Shift Registers**
- **Left Shift**: Multiplies by 2.
- **Right Shift**: Divides by 2.

### **Counters**
- **Binary Counters**: Counts up or down in binary.
- **Modulo Counters**: Reset after \( N \) states (e.g., Mod-4).
- **Johnson Counter**: Feedback creates a twisted ring counter.

### **Key Question**
How many flip-flops for \( N \) states?
\[
\text{Flip-Flops} = \lceil \log_2 N \rceil
\]

---

## **3. State Machines**
### **State Types**
- **Moore**: Output depends only on current state.
- **Mealy**: Output depends on current state and input.

### **Design Steps**
1. Define the problem.
2. Draw state diagram.
3. Create state/output table.
4. Assign binary values to states.
5. Simplify flip-flop inputs using K-maps.
6. Draw final logic circuit.

### **Examples**
- Sequence Detector: "111" or "11011" with overlaps.
- Modulo Counters.

---

## **4. Karnaugh Maps**
### **Purpose**
Simplify logical expressions for flip-flop inputs.

### **Steps**
1. Identify inputs and outputs.
2. Fill in K-map.
3. Simplify using groups of \( 1s \) and \( Xs \) (don’t cares).

---

## **5. Practical Applications**
### **Subsequence Counting**
- Detect "1011" in a bitstream.
- Use a sliding window to include overlaps.

### **Multipliers**
- Sequential multiplier example: 4-bit by 3-bit multiplier.

---

## **6. Timing Diagrams**
### **Key Parameters**
- **Setup Time**: Time before clock edge to stabilize input.
- **Hold Time**: Time after clock edge to hold input.
- **Propagation Delay**: Time for input change to propagate to output.

### **Practice**
- Draw Q1, Q2 transitions based on circuits.

---

## **7. Key Formulas and Concepts**
1. Flip-Flop Truth Tables:
   - Memorize SR, D, JK, and T flip-flop behaviors.
2. Sequential Circuit Flow:
   - Input → Next State → Output.
3. State Machine Reduction:
   - Merge equivalent states.

---

## **8. True/False and MCQs**
### **True/False**
- Left shift = Multiply by 2.
- Right shift = Divide by 2.

### **Multiple Choice**
1. How many times does "1011" appear in "11001011011010" (with overlaps)?
   - **Answer**: 4
2. Number of flip-flops for 17 states?
   - **Answer**: \( \lceil \log_2 17 \rceil = 5 \).

---

## **Practice Problems**
1. Fill out JK flip-flop truth tables.
2. Simplify K-maps for flip-flop inputs.
3. Design a sequence detector for "111" and "11011".
4. Draw timing diagrams for given circuits.
5. Analyze state/output tables and transition diagrams.

---

**Good luck on Exam 3!**
