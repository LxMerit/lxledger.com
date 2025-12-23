#!/bin/bash
#
# deploy.sh - Build and deploy lxledger.com to Cloudflare Pages (Production)
#
# Production URL: https://lxledger.com / https://www.lxledger.com
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🚀 DEPLOYING TO PRODUCTION"
echo ""

echo "🔨 Building site..."
cd "$SCRIPT_DIR"
npm run build

echo "🚀 Deploying to Cloudflare Pages..."
wrangler pages deploy .svelte-kit/cloudflare --project-name=lxledger --commit-dirty=true

echo ""
echo "✅ Production Deploy complete!"
echo "   Preview: https://lxledger.pages.dev"
echo "   Production: https://lxledger.com"
