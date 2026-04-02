OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];


cz q[1], q[2];
y q[3];
cx q[3], q[0];
swap q[1], q[4];
ccx q[3], q[4], q[0];
h q[3];
x q[4];
cx q[0], q[4];
swap q[1], q[4];
y q[1];

barrier q;


measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];


//00011: 50.00%
//01011: 50.00%
