function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
%exp는 e 함수이다. 
%이 장에서는 sigmoid함수를 정석적인 공식으로 이해하는것이 중점.
g=1./(1.+exp(-z));




% =============================================================

end
