//===-- XYGPURegisterInfo.td - Register Description --------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Define xygpu classes

class XYGPUReg<bits<8> Enc, string Name, list<string> Alt = []> : Register<Name> {
  let Namespace = "XYGPU";
  let HWEncoding{7-0} = Enc;
  let AltNames = Alt;
}

class XYGPURegWithSubRegs<string Name, list<Register> SubRegs, list<string> Alt = []>
  : RegisterWithSubRegs<Name, SubRegs> {
  let Namespace = "XYGPU";
  let HWEncoding = SubRegs[0].HWEncoding;
  let AltNames = Alt;
}

class XYGPUPReg<bits<3> Enc, string Name, list<string> Alt = []> : Register<Name> {
  let Namespace = "XYGPU";
  let HWEncoding{2-0} = Enc;
  let AltNames = Alt;
}

class XYGPUBReg<bits<4> Enc, string Name, list<string> Alt = []> : Register<Name> {
  let Namespace = "XYGPU";
  let HWEncoding{3-0} = Enc;
  let AltNames = Alt;
}


//===----------------------------------------------------------------------===//
// Define RegAltNameIndices
// Tablegen will generate getRegisterName(MCRegister Reg, unsigned AltIdx)
// instead of getRegisterName(MCRegister Reg) in XXXGenAsmWriter.inc

def RegAltName : RegAltNameIndex;


//===----------------------------------------------------------------------===//
// Define SubRegIndcies

def sub32_0 : SubRegIndex<32, 0>;
def sub32_1 : SubRegIndex<32, 32>;
def sub32_2 : SubRegIndex<32, 64>;
def sub32_3 : SubRegIndex<32, 96>;

def sub1_0 : SubRegIndex<1, 0>;
def sub1_1 : SubRegIndex<1, 1>;
def sub1_2 : SubRegIndex<1, 2>;
def sub1_3 : SubRegIndex<1, 3>;
def sub1_4 : SubRegIndex<1, 4>;
def sub1_5 : SubRegIndex<1, 5>;
def sub1_6 : SubRegIndex<1, 6>;
def sub1_7 : SubRegIndex<1, 7>;

//===----------------------------------------------------------------------===//
// Define xygpu registers

// General-purpose registers
let RegAltNameIndices = [RegAltName] in {
  foreach Idx = 0...254 in {
    def R#Idx : XYGPUReg<Idx, "r"#Idx, ["r"#Idx]>;
  }
  let isConstant = true in {
    def R255    : XYGPUReg<255, "r255", ["rz"]>;
  }

  let SubRegIndices = [sub32_0, sub32_1] in {
    foreach Idx = !range(0, 254, 2) in {
      defvar IdxAdd1 = !add(Idx, 1);
      defvar Name = "r["#Idx#":"#IdxAdd1#"]";
      def R#Idx#_D : XYGPURegWithSubRegs<Name, [!cast<Register>("R"#Idx), !cast<Register>("R"#IdxAdd1)], [Name]>;
    }
    let isConstant = true in {
      def R254_D : XYGPURegWithSubRegs<"r[254:255]", [R254, R255], ["rz"]>;
    }
  }

  let SubRegIndices = [sub32_0, sub32_1, sub32_2, sub32_3] in {
    foreach Idx = !range(0, 252, 4) in {
      defvar IdxAdd1 = !add(Idx, 1);
      defvar IdxAdd2 = !add(Idx, 2);
      defvar IdxAdd3 = !add(Idx, 3);
      defvar Name = "r["#Idx#":"#IdxAdd3#"]";
      def R#Idx#_Q : XYGPURegWithSubRegs<Name, [!cast<Register>("R"#Idx), !cast<Register>("R"#IdxAdd1), !cast<Register>("R"#IdxAdd2), !cast<Register>("R"#IdxAdd3)], [Name]>;
    }
    let isConstant = true in {
      def R252_Q : XYGPURegWithSubRegs<"r[252:255]", [R252, R253, R254, R255], ["rz"]>;
    }
  }
}

