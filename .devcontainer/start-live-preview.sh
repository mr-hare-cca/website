#!/usr/bin/env bash
set -e

# Give the VS Code client & extensions a moment to be fully ready
sleep 3

# 1) Open index.html in the current VS Code window
code --reuse-window index.html || true

# 2) Split editor to the right and focus it
code --command workbench.action.splitEditorRight || true
code --command workbench.action.focusSecondEditorGroup || true

# 3) Launch Live Preview (Integrated target is enforced by settings.json)
code --command 'livePreview.showPreview' || true

# 4) (Optional) return focus to the code on the left
code --command workbench.action.focusFirstEditorGroup || true

echo "✅ index.html opened and Live Preview shown side-by-side (integrated)."
