function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
z

g
size(z)


[d1 d2]=size(z)
for i=1:d1
     for j=1:d2
         g(i,j)= 1/(1+exp(-z(i,j)));
     end
end
g

% =============================================================

end
