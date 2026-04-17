#!/usr/bin/env sh
# Copy canonical citations into the marketing site (same-origin /data/citations.json).
set -e
ROOT="$(cd "$(dirname "$0")" && pwd)"
SITE="${ROOT}/../obversary-website/data/citations.json"
cp "${ROOT}/citations.json" "$SITE"
echo "Updated: $SITE"
echo "Commit obversary-website and push to refresh Vercel."
