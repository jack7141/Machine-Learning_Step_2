function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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
%람다에서는 세타의 2번째피쳐들로만 이용하기때문에 theta를 고려해야한다.

J=(1/m)*((-y)'*log(sigmoid(X*theta))-(1.-y)'*log(1.-sigmoid(X*theta)))+(lambda*(theta'*theta - theta(1)*theta(1)) )/(2*m);
grad=((1/m)*X'*(sigmoid(X*theta)-y))+(lambda*theta /m);
grad(1)=grad(1)-(lambda*theta(1)/m);
%if (grad==grad(1))
%  grad=(1/m)*X'*(sigmoid(X*theta)-y)
%else
%  grad=((1/m)*X'*(sigmoid(X*theta)-y))+(lambda*theta /m)

% =============================================================

end
