#!/usr/bin/env bash
set -e

# Ensure venv exists
if [ ! -d "venv" ]; then
  echo "[info] Creating virtual environment..."
  python3 -m venv venv
fi

# Activate venv
source venv/bin/activate

# Run full analysis
echo "[info] Running Expert analysis..."
python 1/writing_before_after_gpt_01_expert_metrics.py

echo "[info] Running ML analysis..."
python 2/writing_before_after_gpt_02_ml.py
