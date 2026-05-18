function force = F2(t)
  force = 23.25 .* exp(-t) .* (sin(4 .* t) - 3 .* cos(4 .* t)) + 45.601;
end
