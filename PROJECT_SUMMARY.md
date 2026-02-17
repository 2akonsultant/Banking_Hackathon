# Hackathon IDE - Project Summary

## 📦 What Was Created

A complete web-based Hackathon IDE platform for conducting and evaluating a 90-minute Core Banking hackathon.

## 🎯 Key Features

### 1. Problem Selection System
- **3 Selected Problems** suitable for 90-minute hackathon:
  1. **Fund Transfer & Transaction Orchestrator** (30-35 min)
  2. **Fixed Deposit & Interest Calculator** (25-30 min)
  3. **Account Freeze & Unfreeze Workflow Manager** (25-30 min)

### 2. Submission Management
- Accept GitHub repository links
- Accept ZIP file uploads (backend ready)
- Candidate information tracking
- Submission timestamp tracking
- Unique candidate ID generation

### 3. Evaluation System
- **Comprehensive Scoring Rubric** (100 points total):
  - Database Layer: 30 points
  - REST API Layer: 25 points
  - Code Quality: 20 points
  - Testing & Documentation: 15 points
  - Bonus Points: 10 points
- Real-time score calculation
- Evaluator notes and comments
- Status tracking (pending/evaluated)

### 4. Excel Export
- **Detailed Score Reports** with:
  - Candidate information (ID, name, email)
  - Problem ID and GitHub links
  - Breakdown of all scores by category
  - Total scores
  - Evaluator information
  - Submission timestamps
  - Formatted with colors and proper styling

### 5. User Interface
- Modern, responsive design
- Real-time countdown timer (90 minutes)
- Problem cards with key information
- Detailed problem pages
- Submission management interface
- Evaluation modal with scoring form

## 📁 Project Structure

```
hackathon_ide/
├── app.py                      # Main Flask application
├── requirements.txt            # Python dependencies
├── README.md                   # Full documentation
├── QUICK_START.md             # Quick start guide
├── PROJECT_SUMMARY.md         # This file
├── run.bat                     # Windows startup script
├── run.sh                      # Linux/Mac startup script
├── .gitignore                 # Git ignore file
└── templates/
    ├── index.html             # Home page
    ├── problem_detail.html    # Problem details & submission
    └── submissions.html       # Submissions & evaluation
```

## 🛠️ Technology Stack

- **Backend**: Python Flask
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Data Storage**: JSON files
- **Excel Export**: openpyxl library
- **Styling**: Modern CSS with gradients and animations

## 📊 Evaluation Criteria Breakdown

### Database Layer (30 points)
- Schema Design: 10 points
- PL/SQL Packages: 10 points
- Procedures & Functions: 10 points

### REST API Layer (25 points)
- API Design: 10 points
- Integration: 10 points
- Documentation: 5 points

### Code Quality (20 points)
- Architecture: 8 points
- Error Handling: 6 points
- Code Organization: 6 points

### Testing & Documentation (15 points)
- Unit Tests: 5 points
- Integration Tests: 5 points
- README: 5 points

### Bonus Points (10 points)
- Docker Setup: 5 points
- UI Implementation: 5 points

## 🚀 How to Run

### Windows
```bash
run.bat
```

### Linux/Mac
```bash
chmod +x run.sh
./run.sh
```

### Manual
```bash
pip install -r requirements.txt
python app.py
```

Then open: `http://localhost:5000`

## 📝 Usage Flow

1. **Candidates**:
   - Browse problems → Select problem → Submit solution → Get candidate ID

2. **Evaluators**:
   - View submissions → Evaluate → Enter scores → Export to Excel

## 💾 Data Storage

- **Submissions**: Stored in `evaluations/submissions.json`
- **Uploaded Files**: Stored in `submissions/` directory
- **Excel Reports**: Generated in `evaluations/` directory with timestamps

## ✨ Key Highlights

1. **Automated Scoring**: Scores calculated automatically based on rubric
2. **Excel Export**: Professional formatted Excel reports
3. **Real-time Timer**: Countdown timer for hackathon duration
4. **Responsive Design**: Works on desktop and mobile
5. **Easy Evaluation**: Simple form-based evaluation interface
6. **GitHub Integration**: Direct link to candidate repositories

## 🔄 Future Enhancements (Optional)

- Authentication system for evaluators
- Automated code analysis
- Integration with GitHub API for code review
- Real-time notifications
- Advanced analytics dashboard
- Multi-hackathon support

## 📞 Support

For detailed documentation, see `README.md`
For quick setup, see `QUICK_START.md`

---

**Created**: Complete Hackathon IDE Platform
**Purpose**: Conduct and evaluate 90-minute Core Banking hackathon
**Status**: Ready to use

