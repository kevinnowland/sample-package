# Sample Package

This is the python package template that I am going to use for myself.
There are probably plenty of similar cookie cutter templates out there,
but I'm going to go step-by-step to set this up for myself so that I
understand what each piece does before I turn it into an actual cookie cutter
template.


## Python version and environment


I am relying on pyenv to manage my python environments. For me, as a former
data scientist, this is a switch from relying on conda, so setting this
up has helped me. I have both 3.9.7 installed as my global default and will
assume this version going forward. There is a line in the makefile that would
need to change if this is not the case.

I will be relying on poetry to do the setting up of my virtual environments
and tox for testing in multiple environments, although this template is only
setup for python 3.9 right now. It would not be hard to add a new version by
adding it to the `pyenv local` command in the Makefile alongside the current version
as well as editing the `[tool.tox]` section of `pyproject.toml`.


## License

The MIT license is copied here.


## Adding poetry


I installed poetry as recommend on its website via

```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
```

I then ran `poetry init` inside the directory. I specified no dependencies, but I
did add development dependences, namely, the latest versions of `black`, `flake8`, `isort`,`mypy`,
`pytest`, `pre-commit`, and `tox`. I stated that python 3.9 or higher should be used. 
I added some configuration for these tools in `pyproject.toml` as well as in `.flake8`
and `pre-commit-config.yaml`.


## make


I added a `Makefile` to simplify commands. It contains a bunch of 
`.PHONY` commands, the text of which will probably end up in our post generation
script that cookie cutter will use once this is a template. The commands can also
by used to run tests and such.

Only thing that is very slightly annoying is that we cannot activate our conda
environment from the a `make` command since it runs everything in subshells.

Current commands:
- `venv`: make the virtual environment (blowing away the old one if exists) and
installing dependencies.
- `install`: install dependencies in the virtual environment
- `test`: run tests via `tox`, which ultimately is calling `pytest`.


## Pre-commit


I configured `pre-commit` to run through `black`, `isort`, `flake8`, and `mypy`
as well as a YAML linter, a whitespace trimmer, and an end of file checker. It works
pretty much out of the box.


## Reminders to self about cookie cutter


The post gen hooks probably need to cd into the directory, create the conda environment,
activate it, then run poetry install. Then need to install the `pre-commit` things
and run them.
