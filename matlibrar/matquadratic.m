a = input('Enter coefficient a: ');
b = input('Enter coefficient b: ');
c = input('Enter coefficient c: ');

if a == 0
    disp('This is not a quadratic equation (a = 0).');
else
    D = b^2 - 4*a*c;

    if D > 0
        x1 = (-b + sqrt(D)) / (2*a);
        x2 = (-b - sqrt(D)) / (2*a);
        fprintf('Roots are real and different:\n');
        fprintf('x1 = %.4f\n', x1);
        fprintf('x2 = %.4f\n', x2);
    elseif D == 0
        x = -b / (2*a);
        fprintf('Roots are real and equal:\n');
        fprintf('x1 = x2 = %.4f\n', x);
    else
        realPart = -b / (2*a);
        imagPart = sqrt(-D) / (2*a);
        fprintf('Roots are complex and different:\n');
        fprintf('x1 = %.4f + %.4fi\n', realPart, imagPart);
        fprintf('x2 = %.4f - %.4fi\n', realPart, imagPart);
    end
end

