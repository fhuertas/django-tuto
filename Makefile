PYTHON_VERSION=
PYTHON_ENV_TEST=env-test$(PYTHON_VERSION)
all: clean env tests

env: setup.py

setup.py: requeriments.txt

requeriments.txt:
	bin/env.sh

test:
	bin/tests.sh $(PYTHON_VERSION)

test-clean:
	rm -Rf env-tes*

clean:
	bin/clean.sh

test-versions:
	bin/test-versions.sh

package: clean env
	bin/package.sh

run: env
	bash bin/run.sh