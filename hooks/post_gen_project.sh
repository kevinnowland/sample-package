#!/bin/bash

echo "making environment"
make venv

echo "initializing git"
git init
git add .gitignore .flake8 .pre-commit-config.yaml pyproject.toml src/* tests/* README.md Makefile LICENSE
git commit -m "initial commit"
git branch -m main

echo "initializing pre-commit"
pre-commit install
