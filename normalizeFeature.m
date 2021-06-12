function [X_norm, mu, sigma] = normalizeFeature(X)

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2)); 

% --------------------------

% n = size(X, 2);

% for ni = 1:n
%   mu(ni) = mean(X(:, ni));
%   sigma(ni) = std(X(:, ni));
%   X_norm(:, ni) = (X(:, ni) - mu(ni)) ./ sigma(ni);
% end

% ------------- or ------------

mu = mean(X);
sigma = std(X);
X_norm = (X - mu) ./ sigma;

% --------------------------

end
