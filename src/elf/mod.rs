use std::fs;
use goblin::elf::Elf;

struct TargetElf {
    path: String
}

impl TargetElf {
    pub fn new(path: String) -> Self {
        let buffer = fs::read(&path).expect("Failed to read the file.");
        let elf = Elf::parse(&buffer).expect("Failed to parse Elf.");

        // Do some launching checks
        let mut sections: Vec<String> = vec![];

        for sh in elf.section_headers {
            let name = elf.shdr_strtab.get_at(sh.sh_name).unwrap_or_default();
            sections.push(String::from(name));
        }

        assert!(sections.contains(&String::from(".text")));
        assert!(sections.contains(&String::from(".data")));

        TargetElf { path: path}
    }
}

pub fn elf_init() {
    let target_elf = TargetElf::new(String::from("./executables/hello-world"));
}