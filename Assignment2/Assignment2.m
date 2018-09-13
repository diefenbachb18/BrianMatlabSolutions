%Name: Brian Diefenbach
%Due Date: 9/13/2018
%This file contains Chapter 1, 2 and 3 solutions from the textbook. Enjoy. 

%%Chapter 1 Exercises
%1.)
%This is the atomic weight of copper
AWCopper = 63.55;

%2.)
myage=22;
myage=myage-2;
myage=myage+1;

%3). 
% namelengthmax=63
%You can have a max of 63 characters to name a variable, any characters
%after that will be truncated.

%4).
%Conversion from pounds to ounces. 
pounds=2;
ounces=pounds*16;

%5).
% intmax = 2147483647
% intmin = -2147483647
%Range of -2147483647 to 2147483647 when storing values in type uint32 and
%uint64. 

%6). 
decnum=6.7;
decnum=uint32(decnum);
%changing it to a int32 makes it no longer a decimal

%11).
%Conversion from pounds to kilos. 
pounds=16;
kilos=pounds/2.2;

%12).
%Converting a F temp of 65 degrees to C. 
ftemp=65;
ctemp=(ftemp-32)*5/9;

%13). 
%Converting from inches to meters
inch = 4;
meters = inch * 0.0254;

%14).
%Showing that sind of 90 is the same as sin of 1.5708. 
%sind(90)=1
% sin(1.5708)=1

%15). 
%Finding the total resistance of three resistors. 
R1 = 7
R2 = 8
R3 = 9
RT = 1/((1/R1)+(1/R2)+(1/R3))

%22). 
%In character encoding, switching from letters to numbers using their numbering system, lower case comes first before upper case. 

%24). 
%True
%True
%1
%False

%25). 
%There has to be a shorter and simpler way to do this, but this is the way
%that makes sense and works to me. 
if x>5
    if y<10
       2==3
    else
        3==3
    end
else x<=5
    if y<10
        3==3
    else
        2==3
    end
end

%26).
%3*10^5==3e5
%They are equal. 
%27).
%log10(10000)=4
%It is equal to 4. 

%%Chapter 2 Exercises
%1.)
A=[2:7]
B=[1.1:.2:1.7]
C=[8:-2:2]
%2.)
%Vector of 50 elements from 0 to 2pi that are spaced equally.
vec=[0:(2*pi)/49:2*pi]
%3.)
linspace(2,3,6)
%4.)
A=-5:1:-1
A=linspace(-5,-1,5)
B=5:2:9
B=linspace(5,9,3)
C=8:-2:4
C=linspace(8,4,3)
%6.)
%Column vector with values from -1 to 1 in steps of 0.5 
A=(-1:.5:1)'
%7.)
%Pulls out the odd numbered elements in a matrix of any size.
%if vec=original vector
vec=[1:5:100]
oddvec=vec(1:2:end)
%8.)
mat = [7:1:10;12:-2:6]
A=mat(1,3)
B=mat(2,:)
C=mat(:,1:2)
%9.)
mat=[1:4;5:8] %Original Matrix
n=numel(mat) %Finding number of elements in mat
[r,c]=size(mat) %Finding number of rows and columns.
r*c==n %Number of elements is equal to number of rows x columns. 
%10.)
%Replacing the first row and the third column. 
mat=[10:13;5:8]
mat(1,:)=(1:4)
mat(:,3)=5
%12.)
%Matrix of all zeroes that has random dimensions from 1-5. 
rows=randi(5,1)
cols=randi(5,1)
zeros=zeros(rows,cols)
%23.)
%Finding the sum of 3, 5, 7, 9 and 11. 
A=sum(3:2:11)
%26.)
%Finding sum of fractions (A) by putting the den and num in their own vector. 
num=[3:2:9]
den=[1:4]
A=sum(num./den)
%30.)
mat = randi([-10,10],1,10)
mat = mat-3 %Subtract 3 from mat. 
pos = numel(find(mat>0)) %If zero is considered not positive. If you do consider zero positive it would be (mat>=0). 
maximum=max(mat) %Find max in the vector. 

%31.)
mat=randi([1,100],3,5)
maxcol=max(mat) %Max in each column. 
maxrow=(max(mat')')%Max in each row
maxall=max(max(mat)')%Max of Matrix

%%Chapter 3 Exercises
%1.)
%See VolumeHollowSphere.m script
%4.)
%vec = input('Enter a vector: ')
%When it prompts you to enter a vector, if you want to get a matrix you can
%use brackets and a semicolon to return to the next row of a matrix, like
%shown below. 
%Enter a vector: [4:7;4:7]
%4 5 6 7
%4 5 6 7
%6.)
%fprintf(12345.6789) without specificying field width prodcues error,
%invalid file indetifier. 
%fprintf('%10.4f',12345.6789) = 12345.6789 FW of 10 with 4 decimal places
%produes the original number still
%fprintf('%10.2f',12345.6789) = 12345.68 FW of 10 with 2 decimal places; The decimal digits are rounded to the
%second place after the decimal
%fprintf('%6.4f',12345.6789) = 12345.6789 FW of 6 with 4 decimal places produces same original number
%fprintf('%2.4f',12345.6789) = 12335.6789 FW of 2 with 4 decimal places. Even though the field width is 2,
%it automatically expands it to make it bigger otherwise it would be a
%misleading number with only a field width of two. 
%8.)
%See flowrate.m script
%13.)
%See UnitVector.m script