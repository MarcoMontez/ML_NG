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

%Transform for loops into matrixes

for i=1:m
    z=X(i,:)*theta;
    a=-y(i)*log(sigmoid(z));
    b=-(1-y(i))*log(1-sigmoid(z));
    iter_cost=a+b;
    J=J + iter_cost;
end
J=J/m;

% for j=1:length(theta)
%     acum = 0;
%     for i=1:m
%        z=X(i,:)*theta;
%        acum = acum + (sigmoid(z) - y(i))'*X(i,j);  
%     end
%     grad(j)=acum/m;
% end

for j=1:length(theta)
    acum = (sigmoid(X*theta) - y)'*X(:,j);
    grad(j)=acum/m;
end

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
