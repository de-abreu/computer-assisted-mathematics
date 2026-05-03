function V0 = visual_insp()
  x = linspace(-2.5, 2.5, 200);
  y1 = sqrt(4 - x.^2);
  y2 = -sqrt(4 - x.^2);
  y3 = x - 1;

  plot(x, y1, 'b-', x, y2, 'b-', x, y3, 'r-')
  hold on
  xlabel('x'); ylabel('y')
  legend('circle', 'circle', 'line')
  grid on; axis equal
  title('Click intersection points, press Enter when done')

  [xs, ys] = ginput();
  V0 = [xs'; ys'];
end
