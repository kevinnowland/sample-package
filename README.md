# Sample Package Template

This repo contains a cookiecutter template that I can
use for my python projects. Note that this requires python 3.9.7.

The sample package environment and installation is handled by
poetry, with pre-commit enforcing code standards. Tests are run
via pytest in an environment controlled by tox. Formatting and
linting are handled by the standard python packages of 
`black`, `flake8`, `isort`, and `mypy`.

First use of the template can be accomplished with

```bash
cookiecutter gh:kevinnowland/sample-package
```

with subsequent use by

```bash
cookiecutter sample-package
```
