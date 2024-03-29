function createsubplot(Parent1, X1, YMatrix1)
%CREATESUBPLOT(PARENT1,X1,YMATRIX1)
%  PARENT1:  subplot parent
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 03-May-2011 03:07:01

% Create subplot
subplot1 = subplot(1,1,1,'Parent',Parent1,'ZColor',[1 1 1],'YColor',[1 1 1],...
    'XColor',[1 1 1],...
    'ColorOrder',[1 1 0;1 0 1;0 1 1;1 0 0;0 1 0;0 0 1]);
box('on');
grid('on');
hold('all');

% Create xlabel
xlabel('Time','Color',[1 1 1]);

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'Parent',subplot1);
set(plot1(1),'Tag','Run #1 - data1','Marker','x',...
    'DisplayName','Car Velocity (m/s)');
set(plot1(2),'Tag','Run #1 - data2',...
    'DisplayName','Wheel angular velocity(rad/s)');
set(plot1(3),'Tag','Run #1 - data3','Marker','o',...
    'DisplayName','Distance travelled(m)');

