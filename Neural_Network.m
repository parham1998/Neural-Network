function [pe_train, pe_test] = Neural_Network(index)

%three layers network (input layer - one hidden layer - output layer)

%index == 1: 2 neurons in hidden layer
%index == 1: 4 neurons in hidden layer
%index == 1: 15 neurons in hidden layer
if index == 1
    k = 2;
elseif index == 2
    k = 4;
elseif index == 3
    k = 15;
end

%learning rate
lr = 0.01; 
%momentum parameter
mc = 0;
%
lr_inc = 0;
lr_dec = 0;
max_perf_inc = 0;

%for the standard backpropagation algorithm, the last four components of the parameter vector are 0
%for the momentum variant the last three parameters are 0
%for the adaptive learning rate case only the second component is 0
parameter_vector = [lr, mc, lr_inc, lr_dec, max_perf_inc];

iteration = 1000;

%
[x1, y1] = data_generator(1);
[x2, y2] = data_generator(2);

%neural network training
net = NN_training(x1, y1, k, 1, iteration, parameter_vector);

%trian evaluation
pe_train = NN_evaluation(net, x1, y1);
%test evaluation
pe_test = NN_evaluation(net, x2, y2);

%plot data after classification
figure(1)
subplot(2,1,1)
%
plot_dec_regions(net, -10, 10, -10, 10, 0.2, 0.2)
%
title(strcat('train data, neurons in hidden layer: ', string(k)))
xlabel('x1')
ylabel('x2')
hold on
scatter(x1(1, y1 == 1), x1(2, y1 == 1), 'r', '.');
scatter(x1(1, y1 == -1), x1(2, y1 == -1), 'b', '.');
hold off


subplot(2,1,2)
%
plot_dec_regions(net, -10, 10, -10, 10, 0.2, 0.2)
%
title(strcat('test data, neurons in hidden layer: ', string(k)))
xlabel('x1')
ylabel('x2')
hold on
scatter(x2(1, y2 == 1), x2(2, y2 == 1), 'r', '.');
scatter(x2(1, y2 == -1), x2(2, y2 == -1), 'b', '.');
hold off

end