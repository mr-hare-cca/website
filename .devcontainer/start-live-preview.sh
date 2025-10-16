#!/usr/bin/env bash
set -e

# Wait for VS Code server and extensions to finish loading
sleep 5

# 1️⃣ Open index.html
code --force --reuse-window index.html || true

# 2️⃣ Split editor right (side-by-side)
code --command workbench.action.splitEditorRight || true

# 3️⃣ Focus the right editor group
code --command workbench.action.focusSecondEditorGroup || true

# 4️⃣ Launch integrated Live Preview
code --command 'livePreview.showPreview' || true

# 5️⃣ Return focus to the left (code) side
code --command workbench.action.focusFirstEditorGroup || true

echo "✅ Live Preview opened side-by-side with index.html"
