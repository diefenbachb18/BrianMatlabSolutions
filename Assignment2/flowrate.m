%This script takes a user flowrate input in m^3/s and converts it to a flow
%rate of f^3 per second. 

frmps = input('Enter the flow rate in m^3/s: '); %input the flow rate
frfps = (frmps/.028); %code to convert to feet per second
fprintf('A flow rate of %5.3f meters per sec \n', frmps) %Print flow rate
fprintf('is equivalent to %6.3f feet per sec \n', frfps)