OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[8];
z q[1];
h q[6];
swap q[3],q[6];
y q[5];
ccx q[6],q[5],q[9];
x q[8];
h q[2];
ccx q[9],q[6],q[5];
h q[9];
cx q[9],q[6];
y q[5];
x q[8];
swap q[7],q[1];
y q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];

//0000001000: 12.50%
//0010001000: 12.50%
//0001001000: 12.50%
//0011001000: 12.50%
//0000000001: 12.50%
//0010000001: 12.50%
//0001000001: 12.50%
//0011000001: 12.50%