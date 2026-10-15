#!/usr/bin/env nix
#! nix shell nixpkgs#bash nixpkgs#hugo nixpkgs#pandoc nixpkgs#python3Packages.weasyprint --command bash
# Usage: ./build.sh
# Makes the resume PDF, builds the site, then commits and pushes.
set -e
cd "$(dirname "$0")"

# Only rebuild the PDF when its source has changed, and drop the old file first
if [ ! -f static/resume.pdf ] \
    || [ content/website_pages/resume.md -nt static/resume.pdf ] \
    || [ resume.css -nt static/resume.pdf ]; then
    rm -f static/resume.pdf
    SOURCE_DATE_EPOCH=0 pandoc content/website_pages/resume.md -s --css resume.css \
        --pdf-engine=weasyprint -o static/resume.pdf
fi
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
