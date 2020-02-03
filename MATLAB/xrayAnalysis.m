% analysis for X-ray lab in PHYS 4007

%import sample data
%data is in following format: Channel, Energy, Count
csvDataSample = csvread('129_CO.CSV'); %change this for different samples

%plot data (Channel vs Count)
figure(1);
plot(csvDataSample(:,1), csvDataSample(:,3));
xlim([0,2047]);

%plot data (Energy vs Count)
figure(2);
plot(csvDataSample(:,2), csvDataSample(:,3));
xlim([0,140]);

%import source background data
csvDataSourceBkg = csvread('BK2_CO.CSV');

%plot the background with source (Energy vs Count)
figure(3);
plot(csvDataSourceBkg(:,2), csvDataSourceBkg(:,3))
xlim([0,140]);

%plot Source&Background with Source&Sample
figure(4);
plot(csvDataSample(:,2),csvDataSample(:,3), 'LineWidth', 2);
hold on;
plot(csvDataSourceBkg(:,2),csvDataSourceBkg(:,3), 'LineWidth', 2);
xlim([0,140]);
xlabel('Energy (keV)');
ylabel('Counts');
legend('Sample 129', 'Co57 Background');
set(gca,'FontSize',20)



hold off;
%plot Source&Background with Source&Sample (ZOOM)
figure(5);
plot(csvDataSample(:,2),csvDataSample(:,3), 'LineWidth', 2);
hold on;
plot(csvDataSourceBkg(:,2),csvDataSourceBkg(:,3), 'LineWidth', 2);
xlim([0,140]);
ylim([0,0.1e5]);
xlabel('Energy (keV)');
ylabel('Counts');
legend('Sample 129', 'Co57 Background');
set(gca,'FontSize',20)