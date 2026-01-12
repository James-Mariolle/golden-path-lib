# Example Bicep module

Minimal example Bicep module demonstrating project conventions and a safe default resource.

Files:
- `main.bicep` — deploys a storage account (typed params, outputs).
- `main.bicepparam` — example parameter file for local testing.

Usage (example):

```powershell
az deployment group create \
  --resource-group my-rg \
  --template-file Modules/example-bicep/main.bicep \
  --parameters Modules/example-bicep/main.bicepparam
```

Notes:
- Keep modules small and focused; prefer parameter files for environment-specific values.
- Follow Bicep best-practices when modifying or extending (types, `@secure` for sensitive params, typed outputs).