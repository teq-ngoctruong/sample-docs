# Documentation Template

[![MkDocs](https://img.shields.io/badge/MkDocs-Material-blue)](https://squidfunk.github.io/mkdocs-material/)
[![Docker](https://img.shields.io/badge/Docker-20.10+-blue)](https://docker.com)
[![PlantUML](https://img.shields.io/badge/PlantUML-C4%20Model-green)](https://github.com/plantuml-stdlib/C4-PlantUML)

## Overview

A comprehensive documentation system featuring:
- **Static site generation** with MkDocs Material theme
- **Architecture diagrams** via PlantUML with C4 model support
- **Architecture Decision Records (ADR)** management
- **Dockerized development environment** for consistent builds
- **Live reload** for efficient content development

## Tools & Technologies

- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) - Modern documentation theme
- [PlantUML with C4 model](https://github.com/plantuml-stdlib/C4-PlantUML/tree/master) - Architecture diagrams
- [ADR-tools](https://github.com/npryce/adr-tools) - Architecture decision records
- [mkdocs-awesome-nav](https://github.com/lukasgeiter/mkdocs-awesome-nav-plugin) - Enhanced navigation

## Getting Started

### Prerequisites

- Docker 20.10+
- Docker Compose 2.0+
- Make (optional, for convenience commands)

### Quick Start

1. **Build the documentation container:**
   ```shell
   make docs/prepare
   ```

2. **Start the development server:**
   ```shell
   make dev/local/docs
   ```

3. **Access the documentation:**
   Open [http://localhost:8000](http://localhost:8000) in your browser

## Project Structure

```
├── documentation/           # Source markdown files
│   ├── index.md            # Homepage content
│   ├── system-context.md   # System context documentation
│   ├── container.md        # Container documentation
│   ├── .nav.yml           # Navigation configuration
│   └── decisions/         # Architecture Decision Records
├── docs/                  # Generated HTML output (build artifacts)
├── mkdocs.yml            # MkDocs configuration
├── Dockerfile            # Container definition
├── docker-compose.yaml   # Development environment
└── Makefile             # Convenience commands
```

## Writing Documentation

### Adding New Pages

1. Create markdown files in the `documentation/` directory
2. Update `documentation/.nav.yml` to include new pages in navigation
3. Use standard Markdown syntax with MkDocs Material extensions

### Creating Diagrams

Use PlantUML syntax for architecture diagrams:

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml

Person(user, "User", "Documentation reader")
System(docs, "Documentation System", "MkDocs-based documentation")

Rel(user, docs, "Reads", "HTTPS")
@enduml
```

### Architecture Decision Records

ADRs are stored in `documentation/decisions/` and follow the standard format:
- **Status**: Proposed, Accepted, Deprecated, Superseded
- **Context**: The issue motivating this decision
- **Decision**: The change being proposed or made
- **Consequences**: What becomes easier or more difficult
