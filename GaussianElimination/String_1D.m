% Number of subintervals to use
n = 1000;

% Length of each subinterval
h = 1/n;

% Main diagonal (d)
d = 2*ones(1, n+1);
d(1) = d(end) = 1;

% Subdiagonal (a) and superdiagonal (c)
a = -ones(1, n); c = a;
a(end) = 0; c(1) = 0;

% Nodes
x = 0:h:1;

% Force (choose one of the functions below or add your own)
f = zeros(1, n+1);

f = (x - 1/2).^2;
%f = ones(1, n+1);        % Constant force everywhere
%f(find(x > 0.5)) = 1;    % Constant force on (0.5, 1)
%f = -1/2*ones(1, n+1);   % Constant negative force
%f = sin(4*pi*x);         % Sinusoidal force
%f(n/2) = 10;             % Point force in the middle of the string

% Right-hand side of the matrix system of equations
b = h^2.*f;
b(1) = b(end) = 0;

% Tridiagonal solver (implement your own -- HW)
u = GaussElimTri(a, d, c, b);

% Plots
subplot(2, 1, 1);
plot(x, u, "linewidth", 5, "r;Displacement;");
title('Displacement of the string');
xlabel('x'); ylabel('u (displacement)');
grid on;

subplot(2, 1, 2);
plot(x, f, "linewidth", 5, "b;Force;");
title('Force on the string');
xlabel('x'); ylabel('f (force)');
axis([0 1 min(f)-0.1 max(f)+0.1]);
grid on;