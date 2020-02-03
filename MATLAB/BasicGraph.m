%Basic graphing script


%import sample data
%data is in following format: Channel, Energy, Count
csvDataSample = csvread('SAMPX_CO.CSV'); %change this for different trials

%plot data (Energy vs Count)
fig1 = figure('Position', [10 10 900 400]);
plot(csvDataSample(:,2), csvDataSample(:,3));
xlabel('Energy (keV)');
ylabel('Counts');
title('Graph of Sample X and Source Co57'); %------------
xlim([0,140]); %set limit on x-axis
filename = 'Sample_X'; %-----------------
saveas(fig1,filename,'png');
ylim([0,5e4]); %set limit on y-axis
title('Graph of Sample X and Source Co57 (Zoomed)'); %--------------
saveas(fig1,[filename, '_ZOOM'],'png');

