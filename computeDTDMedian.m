load('firmSpecific.mat') % firmSpecific
load('FirmList')

firmSpecific(:,13,:) = NaN*ones(365,35);
firmSpecific(:,14,:) = NaN*ones(365,35);

%% 
% 
finList = firmList(find(firmList(:,2) == 10008));
finNum = find(firmList(:,2) == 10008);
nonfinNum = find(firmList(:,2) ~= 10008);

for i = 1:365
    total = 0;
    [m,~] = size(finNum);
    for num = finNum
        total = total + firmSpecific(i,6,num);
    end
    for num = finNum
        firmSpecific(i,13,num) = sum(total,3)/m;
    end
    
%% 
% 
    total = 0;
    [m,~] = size(nonfinNum);
    for num = nonfinNum
        total = total + firmSpecific(i,6,num);
    end
    for num = nonfinNum
        firmSpecific(i,14,num) = sum(total,3)/m;
    end
    
end