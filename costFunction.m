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
X ;
theta;
[d1 d2]=size(X)

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
h=zeros(d1,1);
for i=1:d1
    for j=1:d2
        theta(j)
        h(i)=h(i)+(theta(j)*X(i,j));
    end
end
h
g=sigmoid(h);
g
sum=0;
for i=1:m
    sum= sum+ (y(i)*log(g(i)))+((1-y(i))*log(1-(g(i))));
end
J= -(sum/m)


x1=X(:,2);
x2=X(:,3);
sum=0;
for i=1:m
    sum=sum+(g(i)-y(i));
end
sum1=0;
for i=1:m
    sum1=sum1+((g(i)-y(i))*x1(i));
end
sum2=0;
for i=1:m
    sum2=sum2+((g(i)-y(i))*x2(i));
end
grad0=sum/m;
grad1=sum1/m;
grad2=sum2/m;
grad=[grad0;grad1;grad2]


% =============================================================

end
