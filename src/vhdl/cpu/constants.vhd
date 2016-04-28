library IEEE;
use IEEE.STD_LOGIC_1164.all;

package constants is

constant XLEN:	integer := 32;
constant XLEN_ZERO: std_logic_vector(XLEN-1 downto 0) := X"00000000";
constant XLEN_ONE: std_logic_vector(XLEN-1 downto 0) := X"00000001";

-- Opcodes
constant OP_OP: 		std_logic_vector(4 downto 0) := "01100"; -- R-type

constant OP_JALR:		std_logic_vector(4 downto 0) := "11001"; -- I-type
constant OP_LOAD: 	std_logic_vector(4 downto 0) := "00000"; -- I-type
constant OP_OPIMM: 	std_logic_vector(4 downto 0) := "00100"; -- I-type
constant OP_SYSTEM: 	std_logic_vector(4 downto 0) := "11100"; -- I-type
constant OP_MISCMEM: std_logic_vector(4 downto 0) := "00011"; -- I-type?

constant OP_STORE: 	std_logic_vector(4 downto 0) := "01000"; -- S-type

constant OP_BRANCH: 	std_logic_vector(4 downto 0) := "11000"; -- SB-type

constant OP_LUI: 		std_logic_vector(4 downto 0) := "01101"; -- U-type
constant OP_AUIPC: 	std_logic_vector(4 downto 0) := "00101"; -- U-type

constant OP_JAL: 		std_logic_vector(4 downto 0) := "11011"; -- UJ-type

constant FUNC_JALR:	std_logic_vector(2 downto 0) := "000";

-- Functions

constant FUNC_BEQ:	std_logic_vector(2 downto 0) := "000";
constant FUNC_BNE:	std_logic_vector(2 downto 0) := "001";
constant FUNC_BLT:	std_logic_vector(2 downto 0) := "100";
constant FUNC_BGE:	std_logic_vector(2 downto 0) := "101";
constant FUNC_BLTU:	std_logic_vector(2 downto 0) := "110";
constant FUNC_BGEU:	std_logic_vector(2 downto 0) := "111";

constant FUNC_LB:		std_logic_vector(2 downto 0) := "000";
constant FUNC_LH:		std_logic_vector(2 downto 0) := "001";
constant FUNC_LW:		std_logic_vector(2 downto 0) := "010";
constant FUNC_LBU:	std_logic_vector(2 downto 0) := "100";
constant FUNC_LHU:	std_logic_vector(2 downto 0) := "101";

constant FUNC_SB:		std_logic_vector(2 downto 0) := "000";
constant FUNC_SH:		std_logic_vector(2 downto 0) := "001";
constant FUNC_SW:		std_logic_vector(2 downto 0) := "010";

constant FUNC_ADDI:	std_logic_vector(2 downto 0) := "000";
constant FUNC_SLLI:	std_logic_vector(2 downto 0) := "001";
constant FUNC_SLTI:	std_logic_vector(2 downto 0) := "010";
constant FUNC_SLTIU:	std_logic_vector(2 downto 0) := "011";
constant FUNC_XORI:	std_logic_vector(2 downto 0) := "100";
constant FUNC_SRLI_SRAI:	std_logic_vector(2 downto 0) := "101";
constant FUNC_ORI:	std_logic_vector(2 downto 0) := "110";
constant FUNC_ANDI:	std_logic_vector(2 downto 0) := "111";

constant FUNC_ADD_SUB:	std_logic_vector(2 downto 0) := "000";
constant FUNC_SLL:	std_logic_vector(2 downto 0) := "001";
constant FUNC_SLT:	std_logic_vector(2 downto 0) := "010";
constant FUNC_SLTU:	std_logic_vector(2 downto 0) := "011";
constant FUNC_XOR:	std_logic_vector(2 downto 0) := "100";
constant FUNC_SRL_SRA:	std_logic_vector(2 downto 0) := "101";
constant FUNC_OR:		std_logic_vector(2 downto 0) := "110";
constant FUNC_AND:	std_logic_vector(2 downto 0) := "111";

