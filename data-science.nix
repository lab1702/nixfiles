let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable";
  # nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {
  packages = with pkgs; [
    helix
    tree
    gnupg
    curl
    wget
    unzip
    jq
    ripgrep
    fzf
    fd
    eza
    bat
    htop
    btop
    git
    github-cli
    cmake
    ninja
    typst
    tinymist
    typstyle
    texliveFull
    pandoc
    quarto
    html-tidy
    (python3.withPackages (ps: with ps; [
      virtualenv
      pandas
      numpy
      matplotlib
      scikit-learn
      jupyter
      uv
      ruff
      jupyter
      pandas
      duckdb
      matplotlib
      prophet
      scikit-learn
      openpyxl
      xlsxwriter
      statsmodels
      mplfinance
      seaborn
      plotly
      bokeh
      altair
      reportlab
      streamlit
      yfinance
    ]))
    ty
    R
    go
    rustup
    nodejs
    duckdb
    gnuplot
    figlet
  ];

  shellHook = ''
    cd
    echo
    figlet "Welcome to Lars' Data Science Environment!"
  '';
}
