#!/bin/bash

echo "🔍 Running local validation checks..."

# Check if index.html exists
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found!"
    exit 1
fi

# Basic HTML validation (if html5validator is installed)
if command -v html5validator &> /dev/null; then
    echo "📝 Validating HTML..."
    html5validator --root . --match "*.html" --log INFO
    if [ $? -eq 0 ]; then
        echo "✅ HTML validation passed"
    else
        echo "❌ HTML validation failed"
        exit 1
    fi
else
    echo "⚠️  html5validator not installed. Run: pip install html5validator"
    echo "✅ Basic file check passed (HTML validation skipped)"
fi

# Check CLAUDE.md exists
if [ ! -f "CLAUDE.md" ]; then
    echo "⚠️  CLAUDE.md not found"
else
    echo "✅ CLAUDE.md exists"
fi

echo "🎉 All local validation checks passed!"
echo "💡 Run this before every push: ./validate.sh"