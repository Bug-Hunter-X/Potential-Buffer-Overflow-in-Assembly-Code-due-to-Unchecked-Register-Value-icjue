# Assembly Code Bug: Potential Buffer Overflow

This repository demonstrates a potential buffer overflow vulnerability in a short snippet of assembly code. The code attempts to access memory using an address calculated from registers without any bounds checking. This can lead to a segmentation fault or unpredictable behavior if the registers contain unusually large values.

## Bug Description
The `mov eax, [ebx+ecx*4]` instruction calculates a memory address by adding `ebx` to the product of `ecx` and 4.  If `ecx` is a large number, the resulting address might be outside the allocated memory space, leading to an out-of-bounds access and a crash.

## Solution
The solution involves adding bounds checking before accessing memory.  This ensures that `ecx` is within a safe range preventing memory access violations.