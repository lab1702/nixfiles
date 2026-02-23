let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {
  packages = with pkgs; [
    helix
    tree
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
    (rWrapper.override {
      packages = with rPackages; [
        tidyverse
        shinylive
        remotes
        devtools
        cranlogs
        rhub
        spelling
        testthat
        roxygen2
        logger
        rmarkdown
        flexdashboard
        DT
        websocket
        quarto
        thematic
        IRkernel
        languageserver
        microbenchmark
        bench
        quantmod
        PerformanceAnalytics
        prophet
        CausalImpact
        caret
        randomForest
        xgboost
        arrow
        duckdb
        plotly
        dygraphs
        # leaflet
        mirai
        biscale
        dfms
      ];
    })
    go
    rustup
    nodejs
    duckdb
    gnuplot
    figlet
  ];

  shellHook = ''
    cd
    clear
    figlet "Welcome to Lars' Data Science Environment!"
  '';
}
