%This function, called genderIsoCalc takes 4 matrix inputs called Gender,
%Day1, Day2, and Day3. It returns 4 outputs. The mean for the three workout days for
%males in maleIsoIndMeans, for females in femaleIsoIndMeans, and the group
%workout mean for males in maleGroupIsoMean, and group workout mean for
%females in femaleGroupIsoMean.

function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
[row,col] = size(Gender);
m=0;
f=0;
%Sorting the Gender into male and female matrix. 
for i=1:row
    if Gender(i,1)=='M'
        m=m+1;
        malecol(m,1)=i;
    elseif Gender(i,1)=='F'
        f=f+1;
        femalecol(f,1)=i;
    end
end
%Size of the two Gender Matrix. 
[mrow,mcol]=size(malecol);
[frow,fcol]=size(femalecol);

%Individual Male Means for the Three Days
for i=1:mrow
    maleIsoIndMeans(i,1) = (Day1(malecol(i,1),1)+Day2(malecol(i,1),1)+Day3(malecol(i,1),1))/3;
end
%Individual Female Means for the Three Days
for i=1:frow
    femaleIsoIndMeans(i,1) = (Day1(femalecol(i,1),1)+Day2(femalecol(i,1),1)+Day3(femalecol(i,1),1))/3;
end
%GroupMean for Males and Females
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);
end


    
    
    
