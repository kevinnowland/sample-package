PACKAGE_NAME := sample-package
CLEAN_PACKAGE_NAME := sample_package
PYTHON_VERSION := 3.9

.ONESHELL:
SHELL=/bin/bash

CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate


.PHONY: venv
venv:
	$(CONDA_ACTIVATE) base
	conda env remove -n $(PACKAGE_NAME)
	conda create -y -n $(PACKAGE_NAME) python=$(PYTHON_VERSION)
	$(CONDA_ACTIVATE) $(PACKAGE_NAME)
	poetry install


.PHONY: install
install:
	$(CONDA_ACTIVATE) $(PACKAGE_NAME)
	poetry install


.PHONY: test
test:
	$(CONDA_ACTIVATE) $(PACKAGE_NAME)
	pytest -v


.PHONY: build
build:
	$(CONDA_ACTIVATE) $(PACKAGE_NAME)
	poetry build
