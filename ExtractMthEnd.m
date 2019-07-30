function ExtractMthEnd()
load('dtd_mle_2000.mat')  % load Data is firmDtd
x=[];


index = find(firmDtd(:,2)<20180201);
if all(ismissing(firmDtd(index,3)))
    x = [x;firmDtd(index(end),:)];
else
    b = ismissing(firmDtd(index,3));
    index = find(b==0);
    index = index(end);
    display(index)
    x = [x;firmDtd(index,:)];
end

index = find(firmDtd(:,2)<20180301);
if all(ismissing(firmDtd(index,3)))
    x = [x;firmDtd(index(end),:)];
else
    b = ismissing(firmDtd(index,3));
    index = find(b==0);
    index = index(end);
    display(index)
    x = [x;firmDtd(index,:)];
end

index = find(firmDtd(:,2)<20180401);
if all(ismissing(firmDtd(index,3)))
    x = [x;firmDtd(index(end),:)];
else
    b = ismissing(firmDtd(index,3));
    index = find(b==0);
    index = index(end);
    display(index)
    x = [x;firmDtd(index,:)];
end

index = find(firmDtd(:,2)<20180501);
if all(ismissing(firmDtd(index,3)))
    x = [x;firmDtd(index(end),:)];
else
    b = ismissing(firmDtd(index,3));
    index = find(b==0);
    index = index(end);
    display(index)
    x = [x;firmDtd(index,:)];
end

index = find(firmDtd(:,2)<20180601);
if all(ismissing(firmDtd(index,3)))
    x = [x;firmDtd(index(end),:)];
else
    b = ismissing(firmDtd(index,3));
    index = find(b==0);
    index = index(end);
    display(index)
    x = [x;firmDtd(index,:)];
end
save('dtd_mle_2000_monthly.mat','x')