# Quick Start Guide - Hackathon IDE

## 🚀 Quick Setup (Windows)

1. **Double-click `run.bat`** - This will:
   - Install all dependencies
   - Create necessary directories
   - Start the Flask server

2. **Open browser** and go to: `http://localhost:5000`

3. **That's it!** The hackathon IDE is ready to use.

## 🚀 Quick Setup (Linux/Mac)

1. **Make script executable**:
   ```bash
   chmod +x run.sh
   ```

2. **Run the script**:
   ```bash
   ./run.sh
   ```

3. **Open browser** and go to: `http://localhost:5000`

## 📋 Manual Setup

If you prefer manual setup:

```bash
# Install dependencies
pip install -r requirements.txt

# Create directories
mkdir submissions
mkdir evaluations

# Run the application
python app.py
```

## 🎯 How to Use

### For Candidates (Participants)

1. **Select a Problem**: Click on any problem card from the home page
2. **Read Requirements**: Review the problem details, requirements, and business rules
3. **Submit Solution**: 
   - Enter your name and email
   - Choose submission type (GitHub link recommended)
   - Provide your GitHub repository URL
   - Click "Submit Solution"
4. **Get Candidate ID**: Save your candidate ID for reference

### For Evaluators (Judges)

1. **View Submissions**: Click "View All Submissions" from home page
2. **Evaluate**: Click "Evaluate" button next to any submission
3. **Enter Scores**: Fill in scores for each category:
   - Database Layer (30 points)
   - REST API Layer (25 points)
   - Code Quality (20 points)
   - Testing & Documentation (15 points)
   - Bonus Points (10 points)
4. **Add Notes**: Enter evaluator name and any notes
5. **Submit**: Click "Submit Evaluation"
6. **Export Results**: Click "Export to Excel" to download score report

## 📊 Excel Export

The Excel file includes:
- All candidate information
- GitHub links
- Detailed scores breakdown
- Total scores
- Evaluator notes
- Submission timestamps

## ⚙️ Configuration

### Change Port

Edit `app.py`, last line:
```python
app.run(debug=True, port=5000)  # Change 5000 to your preferred port
```

### Change Time Limit

Edit `templates/index.html`, line with timer:
```javascript
let timeLeft = 90 * 60;  // Change 90 to your preferred minutes
```

## 🔧 Troubleshooting

**Port already in use?**
- Change the port in `app.py`
- Or stop the process using port 5000

**Module not found?**
- Run: `pip install -r requirements.txt`

**Directories not created?**
- Manually create `submissions` and `evaluations` folders

**Submissions not saving?**
- Check that `evaluations` directory exists and is writable

## 📁 File Locations

- **Submissions**: `submissions/` folder
- **Evaluations**: `evaluations/submissions.json`
- **Excel Reports**: `evaluations/hackathon_scores_*.xlsx`

## 💡 Tips

- Keep the Flask server running during the hackathon
- Export Excel file regularly to backup scores
- The timer resets on page refresh (consider using a persistent timer)
- All submissions are saved in JSON format for easy backup

## 🆘 Support

For issues or questions, check the main `README.md` file for detailed documentation.

