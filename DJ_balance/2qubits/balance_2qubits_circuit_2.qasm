OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[1];

x q[1];
barrier q;
h q[0];
h q[1];

barrier q[0], q[1];

z q[0];
x q[0];
cz q[0], q[1];
swap q[0], q[1];
x q[1];
cx q[1], q[0];
swap q[0], q[1];

barrier q[0], q[1];

h q[0];
measure q[0] -> c[0];

//0: 50.00%
//1: 50.00%