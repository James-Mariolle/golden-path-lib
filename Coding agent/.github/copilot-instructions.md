# GitHub Copilot Instructions — James' repo

Purpose: Short, actionable guidance for AI coding agents to be immediately productive in this repository.

## Quick summary
- This repo is primarily documentation and personal infra notes (see `James-Mariolle/README.md` and `dummy files/Read me - GitHub Profile/*`).
- Tech stack visible from docs: Azure (Bicep/Terraform), PowerShell, Bash, Docker, OpenTelemetry/Grafana, PostgreSQL/MySQL. There is no CI/workflow or tests currently present.

## Top-level layout (what to check first)
- `James-Mariolle/README.md` — canonical profile README; follow its tone and formatting when adding docs (badges, emoji, short headings).
- `dummy files/Read me - GitHub Profile/` — alternate README examples.
- `Documenation/`, `Modules/`, `Scripts/`, `Extensions/`, `golden-path-lib/` — intended to hold documentation, infra modules, scripts, and extension code; most folders are currently empty.

## What an AI agent should do first
1. Read `James-Mariolle/README.md` for voice and preferred tech vocabulary (emojis, badges, emphasis on reproducible infra).
2. Run a repo-wide search for missing CI/tests (none found). If adding code, add tests and a simple GitHub Actions workflow under `.github/workflows/`.
3. Use `Documenation/` (note spelling) to add architecture diagrams (Mermaid.md) when more than one component exists; prefer "diagrams as code" examples.
4. Place reusable infra in `Modules/` (e.g., Terraform/Bicep modules) and ad-hoc scripts in `Scripts/` (PowerShell `.ps1` or Bash `.sh`).

## Conventions & patterns to follow (derived from current files)
- Markdown style: short sections, badges at top, and small emoji-led headings (see `James-Mariolle/README.md`). Use consistent title and headings.
- Diagrams: prefer Mermaid syntax (README references "Diagrams as Code").
- Language detection: if adding scripts, pick PowerShell on Windows-specific automation; prefer Bash for cross-platform shell snippets.
- Keep items small and focused; README voice is personal and instructive (not formal enterprise docs).

## Workflows and commands (what's discoverable)
- No package.json and no test framework currently present. A minimal GitHub Actions workflow has been added at `.github/workflows/ci.yml` — it lints Markdown and runs a basic PowerShell smoke-check (`Scripts/smoke.ps1`). Expect additional CI steps to be added as modules or scripts are introduced.
- For PowerShell scripts: test locally with PowerShell on Windows (repo owner works on Windows).

## Integration points & external services (from README)
- Azure (Bicep/Terraform), Azure DevOps / GitHub Actions, Docker, OpenTelemetry/Grafana, PostgreSQL/MySQL, cloud providers (AWS, GCP). If you add infra code, include clear configuration examples and local emulation notes (eg. Azure emulator or `az` commands).

## Good-first PRs an AI could open
- Add or extend `.github/workflows/ci.yml` (a minimal workflow was added that lints Markdown and runs a PowerShell smoke check). Consider adding Bicep/Terraform validation steps (`bicep build`, `tflint`) or markdown link checks.
- Review and extend `Modules/example-bicep/` — it now contains `main.bicep` and `main.bicepparam`. Improve the module (outputs, types), add a CI validation step, or add a simple `deploy.ps1` example.
- Update `Documenation/architecture.mmd` — a basic Mermaid diagram was added; expand with network, monitoring, and component boundaries as changes are made.
- Add a lightweight IaC validation job (e.g., `bicep build` / `az bicep build` or Terraform format/check) to CI when new modules are introduced.

## Strict DO / DON'T for code edits
- DO: Keep changes small and document intent in the PR body; reference the README style when editing copy.
- DO: Add examples and a short test or smoke-check for any new script or module.
- DON'T: Introduce broad formatting rules or tests without an accompanying README explaining how to run them locally.

## Files to consult when making changes
- `James-Mariolle/README.md` — style and technology signals
- `dummy files/Read me - GitHub Profile/*` — alternate content patterns
- `Documenation/` — architecture diagrams (see `Documenation/architecture.mmd`)
- `Modules/` — modules live here (see `Modules/example-bicep/` for a minimal Bicep example)
- `Scripts/` — scripts and smoke tests (see `Scripts/smoke.ps1`)

---
If anything here is unclear or you'd like me to add automation templates (example GitHub Actions, Bicep module boilerplate, or a test workflow), tell me which one to prioritize and I'll add it as a follow-up change. Please review these instructions for tone and omissions before we iterate.