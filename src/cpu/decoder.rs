use super::handlers::*;
use lazy_static::lazy_static;
use std::collections::HashMap;

type InstHandler = fn(u32);

lazy_static! {
    static ref OPCODE_MAP: HashMap<u32, InstHandler> = {
        let mut opcode_map = HashMap::new();
        opcode_map.insert(0x03, load_handler as InstHandler);           // LOAD
        opcode_map.insert(0x07, load_fp_handler as InstHandler);        // LOAD_FP
        opcode_map.insert(0x0F, misc_mem_handler as InstHandler);       // MISC_MEM
        opcode_map.insert(0x13, op_imm_handler as InstHandler);         // OP_IMM
        opcode_map.insert(0x17, auipc_handler as InstHandler);          // AUIPC
        opcode_map.insert(0x1B, op_imm_32_handler as InstHandler);      // OP_IMM_32
        opcode_map.insert(0x23, store_handler as InstHandler);          // STORE
        opcode_map.insert(0x27, store_fp_handler as InstHandler);       // STORE_FP
        opcode_map.insert(0x2F, amo_handler as InstHandler);            // AMO
        opcode_map.insert(0x33, op_handler as InstHandler);             // OP
        opcode_map.insert(0x37, lui_handler as InstHandler);            // LUI
        opcode_map.insert(0x3B, op_32_handler as InstHandler);          // OP_32
        opcode_map.insert(0x43, madd_handler as InstHandler);           // MADD
        opcode_map.insert(0x47, msub_handler as InstHandler);           // MSUB
        opcode_map.insert(0x4B, nmsub_handler as InstHandler);          // NMSUB
        opcode_map.insert(0x4F, nmadd_handler as InstHandler);          // NMADD
        opcode_map.insert(0x53, op_fp_handler as InstHandler);          // OP_FP
        opcode_map.insert(0x63, branch_handler as InstHandler);         // BRANCH
        opcode_map.insert(0x67, jalr_handler as InstHandler);           // JALR
        opcode_map.insert(0x6B, jal_handler as InstHandler);            // JAL
        opcode_map.insert(0x73, system_handler as InstHandler);         // SYSTEM

        opcode_map
    };
}

pub fn decode(inst: u32) {
    let handler = OPCODE_MAP
        .get(&(inst & 0x007f))
        .expect("[FATAL] Opcode Not Found.");
    handler(inst);
}
