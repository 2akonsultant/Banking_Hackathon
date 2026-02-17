#!/bin/bash

echo "Starting Core Banking Hackathon IDE..."
echo ""
echo "Installing dependencies..."
pip install -r requirements.txt
echo ""
echo "Creating directories..."
mkdir -p submissions
mkdir -p evaluations
echo ""
echo "Starting Flask server..."
echo "Open your browser and navigate to: http://localhost:5000"
echo ""
python app.py

