use std::sync::{Arc, Mutex};
use lazy_static::lazy_static;

struct Memory {
    cells: Vec<u8>,
}

impl Memory {
    pub fn new(size: usize) -> Self {
        Memory { cells: vec![0; size]}
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