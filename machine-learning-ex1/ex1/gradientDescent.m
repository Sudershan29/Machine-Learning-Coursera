function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
a=[];
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.

for j=1:2
s=0;
  for k=1:m
   h=X(k,:)*theta;
s=s+(sum(h)-y(k))*X(k,j)/m;
  end
a(j,1)=theta(j,1)-alpha*s;
end
    % ============================================================
    theta=a;
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
