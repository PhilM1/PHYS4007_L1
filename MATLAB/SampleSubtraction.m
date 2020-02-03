%normalizes and attempts to subtract the source background from the sample

%import the background data
%data is in following format: Channel, Energy, Count
csvDataBackground = csvread('BK2_CO.CSV');

%import sample data
%data is in following format: Channel, Energy, Count
csvDataSample = csvread('SAMPP2.CSV'); %change this for different trials

%normalize the data based on max peak
csvDataBackground(:,3) = csvDataBackground(:,3) / max(csvDataBackground(:,3));
csvDataSample(:,3) = csvDataSample(:,3) / max(csvDataSample(:,3));

%find common low point to scale background to match the sample data
scale = csvDataSample(940,3) / csvDataBackground(940,3);
csvDataBackground(:,3) = csvDataBackground(:,3) * scale;

sampleSub = csvDataSample(:,3) - csvDataBackground(:,3);

%plot data (Energy vs Count)
fig1 = figure('Position', [10 10 900 400]);
plot(csvDataSample(:,2), sampleSub);
xlabel('Energy (keV)');
ylabel('Normalized Counts');
title('Normalized Sample P Graph with Co57 Background Subtracted'); %------------
xlim([0,140]); %set limit on x-axis
filename = 'Sample_P_SUB'; %-----------------
%saveas(fig1,filename,'png');
