function [nv, nw, ps, pv, angle] = desc_vectors(v, w)
  if isempty(v)
    disp("Vector v is empty")
  end
  if isempty(w)
    disp("Vector w is empty")
  end
  assert(~isempty(v) && ~isempty(w), "Vectors must not be empty");

  nv = norm(v);
  nw = norm(w);

  if length(v) ~= length(w)
    warning("Vectors have different lengths: dot and cross will be empty");
    ps = [];
    pv = [];
  else
    ps = dot(v, w);
    if length(v) == 3
      pv = cross(v, w);
    else
      warning("Cross product requires 3-element vectors; returning empty");
      pv = [];
    end
  end

  if nv == 0
    disp("Vector v is a zero vector")
  end
  if nw == 0
    disp("Vector w is a zero vector")
  end
  if nv == 0 || nw == 0
    disp("Angle cannot be calculated")
    angle = []
  else
    angle = acos(ps / (nv * nw));
  end
end
