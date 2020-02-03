%Basic graphing script


%import sample data
%data is in following format: Channel, Energy, Count
csvDataSample = csvread('129_CO.CSV'); %change this for different trials

%plot data (Energy vs Count)
fig1 = figure('Position', [10 10 900 400]);
plot(csvDataSample(:,2), csvDataSample(:,3));
xlabel('Energy (keV)');
ylabel('Counts');
title('Graph of Sample 129 and Source Co57'); 
xlim([0,140]); %set limit on x-axis
filename = 'Sample_P';
saveas(fig1,filename,'png');
ylim([0,5e3]); %set limit on y-axis
saveas(fig1,[filename, '_ZOOM'],'png');

