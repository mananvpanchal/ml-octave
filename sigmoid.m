function g = sigmoid(X, theta)

  z = X * theta;
  g = 1 ./ (1 + (1 ./ (e .^ z)));

end
