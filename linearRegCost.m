function [J, gradient] = linearRegCost(X, y, theta)

  m = length(y);

  J = sum((X * theta - y) .^ 2)/(2 * m);
  gradient = (((theta' * X') - y') * X)';

end
