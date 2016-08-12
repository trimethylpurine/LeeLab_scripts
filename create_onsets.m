excel(:,1) = [ 1; 4; 2; 3; 1; 3];
excel(:,2) = [1;1;1;0;0;1];

masterData = excel;

index1 = masterData(:,2) == 1;
index0 = masterData(:,2) == 0;

correctData = masterData(index1,:);
incorrectData = masterData(index0,:);

correctData = sortrows(correctData,1);
