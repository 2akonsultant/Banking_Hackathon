# Core Banking Hackathon IDE

A web-based IDE platform for conducting hackathons with automated evaluation and scoring system.

## Features

- **Problem Selection**: 3 carefully selected problems suitable for 90-minute hackathon
- **Submission Management**: Accept GitHub links or ZIP file uploads
- **Admin Authentication**: Secure admin login to protect submissions and scores
- **Automated Evaluation**: Score submissions based on comprehensive rubric
- **Excel Export**: Generate detailed score reports with all candidate information
- **Real-time Timer**: Track remaining time for the hackathon

## Selected Problems (90-Minute Challenge)

1. **Fund Transfer & Transaction Orchestrator** (30-35 minutes)
   - Implement secure fund transfer system with validation and limits
   - Database: ACCOUNT, TRANSACTION, TRANSFER, TRANSFER_LIMIT tables
   - REST APIs: Transfer initiation, status checking, reversal, balance inquiry

2. **Fixed Deposit & Interest Calculator** (25-30 minutes)
   - Implement FD management with interest calculation and maturity handling
   - Database: FIXED_DEPOSIT, FD_INTEREST_RATE, FD_TRANSACTION tables
   - REST APIs: Open FD, premature withdrawal, maturity processing, interest calculator

3. **Account Freeze & Unfreeze Workflow Manager** (25-30 minutes)
   - Implement account freeze/unfreeze system with authorization and audit
   - Database: ACCOUNT, ACCOUNT_FREEZE, FREEZE_REASON, AUDIT_LOG tables
   - REST APIs: Freeze/unfreeze account, status checking, history, approval workflow

## Evaluation Criteria (100 Points Total)

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

## Installation

1. **Install Python 3.8+**

2. **Install dependencies**:
```bash
pip install -r requirements.txt
```

3. **Create necessary directories**:
```bash
mkdir submissions
mkdir evaluations
```

## Running the Application

1. **Start the Flask server**:
```bash
python app.py
```

2. **Access the application**:
   - Open your browser and navigate to: `http://localhost:5000`
   - The hackathon IDE will be available with all problems and submission interface

## Usage

### For Candidates

1. **View Problems**: Browse available problems on the home page
2. **Select Problem**: Click on a problem card to view detailed requirements
3. **Submit Solution**: 
   - Fill in your name and email
   - Choose submission type (GitHub link or ZIP file)
   - Provide your GitHub repository URL or upload ZIP file
   - Click "Submit Solution"

### For Evaluators (Admins)

1. **Login**: Click "Admin Login" on home page
   - Default credentials: `admin` / `admin123`
   - ⚠️ Change these before production! (See ADMIN_SETUP.md)
2. **View Submissions**: After login, you'll see all submissions
3. **Evaluate Submission**: Click "Evaluate" button next to a submission
4. **Enter Scores**: Fill in scores for each category based on the rubric
5. **Submit Evaluation**: Add evaluator name and notes, then submit
6. **Export Results**: Click "Export to Excel" to download comprehensive score report
7. **Logout**: Click "Logout" when done

## Excel Export Features

The exported Excel file includes:
- Candidate information (ID, name, email)
- Problem ID and GitHub link
- Submission timestamp and status
- Detailed scores for all categories
- Total score
- Evaluator name and notes

## File Structure

```
hackathon_ide/
├── app.py                 # Flask application
├── requirements.txt       # Python dependencies
├── README.md             # This file
├── templates/            # HTML templates
│   ├── index.html        # Home page with problem selection
│   ├── problem_detail.html  # Problem details and submission form
│   └── submissions.html  # Submissions list and evaluation interface
├── submissions/          # Uploaded ZIP files (created automatically)
└── evaluations/          # JSON data and Excel exports (created automatically)
```

## API Endpoints

### Public Endpoints (No Authentication)
- `GET /` - Home page with problem selection
- `GET /problem/<problem_id>` - Problem details page
- `POST /submit` - Submit solution (JSON)
- `GET /admin/login` - Admin login page
- `POST /admin/login` - Process admin login
- `GET /admin/logout` - Admin logout

### Admin-Only Endpoints (Requires Authentication)
- `GET /submissions` - View all submissions (Admin only)
- `GET /api/submissions` - Get submissions as JSON (Admin only)
- `POST /evaluate/<candidate_id>` - Evaluate a submission (Admin only)
- `GET /export/excel` - Export scores to Excel (Admin only)

## Notes

- Submissions are stored in JSON format in `evaluations/submissions.json`
- Excel files are generated with timestamp in filename
- The timer on the home page counts down from 90 minutes
- All scores are calculated automatically based on the evaluation rubric

## Troubleshooting

- **Port already in use**: Change the port in `app.py` (last line)
- **Missing directories**: Create `submissions` and `evaluations` directories manually
- **Import errors**: Ensure all dependencies are installed: `pip install -r requirements.txt`

## License

This project is created for hackathon evaluation purposes.

