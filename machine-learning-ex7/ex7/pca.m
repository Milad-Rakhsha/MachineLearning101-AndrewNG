function [U, S] = pca(X)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.
% U = zeros(m);
% S = zeros(n);



% ====================== YOUR CODE HERE ======================
% Instructions: You should first compute the covariance matrix. Then, you
%               should use the "svd" function to compute the eigenvectors
%               and eigenvalues of the covariance matrix. 
%
% Note: When computing the covariance matrix, remember to divide by m (the
%       number of examples).
%

% CV_Mat=zeros(n);
% for i=1:n
%     CV_Mat=CV_Mat+X(i,:)*X(i,:)';
% end
% CV_Mat=CV_Mat/m;

CV_Mat=X'*X/m;
[U, S, V] = svd(CV_Mat);

% =========================================================================

end
