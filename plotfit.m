function []=plotfit(dataSet,parameters)

D=size(dataSet,2);
X=dataSet(:,1:D-1);
Y=dataSet(:,D);
[X,Y]=normalize(X,Y);
X = [ones(length(X), 1) X];


figure;
plot(min(X(:, 2)):max(X(:, 2)), parameters(1) + parameters(2) * (min(X(:, 2)):max(X(:, 2))));
%plot(X(:,2),y,'b.'); use if not line.
hold on;

% Plotting the dataset on the same figure
plot(X(:, 2), Y, 'rx', 'MarkerSize', 10);

 
end