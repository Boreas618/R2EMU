use std::fs;
use std::error::Error;
use goblin::elf::Elf;

#[derive(Debug)]
pub enum ElfError {
    FileReadError(String),
    ParseError(String),
}

impl std::fmt::Display for ElfError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            ElfError::FileReadError(ref err) => write!(f, "File read error: {}", err),
            ElfError::ParseError(ref err) => write!(f, "Parse error: {}", err),
        }
    }
}

impl Error for ElfError {}

pub struct Section {
    pub name: String,
    pub data: Vec<u8>,
    pub start_addr: u64
}

pub struct TargetElf {
    pub sections: Vec<Section>,
    pub main_addr: usize
}

impl TargetElf {
    pub fn new(path: &str) -> Result<Self, ElfError> {
        let buffer = fs::read(&path).map_err(|e| ElfError::FileReadError(e.to_string()))?;
        let elf = Elf::parse(&buffer).map_err(|e| ElfError::ParseError(e.to_string()))?;

        let mut sections: Vec<Section> = vec![];

        for section in &elf.section_headers {
            let name = elf.shdr_strtab.get_at(section.sh_name).unwrap_or_default();
            if name == ".text" || name == ".data" {
                let offset = section.file_range().unwrap().start;
                let size = section.file_range().unwrap().end - offset;
                let data = &buffer[offset..offset+size];
                sections.push(
                    Section{ name: name.to_string(), data: data.to_vec(), start_addr: section.sh_addr} );
            }
        }

        let mut main_addr = 0;
        for sym in &elf.syms {
            if let Some(name) = elf.strtab.get_at(sym.st_name) {
                if name == "main" {
                    main_addr = sym.st_value;
                    break;
                }
            }
        }

        Ok(TargetElf { sections: sections, main_addr: main_addr as usize })
    }
}

pub fn elf_init(path: &str) -> Result<TargetElf, ElfError>{
    let target_elf = TargetElf::new(path)?;

    Ok(target_elf)
}