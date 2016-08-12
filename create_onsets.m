%excel(:,1) = [ 1; 4; 2; 3; 1; 3];
%excel(:,2) = [1;1;1;0;0;1];

%creates a matrix called excel; column 1 is the A range on the spreadsheet, while column 2 is the D range)
excel(:,1) = xlsread('test_excel.xlsx','','A2:A13')
excel(:,2) = xlsread('test_excel.xlsx','','D2:D13')

masterData = excel;

%Boolean that sets column 2 of master data to true or false
index1 = masterData(:,2) == 1;
index0 = masterData(:,2) == 0;

%this sets 2 variables, correct and incorrect data, which are drawn from the masterdata file that uses the boolean indexes
correctData = masterData(index1,:);
incorrectData = masterData(index0,:);

correctData = sortrows(correctData,1);

%as an example, if I wanted to write something that finds gap4, then
%index3 = excel(:,1) == 4
%index3 will be true only when column 1 of excel = 4. Next we'll define a new variable, which is the excel matrix only on values where index3 = 1
%correct4 = excel(index3,:);
%then save
%eval(sprintf('save(''test.txt'',''correct4'', ''-ascii'')'))
%3 loops... 1 for subj, 2 for gap 1-7, 3 is for sequences 1-4)

http://www.mathworks.com/help/matlab/matlab_prog/find-array-elements-that-meet-a-condition.html
