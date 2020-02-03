%Basic graphing script


%import sample data
%data is in following format: Channel, Energy, Count
csvDataSample = csvread('BK.CSV'); %change this for different trials

%plot data (Energy vs Count)
fig1 = figure('Position', [10 10 900 400]);
plot(csvDataSample(:,2), csvDataSample(:,3));
xlabel('Energy (keV)');
ylabel('Counts');
title('Background Graph Without Any Sources'); %------------
xlim([0,140]); %set limit on x-axis
filename = 'BKG_NoSource'; %-----------------
saveas(fig1,filename,'png');
ylim([0,2e4]); %set limit on y-axis
title('Background Graph Without Any Sources (Zoomed)'); %--------------
saveas(fig1,[filename, '_ZOOM'],'png');

