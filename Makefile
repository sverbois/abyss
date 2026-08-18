.PHONY: help
help: ## This help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: .venv/bin/buildout ## Install development environment
	.venv/bin/buildout -c development.cfg

.PHONY: start
start: ## Start Zope instance
	bin/instance fg

.PHONY: clean
clean: ## Clean development environment
	rm -rf .venv bin develop-eggs eggs include lib parts .installed.cfg pyvenv.cfg

.venv/bin/buildout:
	uv venv
	uv pip install -r https://dist.plone.org/release/6.1.5/requirements.txt
