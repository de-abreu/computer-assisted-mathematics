function p = part_prod(v)
  if length(v) == 0 || v(1) <= 0
    p = 0;
    return;
  end

  idx = find(v <= 0, 1);
  if isempty(idx)
    p = prod(v);
  else
    p = prod(v(1: idx - 1));
  end
end
