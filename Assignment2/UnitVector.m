%This script takes x y and z vector inputs from the user and calculates the
%unit vector for the three inputs. 

%Ask for user input of x, y and z. 
x = input('Enter the x value: ');
y = input('Enter the y value: ');
z = input('Enter the z value: ');
u = ([x,y,z])/((x^2)+(y^2)+(z^2));

%Print the unit vector in sentence form. 
fprintf('The unit vector with an x value of %5.2f, a y value of %5.2f, \n',x, y)
fprintf('and a z value of %5.2f is [%5.2f, %5.2f, %5.2f] \n',z,u)