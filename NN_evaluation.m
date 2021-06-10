function pe = NN_evaluation(net, x, y)

y_p = sim(net, x);
    
%y .* y_p < 0: y dot y1 and sum results = -1 
pe = sum(y .* y_p < 0) / length(y);

end