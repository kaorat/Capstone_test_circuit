OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[2];

x q[2];
barrier q;
h q[0];
h q[1];
h q[2];

barrier q;

swap q[0], q[1];
cz q[0], q[1];
ccx q[0], q[1], q[2];
x q[1];
cx q[1], q[2];
x q[1];

barrier q;

h q[0];
h q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];

// 10: 100%