function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
J_history


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    theta0=theta(1,:);
theta1=theta(2,:);
x1=[];
x1=X(:,2);
h=[];
for i=1:m
    h(i)= theta0+theta1*x1(i);
end

    sum=0;
    for i = 1:m
        t=h(i)-y(i);
        sum=sum+t;
    end
    sum1=0;
    
    for i = 1:m
        t=(h(i)-y(i))*x1(i);
        sum1=sum1+t;
    end
    
    theta0=theta0 - ((alpha * sum)/m);
    theta1=theta1 - ((alpha * sum1)/m);

   theta = [theta0;theta1];



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
%[theta,J_history] = [theta, J_history]
end
