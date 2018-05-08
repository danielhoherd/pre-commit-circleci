.PHONY: install-hooks
install-hooks:
	pip3 install --user --upgrade pre-commit || \
	pip install --user --upgrade pre-commit
	pre-commit install -f --install-hooks

.PHONY: test
test:
	bash test/run_tests.sh
