OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];


ccx q[1], q[2], q[0];
y q[3];
z q[0];
ccx q[1], q[4], q[2];
cz q[0], q[1];
x q[3];
z q[1];
cx q[4], q[2];
ccx q[0], q[2], q[1];
y q[4];
h q[0];
z q[2];
x q[0];
y q[2];
x q[0];

barrier q;

measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];