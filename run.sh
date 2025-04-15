#!/bin/bash

# Activate the virtual environment
source "venv/bin/activate"  

# Install dependencies if not already installed
if [ ! -f "venv/lib/python$(python3 -c 'import sys; print(sys.version_info[0:3])')/site-packages/numpy" ]; then
    echo "Installing dependencies from requirements.txt..."
    pip install -r requirements.txt
fi

# Check if Jupyter is installed, if not, install it
if ! command -v jupyter &> /dev/null; then
    echo "Jupyter not found. Installing Jupyter..."
    pip install jupyter
fi

# Specify the notebook to execute
notebook="amex-default-prediction-preprocessing.ipynb"  # Replace with your notebook name

# Create or append to the log file
logfile="execution_log.txt"
echo "Starting notebook execution at $(date)" > "$logfile"

# Execute the Jupyter Notebook and log output
(
    echo "Executing $notebook..." | tee -a "$logfile"
    jupyter nbconvert --to notebook --execute --inplace --ExecutePreprocessor.allow_errors=True --ExecutePreprocessor.store_widget_state=True "$notebook" >> "$logfile" 2>&1
    echo "Notebook execution finished at $(date)" >> "$logfile"
    echo "DONE at $(date)" >> jupyter_pid.txt
) &

# Get process ID, record the start time and store it in jupyter_pid.txt
pid=$!
echo "PID: $pid  START at $(date)" > jupyter_pid.txt
echo "Jupyter Notebook is running in background with PID $(cat jupyter_pid.txt). Logs can be found in $logfile"