OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
z q[6];
x q[6];
cz q[1],q[4];
z q[4];
ccx q[6],q[2],q[0];
cx q[2],q[1];
h q[4];
h q[2];
x q[0];
cx q[2],q[4];
y q[4];
cx q[4],q[0];
cz q[0],q[5];
h q[6];
z q[2];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];


//0000001: 12.5000%
//0000101: 12.5000%
//0010000: 12.5000%
//0010100: 12.5000%
//1000001: 12.5000%
//1000101: 12.5000%
//1010000: 12.5000%
//1010100: 12.5000%