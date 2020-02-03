%graphing the calibration points

xArray_Channel = [225.98, 346.26, 390.35, 629.29, 712, 833.33, 1248.64, 1348.09];
yArray_Energy = [14.41295, 21.9906, 22.1632, 40.12, 45.4, 53.1622, 80.9979, 88.0336];
xErrorArray_Channel = [0.87, 0.41, 0.88, 0.99, 1.22, 11.99, 2.9, 2.06];
yErrorArray_Energy = [2.61, 3.06, 2.81, 3.6, 2.6, 3.63, 3.09, 3.2];

xErrorArray_Channel = xErrorArray_Channel.*xArray_Channel/100;
yErrorArray_Energy = yErrorArray_Energy.*yArray_Energy/100;

p = polyfit(xArray_Channel,yArray_Energy,3);
fitY = polyval(p,xArray_Channel);

fig1 = figure(1);
scatter(xArray_Channel,yArray_Energy, 20, 'b', 'filled');
hold on;
errorbar(xArray_Channel, yArray_Energy, xErrorArray_Channel, 'r', 'Horizontal', 'LineStyle', 'none');
errorbar(xArray_Channel, yArray_Energy, yErrorArray_Energy, 'r', 'Vertical', 'LineStyle', 'none');
plot(xArray_Channel, fitY, 'b');

title('Calibration Points with Fitted Line');
xlabel('Channel Number');
ylabel('Energy (keV)');

saveas(fig1,'Calibration_Plot','png');
