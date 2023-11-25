use std::{sync::{Arc, Mutex}, vec};
use lazy_static::lazy_static;

use super::elf::TargetElf;

struct Memory {
    cells: Vec<u8>,
    pub text_index: u64,
    pub data_index: u64,
    pub bss_index: u64,
}

impl Memory {
    pub fn new(size: u64) -> Self {
        Memory { cells: vec![0; size as usize], text_index: 0, data_index: 0, bss_index: 0}
    }

    pub fn read_byte(&self, address: u64) -> u8 {
        self.cells[address as usize]
    }

    pub fn write_byte(&mut self, address: u64, value: u8) {
        self.cells[address as usize] = value;
    }
}

lazy_static! {
    static ref GLOBAL_MEMORY: Arc<Mutex<Memory>> = Arc::new(Mutex::new(Memory::new(1024 * 1024)));
}

pub fn read(addr: u64) -> u32 {
    let mem = GLOBAL_MEMORY.lock().unwrap();
    let mut bytes = [0, 0, 0, 0];
    for i in 0..4 {
        bytes[i] = mem.read_byte(addr + i as u64);
    }
    let out = u32::from_le_bytes(bytes);

    out
}

pub fn write(addr: u64, val: u8) {
    let mut mem = GLOBAL_MEMORY.lock().unwrap();
    mem.write_byte(addr, val)
}

pub fn mem_init(elf: &TargetElf) {
    let mut i = 0;
    let mut indices:Vec<u64> = vec![];

    for section in &elf.sections {
        i = section.start_addr;
        indices.push(i);
        for byte in &section.data {
            write(i, *byte);
            i += 1;
        }
    }

    let mut mem = GLOBAL_MEMORY.lock().unwrap();
    mem.text_index = indices[0];
    mem.data_index = indices[1];
}