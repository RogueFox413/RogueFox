# First, make sure node_modules is properly in .gitignore
echo "node_modules/" >> .gitignore

# Remove node_modules from Git's tracking (but keep the files locally)
git rm -r --cached node_modules

# Clean up the Git repository
git gc --prune=now
git prune

# Commit these changes
git add .gitignore
git commit -m "Remove node_modules from tracking and update gitignore"

# If the large files are still in your history, you might need to rewrite history
# This is more aggressive but sometimes necessary:
git filter-branch --tree-filter 'rm -rf node_modules' --prune-empty HEAD
