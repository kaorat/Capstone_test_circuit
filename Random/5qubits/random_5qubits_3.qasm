OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];

// --- Quantum Circuit Logic ---
h q[0];
ccx q[1], q[2], q[3];
z q[4];
cz q[0], q[1];
y q[2];
h q[1];
h q[3];
y q[4];
x q[3];
x q[4];
cx q[3], q[2];
h q[4];
cx q[2], q[3];
x q[4];
h q[4];

barrier q;

// --- Measurement ---
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];


//01000: 12.50%
//01001: 12.50%
//01010: 12.50%
//01011: 12.50%
//01100: 12.50%
//01101: 12.50%
//01110: 12.50%
//01111: 12.50%