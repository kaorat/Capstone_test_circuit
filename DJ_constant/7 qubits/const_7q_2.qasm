OPENQASM 2.0;
include "qelib1.inc";

qreg q[7];
creg c[6];

x q[6];
barrier q;
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];

barrier q;

// Constant oracle, still equivalent to f(x) = 1
x q[1];
cx q[1], q[6];
x q[1];
cx q[1], q[6];

swap q[2], q[6];
x q[2];
swap q[2], q[6];

x q[5];
cx q[5], q[6];
x q[5];
cx q[5], q[6];

barrier q;

h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];

measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
