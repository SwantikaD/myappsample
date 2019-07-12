clear;
clc;
N = 5;
A1 = hex2dec('6058') + hex2dec('0002')*65536;
A2 = hex2dec('7DB3') + hex2dec('0002')*65536;
A3 = hex2dec('9873') + hex2dec('0002')*65536;
A4 = hex2dec('A283') + hex2dec('0002')*65536;
A5 = hex2dec('966B') + hex2dec('0002')*65536;
A6 = hex2dec('79BC') + hex2dec('0002')*65536;
A7 = hex2dec('5F55') + hex2dec('0002')*65536;
A8 = hex2dec('5600') + hex2dec('0002')*65536;

A = [A1 A2 A3 A4 A5 A6 A7 A8]*(0.00003814/N)

ARe = ((A(1,1)-A(1,5))+ ((A(1,2)+A(1,8)-A(1,4)-A(1,6))/sqrt(2)));
AIm = ((A(1,7)-A(1,3))+ ((A(1,6)+A(1,8)-A(1,2)-A(1,4))/sqrt(2)));
A_Amp = sqrt(ARe^2+AIm^2)*2/8;
A_Phase = atan2d(AIm,ARe)+ 90;

fprintf('Undersample: ARe: %.4f, AIm:%.4f, A_Amp: %0.4f, A_Phase: %0.4f\n',ARe,AIm,A_Amp,A_Phase);