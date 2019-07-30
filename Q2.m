load('pfInfo.mat')
x = pfInfo.firmList;
csvwrite('companylist.csv',x(:,1))
Financial_index = find(x(:,7)==10008);
Financial = x(Financial_index,:);
csvwrite('Companylist_Financial.csv',Financial)

Basic_Material_index = find(x(:,7)==10002);
Basic_Material = x(Basic_Material_index,:);
csvwrite('Companylist_Basic_Material.csv',Basic_Material)

Communications_index = find(x(:,7)==10003);
Communications = x(Communications_index,:);
csvwrite('Companylist_Communications.csv',Communications)

Consumer_cyclical_index = find(x(:,7)==10004);
Consumer_cyclical = x(Consumer_cyclical_index,:);
csvwrite('Companylist_Consumer_cyclical.csv',Consumer_cyclical)

Consumer_noncyclical_index = find(x(:,7)==10005);
Consumer_noncyclical = x(Consumer_noncyclical_index,:);
csvwrite('Companylist_Consumer_noncyclical.csv',Consumer_noncyclical)

Diversified_index = find(x(:,7)==10006);
Diversified = x(Diversified_index,:);
csvwrite('Companylist_Diversified.csv',Diversified)

Energy_index = find(x(:,7)==10007);
Energy = x(Energy_index,:);
csvwrite('Companylist_Energy.csv',Energy)

Industrial_index = find(x(:,7)==10011);
Industrial = x(Industrial_index,:);
csvwrite('Companylist_Industrial.csv',Industrial)

Technology_index = find(x(:,7)==10013);
Technology = x(Technology_index,:);
csvwrite('Companylist_Technology.csv',Technology)

Utilities_index = find(x(:,7)==10014);
Utilities = x(Utilities_index,:);
csvwrite('Companylist_Utilities.csv',Utilities)