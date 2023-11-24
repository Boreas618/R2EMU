use std::fs;
use std::error::Error;
use goblin::elf::Elf;

#[derive(Debug)]
pub enum ElfError {
    FileReadError(String),
    ParseError(String),
    SectionMissing(String),
}

impl std::fmt::Display for ElfError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            ElfError::FileReadError(ref err) => write!(f, "File read error: {}", err),
            ElfError::ParseError(ref err) => write!(f, "Parse error: {}", err),
            ElfError::SectionMissing(ref section) => write!(f, "Missing section: {}", section),
        }
    }
}

impl Error for ElfError {}

struct TargetElf {
    _path: String
}

impl TargetElf {
    pub fn new(path: &str) -> Result<Self, ElfError> {
        let buffer = fs::read(&path).map_err(|e| ElfError::FileReadError(e.to_string()))?;
        let elf = Elf::parse(&buffer).map_err(|e| ElfError::ParseError(e.to_string()))?;

        // Do some launching checks
        let mut sections: Vec<&str> = vec![];

        for sh in elf.section_headers {
            let name = elf.shdr_strtab.get_at(sh.sh_name).unwrap_or_default();
            sections.push(name);
        }

        if !sections.contains(&".text") {
            return Err(ElfError::SectionMissing(".text".to_string()));
        }

        if !sections.contains(&".data") {
            return Err(ElfError::SectionMissing(".data".to_string()));
        }

        Ok(TargetElf { _path: path.to_string() })
    }
}

pub fn elf_init() -> Result<(), ElfError>{
    let _target_elf = TargetElf::new("./executables/hello-world")?;

    Ok(())
}