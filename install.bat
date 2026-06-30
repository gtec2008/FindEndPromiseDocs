@echo off

python -m venv .venv

call .venv\Scripts\activate

pip install --upgrade pip

pip install mkdocs

pip install mkdocs-material

pip install pymdown-extensions

pause