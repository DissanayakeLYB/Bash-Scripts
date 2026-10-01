#!/bin/bash

model=${1:-test_model.mph}
cores=${2:-1}

echo "Preparing COMSOL simulation: $model"
echo "Using $cores CPU core(s)"
