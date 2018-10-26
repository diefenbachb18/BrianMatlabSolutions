%Brian Diefenbach
%KINE 6203 Assignment 5
%October 26th, 2017
%This is the master script in which you can run the analysis. You only have
%to run this file. 
clear all
close all

%ImportFileFunction
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv', 2, 26);

%Finding The Individual and Group Means for the Three Days by Gender
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);

%DayComparator Function
[day1toDay2] = dayComparator(SubjectID,Day1,Day2);
[day2toDay3] = dayComparator(SubjectID,Day2,Day3);

%Normalize each day to body weight and average the day
normDay1mean = mean(Day1./Weight);
normDay2mean = mean(Day2./Weight);
normDay3mean = mean(Day3./Weight);

%Export Function makes all the exported matrix the same rows using NAN. 
%After each variable is 13 rows, we convert it to a table, then write the
%table to a csv file. 

femaleIsoIndMeans(13,:)=nan;
maleGroupIsoMean(2:13,:)=nan;
femaleGroupIsoMean(2:13,:)=nan;
day1toDay2(13,:)=nan;
day2toDay3(12:13,:)=nan;
normDay1mean(2:13,:)=nan;
normDay2mean(2:13,:)=nan;
normDay3mean(2:13,:)=nan;
ExportMat = table(maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean);
writetable(ExportMat,'iso_results.csv')

