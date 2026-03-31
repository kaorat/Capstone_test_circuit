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

// Constant oracle, still equivalent to f(x) = 1
x q[0];
cx q[0], q[2];
x q[0];
cx q[0], q[2];

swap q[1], q[2];
x q[1];
swap q[1], q[2];

h q[2];
z q[2];
h q[2];

barrier q;

h q[0];
h q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];
