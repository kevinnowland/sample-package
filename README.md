# Sample Package

This is the python package template that I am going to use for myself.
There are probably plenty of similar cookie cutter templates out there,
but I'm going to go step-by-step to set this up for myself so that I
understand what each piece does before I turn it into an actual cookie cutter
template.


## Python version and environemnt


Although I, as a former data scientist, use conda to manage environments, I 
am just going to use a mostly blank python 3.8.12 environment and rely on
poetry to handle virtual environments and packaging.


## License

The MIT license is copied here.


## Adding poetry


I installed poetry as recommend on its website via

```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
```

I then ran `poetry init` inside the directory. I specified no dependencies, but I 
did add development dependences, namely, the latest versions of `black`, `flake8`, `isort`,
and `mypy`. I stated that python 3.8 or higher should be use.

I added the `pyproject.toml` to the repo.
