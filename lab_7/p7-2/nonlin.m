function f=nonlin(v)
  x = v(1); y = v(2);
  f = [
    x.^2 + y.^2 - 4;
    x - y - 1;
  ];
