#!/usr/bin/env bash
set -e

# Ensure venv exists
if [ ! -d "venv" ]; then
  echo "[info] Creating virtual environment..."
  python3 -m venv venv
fi

# Activate venv
source venv/bin/activate

# Run demo tests
echo "[info] Running Expert demo (architecture)..."
python 1/writing_before_after_gpt_01_expert_metrics.py --use-fake-data --print-architecture

echo "[info] Running ML demo (assignments)..."
python 2/writing_before_after_gpt_02_ml.py --use-fake-data --print-assignments
