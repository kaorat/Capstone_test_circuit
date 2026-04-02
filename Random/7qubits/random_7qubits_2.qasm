OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
y q[4];
cz q[4],q[3];
z q[5];
swap q[3],q[1];
cz q[0],q[5];
h q[6];
y q[6];
cz q[2],q[5];
h q[5];
swap q[0],q[3];
cx q[0],q[2];
x q[6];
swap q[2],q[1];
z q[3];
ccx q[5],q[4],q[3];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];

//0010000: 25.0000%
//0111000: 25.0000%
//1010000: 25.0000%
//1111000: 25.0000%