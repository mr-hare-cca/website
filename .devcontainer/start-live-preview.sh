#!/usr/bin/env bash
set -e

# Wait until VS Code is fully attached so UI commands work
sleep 3

# Open index.html in the current window
code --reuse-window index.html || true

# Split editor and focus the right group
code --command workbench.action.splitEditorRight || true
code --command workbench.action.focusSecondEditorGroup || true

# Launch Live Preview INSIDE the editor (uses settings above)
code --command 'livePreview.showPreview' || true

# Optional: return focus to code on the left
code --command workbench.action.focusFirstEditorGroup || true

echo "✅ Integrated Live Preview opened beside index.html."
