OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[4];

x q[4];
barrier q;
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];

barrier q;

swap q[0], q[3];
cz q[1], q[2];
ccx q[0], q[1], q[4];
z q[2];
x q[3];
cx q[3], q[4];
cx q[2], q[4];
swap q[1], q[2];

barrier q;

h q[0];
h q[1];
h q[2];
h q[3];

measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];


// 1000: 25%
// 1011: 25%
// 1100: 25%
// 1111: 25%