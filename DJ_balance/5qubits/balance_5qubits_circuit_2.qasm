OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[4];

x q[4];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];

barrier q;

z q[0];
cz q[0], q[2];
swap q[1], q[3];
ccx q[2], q[3], q[4];
x q[0];
cx q[0], q[4];
swap q[0], q[1];
cx q[1], q[4];

barrier q;

h q[0];
h q[1];
h q[2];
h q[3];

measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];