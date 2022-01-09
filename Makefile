PACKAGE_NAME := sample-package
CLEAN_PACKAGE_NAME := sample_package


.PHONY: venv
venv:
	pyenv local 3.8.12 3.9.7
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
