function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
%J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


X
y
theta
theta0 = theta(1,:);
theta1 = theta(2,:);
x1=[];
x1=X(:,2);
x1
h=[];
for i=1:m
    h(i)= theta0+theta1*x1(i);
end
h

sum = 0;
%h = theta' * X;
for i = 1:m
    t=h(i)-y(i);
    t = t*t;
    sum=sum+t;
end
J = sum/(2*m)
    
    

% =========================================================================

end
