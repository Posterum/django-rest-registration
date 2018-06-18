#!/bin/bash

set -euo pipefail

readonly BASE_DIR="$( cd "$( dirname "$( dirname "${BASH_SOURCE[0]}" )" )" && pwd )"

cd "${BASE_DIR}"
flake8
isort --check --diff
./scripts/run_pylint.sh
