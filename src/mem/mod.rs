use std::sync::{Arc, Mutex};
use lazy_static::lazy_static;

use crate::elf::TargetElf;

struct Memory {
    cells: Vec<u8>,
    pub text_index: usize,
    pub data_index: usize,
    pub bss_index: usize,
}

impl Memory {
    pub fn new(size: usize) -> Self {
        Memory { cells: vec![0; size], text_index: 0, data_index: 0, bss_index: 0}
    }

    pub fn read_byte(&self, address: usize) -> u8 {
        self.cells[address]
    }

    pub fn write_byte(&mut self, address: usize, value: u8) {
        self.cells[address] = value;
    }
}

lazy_static! {
    static ref GLOBAL_MEMORY: Arc<Mutex<Memory>> = Arc::new(Mutex::new(Memory::new(1024 * 1024)));
}

pub fn read(addr: usize) -> u8 {
    let mem = GLOBAL_MEMORY.lock().unwrap();
    mem.read_byte(addr)
}

pub fn write(addr: usize, val: u8) {
    let mut mem = GLOBAL_MEMORY.lock().unwrap();
    mem.write_byte(addr, val)
}

pub fn mem_init(elf: TargetElf) {
    let mut i = 0;
    let mut indices:Vec<usize> = vec![];

    for section in elf.sections {
        indices.push(i);
        for byte in section.data {
            write(i, byte);
            i += 1;
        }
    }

    indices.push(i);

    let mut mem = GLOBAL_MEMORY.lock().unwrap();
    mem.text_index = indices[0];
    mem.data_index = indices[1];
    mem.bss_index = indices[2];

}