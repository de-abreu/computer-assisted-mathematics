{
  pkgs,
  ...
}:

{
  packages = with pkgs; [
    octaveFull
    gnuplot
    ghostscript
    freefont_ttf
    fontconfig
  ];

  env.FONTCONFIG_FILE = "${pkgs.fontconfig.out}/etc/fonts/fonts.conf";

  # Script for 2D plotting validation
  scripts.test-plot.exec = ''
    octave --eval "test.plot"
  '';

  # Script for interactive 3D visualization
  scripts.test-plot-3d.exec = ''
    octave --eval "test.plot_3d"
  '';

  # Script for iterative methods test
  scripts.test-iterative.exec = ''
    octave --eval "test.iterative_methods"
  '';

  enterShell = ''
    echo "📊 Octave Environment Loaded"
    echo "Run 'test-plot' for 2D (PNG output), 'test-plot-3d' for interactive 3D, or 'test-iterative' for iterative methods test."
  '';
}
