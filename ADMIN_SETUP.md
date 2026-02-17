# Admin Authentication Setup

## Default Admin Credentials

**Username**: `admin`  
**Password**: `admin123`

⚠️ **IMPORTANT**: Change these credentials before deploying to production!

## Changing Admin Credentials

### Option 1: Environment Variables (Recommended)

Set environment variables before running the application:

**Windows (PowerShell)**:
```powershell
$env:ADMIN_USERNAME = "your_username"
$env:ADMIN_PASSWORD = "your_secure_password"
python app.py
```

**Windows (CMD)**:
```cmd
set ADMIN_USERNAME=your_username
set ADMIN_PASSWORD=your_secure_password
python app.py
```

**Linux/Mac**:
```bash
export ADMIN_USERNAME="your_username"
export ADMIN_PASSWORD="your_secure_password"
python app.py
```

### Option 2: Modify app.py

Edit the following lines in `app.py`:

```python
ADMIN_USERNAME = os.environ.get('ADMIN_USERNAME', 'your_username')
ADMIN_PASSWORD = os.environ.get('ADMIN_PASSWORD', 'your_secure_password')
```

## Security Features

1. **Session-based Authentication**: Uses Flask sessions for secure authentication
2. **Protected Routes**: Only admins can access:
   - `/submissions` - View all submissions
   - `/api/submissions` - API endpoint for submissions
   - `/export/excel` - Export scores to Excel
   - `/evaluate/<candidate_id>` - Evaluate submissions

3. **Public Routes** (No authentication required):
   - `/` - Home page with problems
   - `/problem/<problem_id>` - Problem details
   - `/submit` - Submit solution (candidates)

## Access Control

- **Candidates**: Can view problems and submit solutions without login
- **Admins**: Must login to view submissions and export scores
- **Session Timeout**: Sessions persist until logout or browser close

## Admin Login Flow

1. Click "Admin Login" button on home page
2. Enter admin credentials
3. Redirected to submissions page
4. Can now view submissions, evaluate, and export scores
5. Click "Logout" to end session

## Troubleshooting

**Cannot login?**
- Verify credentials match exactly (case-sensitive)
- Check environment variables if using them
- Clear browser cookies and try again

**Session expired?**
- Simply login again
- Sessions persist until logout or browser close

**Forgot password?**
- Check environment variables
- Or modify `app.py` directly

## Production Recommendations

1. **Use Strong Passwords**: At least 12 characters with mix of letters, numbers, symbols
2. **Use Environment Variables**: Never hardcode credentials in code
3. **Use HTTPS**: Always use HTTPS in production
4. **Change Secret Key**: Update `SECRET_KEY` in `app.py` or set `SECRET_KEY` environment variable
5. **Session Security**: Consider adding session timeout
6. **Rate Limiting**: Consider adding login attempt limits

## Example Production Setup

```bash
# Set secure credentials
export ADMIN_USERNAME="admin_hackathon_2024"
export ADMIN_PASSWORD="SecureP@ssw0rd!2024"
export SECRET_KEY="your-random-secret-key-here"

# Run application
python app.py
```

