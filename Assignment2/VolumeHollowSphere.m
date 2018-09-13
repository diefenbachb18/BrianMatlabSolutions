%This script calculates the volume of  of a hollow space. 
%It prompts the user for input inner radius and outer radius. 
%Prompt the user for input inner radius and outer radius and calculate the
%volume of the hollow space.
%Errors occur if inner radius is greater or equal to outer radius. 

fprintf('Note: the units will be inches and the inner radius must be smaller than the outer radius\n')
inrad = input('Please enter the inner radius: '); %User input for inner radius
outrad = input('Please enter the outer radius: '); %User input for outer radius
if inrad>=outrad
    error('Error. Inner radius must be smaller than the outer radius\n') %Checking to make sure the dimensions of the sphere make sense.
end
volume = (4*pi/3)*((outrad^3)-(inrad^3));

%Prints answer in sentence format
fprintf('For a hollow sphere with an inner radius of %.2f inches and outer raidus of %.2f inches, \n', inrad, outrad)
fprintf('The volume of a hollow sphere is %.2f inches cubed\n', volume)
