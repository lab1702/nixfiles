let
  # nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable";
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {
  packages = with pkgs; [
    gnupg
    curl
    wget
    unzip
    jq
    tree
    ripgrep
    fzf
    fd
    eza
    bat
    figlet
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
    uv
    ruff
    R
    go
    rustup
    nodejs
    duckdb
    gnuplot
  ] ++ lib.optionals stdenv.isDarwin [
    mactop
  ];

  shellHook = ''
    echo
    figlet "Welcome to Lars' Data Science Environment!"
  '';
}
