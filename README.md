# R $^2$ EMU

A **R**ISC-V **EMU**lator in **R**ust.

## Features

* Load and run RISC-V executables
* Simple GDB-like tool for debugging

## Build and Run

1. Compile your `.c` program into elf:

   ```shell
   riscv64-unknown-elf-gcc -march=rv64g -o <name-of-output-file> <name-of-source-files>
   ```

   Note that we remove the compressed instructions in order to make instruction decoding easier.

2. Place the elf under ./executables

3. Build and run:

   ```shell
   cargo run
   ```
