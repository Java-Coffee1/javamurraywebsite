#!/usr/bin/env nix
#! nix shell nixpkgs#bash nixpkgs#hugo nixpkgs#pandoc nixpkgs#python3Packages.weasyprint --command bash
# Usage: ./build.sh
# Makes the resume PDF, builds the site, then commits and pushes.
set -e
cd "$(dirname "$0")"

# SOURCE_DATE_EPOCH keeps the PDF the same when the resume hasn't changed
SOURCE_DATE_EPOCH=0 pandoc content/website_pages/resume.md -s --css resume.css \
    --pdf-engine=weasyprint -o static/resume.pdf
hugo
git add -A
read -p "Commit message: " msg
git diff --cached --quiet || git commit -m "${msg:-Rebuild site}"

echo
echo "Commits about to be pushed to main:"
git log origin/main..HEAD --oneline
echo
read -p "WARNING: this will push to main. Continue? [y/N] " confirm
case "$confirm" in
    [yY]|[yY][eE][sS])
        git push
        ;;
    *)
        echo "Push aborted."
        ;;
esac
