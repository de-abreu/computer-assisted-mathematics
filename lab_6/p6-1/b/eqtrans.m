function f = eqtrans(x)
  f = exp(-x.^3) - log(1 - x + x.^2/3);
end
