#!/bin/bash

python3 -m venv ~/.virtualenvs/neovim
source ~/.virtualenvs/neovim/bin/activate
pip install pynvim jupyter_client jupytext nbformat cairosvg pnglatex plotly kaleido pyperclip
