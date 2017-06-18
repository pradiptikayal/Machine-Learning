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
[d1 d2]=size(X)
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
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

n=size(theta,1)
sum1=0;
for i=2:n
    sum1=sum1+theta(i)*theta(i);
end
t=-(sum/m)
t1=sum1*lambda
t2=t1/(2*m)
J=t+t2


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


 c1=sum/m
 c2=sum1/m
 c3=sum2/m
theta
theta0=theta(1,:)
theta1=theta(2,:)
theta2=theta(3,:)
lambda
 %add1=lambda*theta0
 add2=lambda*theta1
 add3=lambda*theta2

 %b1=add1/m
 b2=add2/m
 b3=add3/m
  
grad0=c1;
grad1=b2+c2;
grad2=b3+c3;
grad=[grad0;grad1;grad2]


% =============================================================

end
