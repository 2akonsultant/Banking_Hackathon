@echo off
echo Starting Core Banking Hackathon IDE...
echo.
echo Installing dependencies...
pip install -r requirements.txt
echo.
echo Creating directories...
if not exist submissions mkdir submissions
if not exist evaluations mkdir evaluations
echo.
echo Starting Flask server...
echo Open your browser and navigate to: http://localhost:5000
echo.
python app.py
pause

