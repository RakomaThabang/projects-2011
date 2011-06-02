function createfigure(X1, YMatrix1)
%CREATEFIGURE(X1,YMATRIX1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 03-May-2011 03:24:23

% Create figure
figure1 = figure('Color',[0.5 0.5 0.5]);

% Create subplot
subplot1 = subplot(1,1,1,'Parent',figure1,'YGrid','on','XGrid','on',...
    'ColorOrder',[1 1 0;1 0 1;0 1 1;1 0 0;0 1 0;0 0 1]);
box('on');
hold('all');

% Create xlabel
xlabel('Time');

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'Parent',subplot1,'Color',[0 0 0]);
set(plot1(1),'Tag','Run #1 - data1','Marker','diamond',...
    'DisplayName','Car Velocity (m/s)');
set(plot1(2),'Tag','Run #1 - data2',...
    'DisplayName','Wheel angular velocity(rad/s)');
set(plot1(3),'Tag','Run #1 - data3','LineStyle','--',...
    'DisplayName','Distance travelled(m)');

% Create legend
legend1 = legend(subplot1,'show');
set(legend1,'EdgeColor',[1 1 1],'ZColor',[1 1 1],'YColor',[1 1 1],...
    'XColor',[1 1 1]);
