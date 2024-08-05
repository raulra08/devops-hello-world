#!/bin/bash

function run_unit_tests() {
    python3 -m pytest --cov src tests/ --cov-fail-under=80
}

run_unit_tests