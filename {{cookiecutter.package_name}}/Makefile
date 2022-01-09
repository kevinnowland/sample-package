.PHONY: venv
venv:
	-poetry env remove python
	pyenv local 3.9.7
	poetry env use python
	poetry install


.PHONY: install
install:
	poetry install


.PHONY: test
test:
	poetry run tox


.PHONY: build
build:
	poetry build
