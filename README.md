# Contracts 📄🔗

This repo contains shared API contracts (protobuf, schemas, etc.) for microservices.

### Features ✨
- 📦 Central place for proto files
- 🔄 Generated code for gRPC & clients
- 🔗 Keeps services in sync

### Quick Start ⚡
1. Edit or add proto files in `proto/`
2. Generate code: `just gen`
3. Import generated code in your services (will be automated later!)

### Structure
- `proto/` — Source .proto files
- `gen/` — Generated code (Python, etc.)
- `justfile` — Common codegen scripts
