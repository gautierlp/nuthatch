# List the recipes
help:
    @just --list

# Run the test suite
test:
    PYTHONPATH=src python3 -m unittest discover -s tests -v

# One run, dry unless ARCHIVE_ENABLED=1 is set
run *ARGS:
    set -a; . ~/.config/nuthatch/env; set +a; python3 src/nuthatch.py {{ARGS}}
