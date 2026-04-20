# Shagun Verma's Professional Portfolio

A responsive, single-page portfolio with an integrated admin panel for managing photo gallery via GitHub.

## 📋 Project Structure

```
├── index.html          # Public-facing portfolio website
├── admin.html          # Password-protected admin panel
├── .env.example        # Environment variables template
└── README.md           # This file
```

## 🎯 Features

- **Responsive Design** - Works on all devices
- **Photo Gallery** - Managed from admin panel, stored in GitHub
- **Admin Panel** - Password-protected dashboard to:
  - Upload photos
  - Edit captions
  - Delete photos
  - Reorder photos (drag & drop)
- **Auto-Sync** - Photos automatically display on public site
- **Caption Management** - Captions stored in `captions.json` on GitHub

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/shagunvermaamity-boop/shagun-portfolio.git
cd shagun-portfolio
```

### 2. Setup GitHub Credentials

The admin panel requires GitHub credentials to upload photos.

**Option A: Via Admin Panel (Easiest)**
1. Open `admin.html` in your browser
2. When you first login with password `shagun123`, a setup screen will appear
3. Enter your GitHub credentials (stored in browser's localStorage)
4. You're all set!

**Option B: Manual Setup**
1. Create a `.env.local` file (copy from `.env.example`)
2. Fill in your GitHub credentials
3. The admin panel will read from localStorage

### 3. Set Your Credentials

You need:
- **GitHub Personal Access Token** - [Create here](https://github.com/settings/tokens/new)
  - Scopes needed: `repo` (full control of private repositories)
- **GitHub Username** - Your GitHub handle (default: `shagunvermaamity-boop`)
- **GitHub Repo for Photos** - Name of repo storing photos (default: `shagun-portfolio-photos`)

### 4. Access the Site

**Public Portfolio:** Open `index.html` in browser or deploy to Netlify

**Admin Panel:** Open `admin.html` in browser
- Password: `shagun123`
- Add/edit/delete photos
- Captions auto-sync to public site

## 🔐 Security Notes

- **Password:** Currently `shagun123` - change in admin.html if needed
- **GitHub Token:** Stored in browser's localStorage, not in git repo
- **Public Repo:** Photos are stored in a public GitHub repo for easy access

## 📸 Photo Management

### Upload Photos
1. Go to admin panel (`admin.html`)
2. Login with password
3. Click "Upload Photos" area or drag & drop
4. Photos automatically appear on public site

### Edit Captions
1. Click "✏️ Edit Caption" on any photo
2. Update caption text
3. Click Save
4. Captions sync to public site instantly

### Reorder Photos
1. Drag & drop photos in admin panel to reorder
2. Order updates on public site automatically

## 🎨 Customization

### Edit Portfolio Content
- **Hero Section:** Lines 242-290 in `index.html`
- **Experience:** Lines 262+ in `index.html`
- **Internship:** Lines 358+ in `index.html`
- **Achievements:** Lines 410+ in `index.html`
- **Skills:** Lines 423+ in `index.html`
- **Education:** Lines 436+ in `index.html`
- **Contact:** Search for `id="contact"` in `index.html`

### Change Colors
Edit CSS variables at top of `index.html` (lines ~75):
```css
:root {
  --navy: #1B3A5C;
  --gold: #C49A3C;
  --cream: #FAF7F2;
  /* ... more colors ... */
}
```

### Change Password
In `admin.html`, line ~128:
```javascript
const PASSWORD = 'YOUR_NEW_PASSWORD';
```

## 🌐 Deployment

### To Netlify
1. Zip the files: `index.html` and `admin.html`
2. Upload to Netlify via drag & drop or CLI
3. Set environment variables in Netlify:
   - `GITHUB_TOKEN`
   - `GITHUB_USER`
   - `GITHUB_REPO`

### To Any Web Host
Simply upload `index.html` and `admin.html` to your hosting provider.

## 📱 Browser Support

- Chrome/Edge 90+
- Firefox 88+
- Safari 14+
- Mobile browsers

## 🔄 Workflow for Making Edits

1. **Edit Locally:** Modify `index.html` or `admin.html` in text editor
2. **Test:** Open in browser to verify changes
3. **Commit to Git:**
   ```bash
   git add .
   git commit -m "Update: your change description"
   git push origin main
   ```
4. **Deploy:** Upload to Netlify or your hosting provider

## 🐛 Troubleshooting

### Admin panel not uploading photos?
- Check browser console (F12 → Console tab) for errors
- Verify GitHub token is valid
- Ensure `shagun-portfolio-photos` repo exists and is public

### Photos not showing on public site?
- Wait 30 seconds for GitHub cache to update
- Hard refresh browser (Ctrl+Shift+R or Cmd+Shift+R)
- Check GitHub API rate limits (60 requests/hour without token)

### Captions not updating?
- Ensure `captions.json` exists in your photos repo
- Verify GitHub token has `repo` scope

## 📝 License

Personal portfolio © 2026 Shagun Verma

## 💬 Support

For questions or issues, check the code comments or contact shagunvermaamity@gmail.com

---

**Made with ❤️ by Shagun Verma**
