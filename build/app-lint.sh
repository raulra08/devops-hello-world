#!/bin/bash

function run_linter() {
    flake8 src --count --statistics
}

run_linter