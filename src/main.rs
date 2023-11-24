use crate::elf::elf_init;

mod mem;
mod elf;

fn main() {
    elf_init().expect("[FATAL] Failed to load Elf");
}
