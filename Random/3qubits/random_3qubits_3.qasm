OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];


ccx q[0],q[2],q[1];
cx q[1], q[0];
ccx q[0],q[1],q[2];
h q[1];
cz q[0], q[1];
cx q[0],q[1];

barrier q;
measure q -> c;

//000: 50.00%
//010: 50.00%