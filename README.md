# Sample Package

This is the python package template that I am going to use for myself.
There are probably plenty of similar cookie cutter templates out there,
but I'm going to go step-by-step to set this up for myself so that I
understand what each piece does before I turn it into an actual cookie cutter
template.


## Python version and environment


Although I, as a former data scientist, use conda to manage environments, I 
am just going to use a mostly blank python 3.9.7 environment and rely on
poetry to handle virtual environments and packaging.


## License

The MIT license is copied here.


## Adding poetry


I installed poetry as recommend on its website via

```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
```

I then ran `poetry init` inside the directory. I specified no dependencies, but I 
did add development dependences, namely, the latest versions of `black`, `flake8`, `isort`,`mypy`,
and `pytest`. I stated that python 3.9 or higher should be use. I added some configuration
for these tools in `pyproject.toml` as well as in `.flake8`.

I added the `pyproject.toml` to the repo.


## make


I added a `Makefile` for environment creation and installation. We add a bunch of
`.PHONY` commands, the text of which will probably end up in our post generation
script that cookie cutter will use once this is a template. The commands can also
by used to run tests and such.

Only thing that is very slightly annoying is that we cannot activate our conda
environment from the a `make` command since it runs everything in subshells.

Current commands:
- `venv`: make the virtual environment (blowing away old if exists) and 
installing dependencies.
- `install`: install dependencies in the virtual environment
- `test`: run `pytest`.


## Pre-commit


I also added `pre-commmit` to the development dependencies. We will use this
to enforce style standards, but I need to set it up.


## Reminders to self about cookie cutter


The post gen hooks probably need to cd into the directory, create the conda environment,
activate it, then run poetry install.

