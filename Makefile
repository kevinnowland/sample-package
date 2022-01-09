PACKAGE_NAME := sample-package
CLEAN_PACKAGE_NAME := sample_package


.PHONY: install
install:
	poetry install


.PHONY: test
test:
	poetry run tox


.PHONY: build
build:
	poetry build
