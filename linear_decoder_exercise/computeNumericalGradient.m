function numgrad = computeNumericalGradient(J, theta)
    numgrad = zeros(size(theta));
    perturb = zeros(size(theta));
    e = 1e-4;
    
    for i = 1:numel(theta)
        fprintf('Iteration: %d\n', i);
        perturb(i) = e;
        loss1 = J(theta - perturb);
        loss2 = J(theta + perturb);
        numgrad(i) = (loss2 - loss1) / (2 * e);
        perturb(i) = 0;
    end
end

