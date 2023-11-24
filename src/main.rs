use mem::mem_init;

use crate::elf::elf_init;

mod mem;
mod elf;

fn main() {
    let elf = elf_init("./executables/hello-world").expect("[FATAL] Failed to load Elf\n");
    mem_init(elf);
}