constant FUNC_FENCE:	std_logic_vector(2 downto 0) := "000";
constant FUNC_FENCEI:	std_logic_vector(2 downto 0) := "001";

constant FUNC_SCALL_SBREAK:	std_logic_vector(2 downto 0) := "000";
constant FUNC_RD:	std_logic_vector(2 downto 0) := "010";


constant R0:	std_logic_vector(4 downto 0) := "00000";
constant R1:	std_logic_vector(4 downto 0) := "00001";
constant R2:	std_logic_vector(4 downto 0) := "00010";
constant R3:	std_logic_vector(4 downto 0) := "00011";
constant R4:	std_logic_vector(4 downto 0) := "00100";
constant R5, T0:	std_logic_vector(4 downto 0) := "00101";
constant R6, T1:	std_logic_vector(4 downto 0) := "00110";
constant R7, T2:	std_logic_vector(4 downto 0) := "00111";
constant R8:	std_logic_vector(4 downto 0) := "01000";
constant R9:	std_logic_vector(4 downto 0) := "01001";
constant R10:	std_logic_vector(4 downto 0) := "01010";
constant R11:	std_logic_vector(4 downto 0) := "01011";
constant R12:	std_logic_vector(4 downto 0) := "01100";
constant R13:	std_logic_vector(4 downto 0) := "01101";
constant R14:	std_logic_vector(4 downto 0) := "01110";
constant R15:	std_logic_vector(4 downto 0) := "01111";
constant R16:	std_logic_vector(4 downto 0) := "10000";
constant R17:	std_logic_vector(4 downto 0) := "10001";
constant R18:	std_logic_vector(4 downto 0) := "10010";
constant R19:	std_logic_vector(4 downto 0) := "10011";
constant R20:	std_logic_vector(4 downto 0) := "10100";
constant R21:	std_logic_vector(4 downto 0) := "10101";
constant R22:	std_logic_vector(4 downto 0) := "10110";
constant R23:	std_logic_vector(4 downto 0) := "10111";
constant R24:	std_logic_vector(4 downto 0) := "11000";
constant R25:	std_logic_vector(4 downto 0) := "11001";
constant R26:	std_logic_vector(4 downto 0) := "11010";
constant R27:	std_logic_vector(4 downto 0) := "11011";
constant R28:	std_logic_vector(4 downto 0) := "11100";
constant R29:	std_logic_vector(4 downto 0) := "11101";
constant R30:	std_logic_vector(4 downto 0) := "11110";
constant R31:	std_logic_vector(4 downto 0) := "11111";


-- commands for register unit

constant REGOP_READ: 		std_logic_vector(1 downto 0) := "00";
constant REGOP_WRITE_ALU:	std_logic_vector(1 downto 0) := "10";
constant REGOP_WRITE_MEM:	std_logic_vector(1 downto 0) := "11";


-- commands for PC unit

constant PCOP_RESET: std_logic := '0';
constant PCOP_NEWPC: std_logic := '1';

-- commands for MEM unit

constant MEMOP_READB:	std_logic_vector(2 downto 0) := "000";
constant MEMOP_READBU: 	std_logic_vector(2 downto 0) := "001";
constant MEMOP_READH: 	std_logic_vector(2 downto 0) := "010";
constant MEMOP_READHU: 	std_logic_vector(2 downto 0) := "011";
constant MEMOP_READW: 	std_logic_vector(2 downto 0) := "100";
constant MEMOP_WRITEB: 	std_logic_vector(2 downto 0) := "101";
constant MEMOP_WRITEH:	std_logic_vector(2 downto 0) := "110";
constant MEMOP_WRITEW:	std_logic_vector(2 downto 0) := "111";



end constants;

package body constants is
 
end constants;