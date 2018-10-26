function [dayToDay] = dayComparator(SubjectID,CompareDay1,CompareDay2)
%This compares a day A to day B to find any subjects with increases from A
%to B, and stores their subject ID as an output. It takes all the subject
%IDs, along with data from day A and day B. 

[row,col]=size(CompareDay1);
m=1;
for i=1:row
    if CompareDay1(i,1)<CompareDay2(i,1);
        dayToDay(m,1)=SubjectID(i,1);
        m=m+1;
    end
end