// Uniform general-purpose registers
let RegAltNameIndices = [RegAltName] in {
  foreach Idx = 0...62 in {
    def UR#Idx : XYGPUReg<Idx, "ur"#Idx, ["ur"#Idx]>;
  }
  let isConstant = true in {
    def UR63   : XYGPUReg<63, "ur63", ["urz"]>;
  }

  let SubRegIndices = [sub32_0, sub32_1] in {
    foreach Idx = !range(0, 62, 2) in {
      defvar IdxAdd1 = !add(Idx, 1);
      defvar Name = "ur["#Idx#":"#IdxAdd1#"]";
      def UR#Idx#_D : XYGPURegWithSubRegs<Name, [!cast<Register>("UR"#Idx), !cast<Register>("UR"#IdxAdd1)], [Name]>;
    }
    let isConstant = true in {
      def UR62_D : XYGPURegWithSubRegs<"ur[62:63]", [UR62, UR63], ["urz"]>;
    }
  }
}

// Predicate registers
let RegAltNameIndices = [RegAltName] in {
  foreach Idx = 0...6 in {
    def P#Idx : XYGPUPReg<Idx, "p"#Idx, ["p"#Idx]>;
  }
  let isConstant = true in {
    def P7    : XYGPUPReg<7, "p7", ["pt"]>;
  }

  let SubRegIndices = [sub1_0, sub1_1, sub1_2, sub1_3, sub1_4, sub1_5, sub1_6, sub1_7] in {
    def PR  : XYGPURegWithSubRegs<"pr", [P0, P1, P2, P3, P4, P5, P6, P7], ["pr"]>;
  }
}

// Uniform predicate registers
let RegAltNameIndices = [RegAltName] in {
  foreach Idx = 0...6 in {
    def UP#Idx : XYGPUPReg<Idx, "up"#Idx, ["up"#Idx]>;
  }
  let isConstant = true in {
    def UP7    : XYGPUPReg<7, "up7", ["upt"]>;
  }

  let SubRegIndices = [sub1_0, sub1_1, sub1_2, sub1_3, sub1_4, sub1_5, sub1_6, sub1_7] in {
    def UPR  : XYGPURegWithSubRegs<"upr", [UP0, UP1, UP2, UP3, UP4, UP5, UP6, UP7], ["upr"]>;
  }
}

// BRegs
let RegAltNameIndices = [RegAltName] in {
  foreach Idx = 0...15 in {
    def B#Idx : XYGPUBReg<Idx, "b"#Idx, ["b"#Idx]>;
  }
}


//===----------------------------------------------------------------------===//
// Define xygpu register classes

def RegRC : RegisterClass<"XYGPU", [i32], 32, (add (sequence "R%u", 0, 255))>;

def RegDRC : RegisterClass<"XYGPU", [i64], 64, (add (sequence "R%u_D", 0, 254, 2))>;

def RegQRC : RegisterClass<"XYGPU", [i128], 128, (add (sequence "R%u_Q", 0, 252, 4))>;

def URegRC : RegisterClass<"XYGPU", [i32], 32, (add (sequence "UR%u", 0, 63))>;

def URegDRC : RegisterClass<"XYGPU", [i64], 64, (add (sequence "UR%u_D", 0, 62, 2))>;

def PredRC : RegisterClass<"XYGPU", [i1], 1, (add (sequence "P%u", 0, 7))>;

def UPredRC : RegisterClass<"XYGPU", [i1], 1, (add (sequence "UP%u", 0, 7))>;

def BRegRC : RegisterClass<"XYGPU", [i32], 32, (add (sequence "B%u", 0, 15))>;

def PredAllRC : RegisterClass<"XYGPU", [v8i1], 8, (add PR)>;

def UPredAllRC : RegisterClass<"XYGPU", [v8i1], 8, (add UPR)>;
