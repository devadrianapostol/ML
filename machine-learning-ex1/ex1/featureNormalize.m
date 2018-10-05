function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
mu = mean(X);
sigma=std(X);
%for i=1:rows(X)
%  for j=1:columns(X)
     %X_norm(i,j) = ( X(i,j) - mu(1,j) ) / sigma(1,j); 
%    if(X_norm(i,j) ~= 0)
%      X_norm(i,j) = X_norm(i,j) \ sigma(:,j);
%    endif
    
    %printf("X(%d,%d) = %f\t X_norm(%d,%d)= %f\n",i,j, X(i,j),i,j, X_norm(i,j))
    %X_norm(i,j) = X_norm(i,j) \ sigma(:,j);
%  endfor
%endfor

t=ones(length(X),1);
X_norm = (X - (t * mu)) ./ (t * sigma); % Vectorized

% ============================================================
end
