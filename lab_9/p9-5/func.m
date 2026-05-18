function dcoord = func(time, coord, mass, grav)
  dcoord = [
    coord(2);
    F1(time) ./ (mass(1) + mass(2) + mass(3));
    coord(4);
    F2(time) ./ (mass(2) + mass(3)) - grav;
    coord(6)
    M3(time) ./ 0.015;
  ];
end
