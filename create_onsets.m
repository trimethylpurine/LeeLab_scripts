%excel(:,1) = [ 1; 4; 2; 3; 1; 3];
%excel(:,2) = [1;1;1;0;0;1];

%creates a matrix called excel; column 1 is the A range on the spreadsheet, while column 2 is the D range)
excel(:,1) = xlsread('test_excel.xlsx','','A2:A13')
excel(:,2) = xlsread('test_excel.xlsx','','D2:D13')

masterData = excel;

%Boolean that sets column 2 of master data to true or false
index1 = masterData(:,2) == 1;
index0 = masterData(:,2) == 0;

correctData = masterData(index1,:);
incorrectData = masterData(index0,:);

correctData = sortrows(correctData,1);
