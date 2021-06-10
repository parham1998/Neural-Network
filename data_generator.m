function [x, y] = data_generator(index)

%index == 1: generate train data
%index == 2: generate test data

%generate 2D data with gaussian distribution
%mean
m1 = [-5 5]';
m2 = [5 -5]';
m3 = [5 5]';
m4 = [-5 -5]';
m = [m1 m2 m3 m4];

if index == 1
    t = "train data distribution";
    randn('seed', 0);
    %variance
    S = 2 * eye(2);
elseif index == 2
    t = "test data distribution";
    randn('seed', 10);
    %variance
    S = 2 * eye(2);
end

N = 100;

[~, c] = size(m);
x = [];
for i = 1:c
    x = [x mvnrnd(m(:,i)', S, N)'];
end
y = [ones(1,N) ones(1,N) -ones(1,N) -ones(1,N)];
%

%plot data
%{
figure(1)
title(t)
xlabel('x1')
ylabel('x2')
hold on
scatter(x(1, y == 1), x(2, y == 1), 'r', '.');
scatter(x(1, y == -1), x(2, y == -1), 'b', '.');
hold off
%}

end