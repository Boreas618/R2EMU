mod components;
mod cpu;

use components::mem::{mem_init, read};
use components::elf::elf_init;
use cpu::decoder;

fn main() {
    let elf = elf_init("./executables/hello-world").expect("[FATAL] Failed to load Elf\n");
    mem_init(&elf);
    for _i in (0..128).step_by(4) {
        let instruction =  read((elf.main_addr + _i ) as u64);
        println!("0x{:08x}", instruction);
        decoder::decode(instruction);
    }
}
