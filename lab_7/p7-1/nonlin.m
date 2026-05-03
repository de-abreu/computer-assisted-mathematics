function f=nonlin(v)
  x = v(1); y = v(2);
  f = [
    sin(x + y) - 1.1 * x - 0.2;
    1.1 * x.^2 + 2 * y.^2 - 1;
  ];
