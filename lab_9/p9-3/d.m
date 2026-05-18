function dy = d(t, y)
  dy = [
    y(2) - 2*y(3) + sin(t) - 2*y(1);
    y(1) + 2*y(3) - cos(t) - 2*y(2);
    3*y(1) - 3*y(2) + 5*y(3)
  ];
end
