function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%여기서의 가설 즉, 하이포시스fun은 기존의 선형이 아니라 다항식에서 사용
%해야하기 때문에 sigmoid fun으로 대체가 되어진다.
%cost function 
%h=g(Xθ)
%J(θ)=1m?(?y'*log(h)?(1?y)'*log(1?h))

%Gradient Desect
%θ:=θ? α/m*X'*(g(Xθ)?y)


%J=(1/m)*(- y*log(sigmoid(X*theta))-*(1.-y)*log(1.-(sigmoid(X*theta))));
J=(1/m)*((-y)'*log(sigmoid(X*theta))-(1.-y)'*log(1.-sigmoid(X*theta)));
grad=(1/m)*X'*(sigmoid(X*theta)-y);





% =============================================================

end
