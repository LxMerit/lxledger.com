#!/bin/bash
#
# deploy-uat.sh - Build and deploy lxledger.com to UAT (Cloudflare Pages)
#
# UAT URL: https://www-uat.lxledger.com
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🧪 DEPLOYING TO UAT (not production)"
echo ""

echo "🔨 Building site..."
cd "$SCRIPT_DIR"
npm run build

echo "🚀 Deploying to Cloudflare Pages (UAT branch)..."
wrangler pages deploy build --project-name=lxledger --branch=uat

echo ""
echo "✅ UAT Deploy complete!"
echo "   UAT: https://www-uat.lxledger.com"
echo "   Alt: https://uat.lxledger.pages.dev"
echo ""
echo "⚠️  Test thoroughly before deploying to production!"
echo "   Run ./deploy.sh to push to production after approval."
