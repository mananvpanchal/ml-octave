function [J, theta, hypothesis] = linearRegMain(X, y, alpha, iteration)

	m = length(y);
	theta = zeros(iteration + 1, length(X(1, :)));
	hypothesis = zeros(iteration, m);
	J = zeros(iteration, 1);

	for it = 1 : iteration

		hypothesis(it, :) = (X * theta(it, :)')';
		[J(it), gradient] = linearRegCost(X, y, theta(it, :)');
		theta(it + 1, :) = (theta(it, :)' - (alpha/m) * gradient)';

	end

	theta(1, :) = [];

end
