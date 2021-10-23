# Neural-Network (warm-up project!)
Implementation of some simple Neural-Networks for binary classification with newff toolbox in Matlab

### figure1 (2 neurons in hidden layer)
![2_neorons](https://user-images.githubusercontent.com/85555218/121549263-f4d17a80-ca22-11eb-98e8-e166a26a60a9.jpg)
### figure2 (4 neurons in hidden layer)
![4_neorons](https://user-images.githubusercontent.com/85555218/121549284-f8fd9800-ca22-11eb-92e1-9f28408f4948.jpg)
### figure3  (15 neurons in hidden layer)
![15_neorons](https://user-images.githubusercontent.com/85555218/121549290-fb5ff200-ca22-11eb-8279-b909789c3877.jpg)
### results
The use of two nodes (neurons), one hidden layer, and a standard gradient descent backpropagation algorithm have caused the network couldn't classify data correctly, and around 40 percent of data are misclassified. <br />
But if the number of nodes increases to 4, the network can classify much better. But this does not mean that as the number of neurons increases, the accuracy of the classification should increase. (As can be seen, 15 neurons in the hidden layer misclassify some data points).
Actually, for better results, we can use two hidden layers except for one hidden layer or use a backpropagation algorithm with an adaptive learning rate!
