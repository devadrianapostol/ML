function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    %temp = zeros(length(theta'),1);
    %for i=1:length(theta')
    %  temp(i)=theta(i) - alpha * (1/m) * sum((X*theta - y).*X(:,i));
    %endfor
    %theta = temp;
    b = X * theta - y;
    for i = 1 : size(X,2)
        theta(i) = theta(i) - (alpha/m)*(b' * X(:,i));
    end
    
    %Update = 0;
    %for i=1:m,
    %    Update = Update + alpha/m * (theta' * X(i,:)' - y(i)) *  X(i,:)';
    %end

    %theta = theta - Update;
    
    % or a better way
    %H_theta = X * theta;
    %grad = (1/m).* X' * (H_theta - y);
    %theta = theta - alpha .* grad;
   
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
