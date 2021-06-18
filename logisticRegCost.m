function [J, gradient] = logisticRegCost(X, y, theta)

  m = length(y);

  g = sigmoid(X, theta);
  J = ( -y' * log(g) - ((1 - y)' * log(1 - g)) ) / m;
  gradient = (X' * (g - y));

end
