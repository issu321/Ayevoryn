<p align="center">
  <img src="assets/readme/ayevoryn-hero.svg" alt="Ayevoryn — The intelligence layer for the business itself" width="100%">
</p>

<h1 align="center">Ayevoryn</h1>

<p align="center">
  <strong>AI-powered business management &amp; decision intelligence platform.</strong><br>
  <em>The world builds software around businesses. Ayevoryn is built around the business itself.</em>
</p>

<p align="center">
  <a href="https://github.com/issu321/Ayevoryn"><img src="https://img.shields.io/badge/GitHub-issu321%2FAyevoryn-181717?logo=github&logoColor=white" alt="GitHub Repository"></a>
  <img src="https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/Flask-000000?logo=flask&logoColor=white" alt="Flask">
  <img src="https://img.shields.io/badge/SQLite-003B57?logo=sqlite&logoColor=white" alt="SQLite">
  <img src="https://img.shields.io/badge/PostgreSQL%20migration%20ready-4169E1?logo=postgresql&logoColor=white" alt="PostgreSQL migration ready">
  <img src="https://img.shields.io/badge/REST%20API-0F172A?logo=fastapi&logoColor=white" alt="REST API">
</p>
<p align="center">
  <img src="https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white" alt="Docker">
  <img src="https://img.shields.io/badge/Docker%20Compose-1D63ED?logo=docker&logoColor=white" alt="Docker Compose">
  <img src="https://img.shields.io/badge/Gunicorn-499848?logo=gunicorn&logoColor=white" alt="Gunicorn">
  <img src="https://img.shields.io/badge/Pytest-0A9EDC?logo=pytest&logoColor=white" alt="Pytest">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-yellow" alt="MIT License"></a>
  <a href="docs/"><img src="https://img.shields.io/badge/Documentation-docs%2F-2563EB?logo=readthedocs&logoColor=white" alt="Documentation"></a>
</p>

---

Ayevoryn is an AI-powered business management and decision intelligence platform that models an organization's operational and financial reality as an interconnected system. Instead of treating a company as a loose collection of CRUD screens, Ayevoryn treats it as a living structure — departments, people, customers, inventory, suppliers, cash and commitments — that can be observed, simulated and reasoned about.

The platform exists to help operators and analysts:

- **Understand** the business as one interconnected system, not a set of disconnected tools.
- **Model** departments, resources, finances, customers, employees and operations as first-class entities.
- **Explore** possible futures through scenario simulation before committing real money.
- **Understand** the operational and financial consequences of decisions through impact propagation.
- **Analyze** risks and dependencies across the business graph.
- **Convert** business data into actionable intelligence — forecasts, reports and decision traces.

> **Integrity note:** capability descriptions in this README follow the current implementation. Anything not yet implemented is explicitly listed in the [Roadmap](#roadmap). Simulations are deterministic or statistical models unless a feature states otherwise; no external AI model is required to run the core platform.

---

## Table of Contents

- [Platform Overview](#platform-overview)
- [Core Capabilities](#core-capabilities)
- [Business Digital Twin Architecture](#business-digital-twin-architecture)
- [Technical Architecture](#technical-architecture)
- [Application Workflows](#application-workflows)
- [Technology Stack](#technology-stack)
- [Project Structure](#project-structure)
- [Installation & Execution](#installation--execution)
- [Docker Deployment](#docker-deployment)
- [Configuration](#configuration)
- [API Documentation](#api-documentation)
- [Security Architecture](#security-architecture)
- [Testing & Quality Assurance](#testing--quality-assurance)
- [Documentation Center](#documentation-center)
- [Screenshots & Demonstrations](#screenshots--demonstrations)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Author](#author)

---

## Platform Overview

Most business software records what happened. Ayevoryn is designed to reason about what happens next.

At its core, the platform maintains a **business state** — a structured, tenant-scoped representation of a company — and layers three engines on top of it:

1. **Digital Twins** — live computational mirrors of business entities (departments, customers, employees, finance, inventory, suppliers) connected by dependency relationships.
2. **Simulation** — a scenario engine that perturbs the business state and computes downstream consequences across the dependency graph.
3. **Decision Intelligence** — impact propagation, risk evaluation and decision tracing that turn simulation output into an auditable decision record.

The result is a system where a question like *"What happens to cash flow and delivery capacity if we hire 5 engineers and lose our largest supplier?"* is answered by the model, with a traceable chain of cause and effect — not by a spreadsheet assembled by hand.

---

## Core Capabilities

<p align="center"><img src="assets/readme/business-intelligence.svg" alt="Business Intelligence" width="86%"></p>

### Business Intelligence

- **Enterprise command center** — a single operational view across the company.
- **Business analytics** — revenue, profit and departmental performance analysis.
- **Market intelligence** — market context alongside internal metrics.
- **Competition analysis** — competitor tracking and comparative positioning.

<p align="center"><img src="assets/readme/digital-twin.svg" alt="Business Digital Twins" width="86%"></p>

### Business Digital Twins

- Department, customer, employee, financial, inventory and supplier twins.
- **Custom twins** for business-specific entities.
- **Twin dependency intelligence** — an explicit graph of how entities affect each other.
- **Temporal business twins** — state captured and compared over time.

<p align="center"><img src="assets/readme/simulation-engine.svg" alt="Business Simulation Engine" width="86%"></p>

### Business Simulation

Deterministic and statistical scenario models (not black-box ML) over the business state:

- Demand, pricing, marketing and inventory simulation.
- Hiring and workforce simulation.
- Investment and loan simulation.
- Supply chain and supplier disruption scenarios.
- Market crash, recession, expansion and international business scenarios.
- Currency and inflation scenarios.

<p align="center"><img src="assets/readme/decision-intelligence.svg" alt="Decision Intelligence" width="86%"></p>

### Decision Intelligence

- **Decision intelligence engine** — structured decisions linked to evidence.
- **Scenario builder** with **scenario branching**.
- **Impact propagation** across the twin dependency graph.
- **Decision impact tracing** — an audit trail from decision to outcome.

### Financial Intelligence

- Financial modelling, revenue forecasting and expense analysis.
- Investment analysis and budget intelligence.
- Financial impact assessment for simulated scenarios.

### AI Intelligence

- **Pulse AI workspace**, **AI copilot services** and **business agent services** form the AI experience layer.
- The **business insight engine** surfaces explanations and narratives over computed results.
- *Scope note:* where an AI model is not integrated, insights are generated from deterministic rules and statistical computation. Model-backed features are staged in the [Roadmap](#roadmap).

<p align="center"><img src="assets/readme/enterprise-architecture.svg" alt="Enterprise Architecture" width="86%"></p>

### Enterprise Management

- **Multi-company architecture** with tenant isolation.
- **Role-based access control** — superadmin, company admin and user roles.
- **Audit trails** over sensitive actions.
- Company, user and document management.
- Reporting and exports.

### Developer & Integration Surface

- Versioned REST API (`routes/api_v1/`).
- Data import/export, including sample data sheets for onboarding.
- Operational telemetry hooks.
- Database migration support.

---

## Business Digital Twin Architecture

```mermaid
flowchart TD
    C[Company / Tenant] --> D[Departments]
    D --> E[Business Entities<br>customers · employees · inventory<br>suppliers · finance]
    E --> T[Digital Twins]
    T --> G[Dependency Graph]
    G --> S[Business State]
    S --> P[Impact Propagation]
    P --> DI[Decision Intelligence]
```

Each twin is more than a data record: it participates in a dependency graph, so a change in one entity (a supplier failure, a hiring plan, a price change) propagates through related twins and materializes as measurable impact on finance, operations and delivery.

---

## Technical Architecture

```mermaid
flowchart LR
    U[Users / Clients] --> FL[Flask Application<br>app factory · blueprints]
    FL --> SEC[Auth & Tenant Security<br>RBAC · tenant isolation · audit]
    SEC --> RT[Routes & api_v1<br>versioned REST endpoints]
    RT --> SV[Services Layer<br>twins · simulation · forecasting<br>risk · events]
    SV --> ENG[Business Intelligence Engines]
    ENG --> DB[(SQLite<br>PostgreSQL-ready)]
    SV --> DB
```

- **Flask application factory** (`app.py`) with blueprints for UI and API.
- **Layered services**: `services/decision_intelligence/`, `services/forecasting/`, `services/risk/`, `services/events/` isolate domain logic from HTTP handling.
- **SQLite by default**, with a documented PostgreSQL migration path (see `docs/POSTGRESQL_MIGRATION_GUIDE.md`).
- **Gunicorn** WSGI server for production (`wsgi.py`, `gunicorn.conf.py`).

---

## Application Workflows

**Decision intelligence workflow**

```mermaid
flowchart LR
    A[Business Data] --> B[Data Validation]
    B --> C[Business State]
    C --> D[Scenario Definition]
    D --> E[Simulation]
    E --> F[Impact Analysis]
    F --> G[Risk Evaluation]
    G --> H[Decision Output]
```

**Authentication & multi-tenancy workflow**

```mermaid
flowchart TD
    U[User] --> A[Authentication<br>hashed credentials]
    A --> S[Session / Token Validation]
    S --> R[Role Verification<br>superadmin · admin · user]
    R --> T[Tenant Context Resolution]
    T --> Z[Authorized Business Resources]
```

**Simulation execution lifecycle**

```mermaid
flowchart TD
    Q[User Request] --> V[Input Validation]
    V --> J[Simulation Job]
    J --> N[Business State Snapshot]
    N --> E[Simulation Engine]
    E --> I[Impact Calculation]
    I --> P[Result Persistence]
    P --> R[Reporting & Export]
```

---

## Technology Stack

| Layer | Technologies |
|---|---|
| Backend | Python · Flask (application factory, blueprints) |
| Database | SQLite (default) · PostgreSQL migration path |
| Security | Hashed credentials · RBAC · tenant isolation · audit logging |
| API | Versioned REST blueprints (`routes/api_v1/`) |
| Analytics & Simulation | Deterministic + statistical engines (`services/forecasting`, `services/risk`) |
| Frontend | Jinja2 templates · vanilla HTML/CSS/JS (`templates/`, `static/`) |
| Deployment | Docker · Docker Compose · Gunicorn |
| Testing | Pytest |

Only technologies actually used by the codebase are listed; see `requirements.txt` for pinned versions.

---

## Project Structure

```
Ayevoryn/
├── app.py                  # Flask application factory
├── run.py                  # Development server entry point
├── wsgi.py                 # WSGI entry for Gunicorn
├── gunicorn.conf.py        # Gunicorn production configuration
├── requirements.txt        # Pinned Python dependencies
├── Dockerfile              # Container build
├── docker-compose.yml      # Compose orchestration
├── app.bat                 # Windows quick-start helper
├── config/
│   └── settings.py         # Environment-driven configuration
├── database/
│   └── models/             # Domain models per business area
├── routes/
│   └── api_v1/             # Versioned REST API blueprints
├── services/
│   ├── decision_intelligence/  # Decision engine & impact tracing
│   ├── events/                 # Domain event infrastructure
│   ├── forecasting/            # Revenue & financial forecasting
│   └── risk/                   # Risk evaluation models
├── security/               # Auth, RBAC, tenant isolation
├── templates/              # Jinja2 UI
├── static/                 # CSS / JS / upload assets
├── migrations/             # Schema migrations
├── tests/                  # Pytest suite
├── docs/                   # Enterprise documentation (8 guides)
├── tools/                  # Utility & maintenance scripts
├── archive/                # Historical migration scripts
└── Sample-Data-Sheets/     # Import templates & sample data
```

---

## Installation & Execution

> Requires Python 3.10+ and Git. Verify pinned versions in `requirements.txt`.

### Windows 11

```bat
git clone https://github.com/issu321/Ayevoryn.git
cd Ayevoryn

py -m venv .venv
.venv\Scripts\activate

pip install -r requirements.txt
copy .env.example .env        :: then edit values

:: Initialize the database on first run, then start:
python run.py
```

Or simply double-click `app.bat` for the assisted quick-start.

### Linux / Kali

```bash
git clone https://github.com/issu321/Ayevoryn.git
cd Ayevoryn

python3 -m venv .venv
source .venv/bin/activate

pip install -r requirements.txt
cp .env.example .env           # then edit values

python run.py
```

The development server serves the application at `http://127.0.0.1:5000` (or the port configured in `config/settings.py`).

**Troubleshooting**

- *`activate` not found* — re-create the venv with your system Python (`python3 -m venv .venv`).
- *Port already in use* — stop the conflicting process or override the port via configuration.
- *Database errors on first run* — delete the local dev database file and restart to re-initialize (never do this on production data).

---

## Docker Deployment

<p align="center"><img src="assets/readme/deployment.svg" alt="Deployment Topology" width="86%"></p>

```mermaid
flowchart LR
    subgraph Host[Production Host]
        DC[Docker Engine] --> G[Gunicorn<br>WSGI workers]
        G --> APP[Flask App]
        APP --> VOL[(Persistent data volume)]
    end
    CLI[docker compose] --> DC
```

```bash
# Build the image
docker build -t ayevoryn .

# Or start the full stack with Compose
docker compose up -d --build

# Follow logs
docker compose logs -f

# Stop
docker compose down
```

- Configuration is injected through environment variables (see `.env.example`).
- Databases and upload assets live on a persistent volume — `docker compose down` never destroys business data.
- For production hardening, review `docs/PRODUCTION_DEPLOYMENT_CHECKLIST.md` and `docs/OPERATIONAL_RUNBOOK.md`.

---

## Configuration

Configuration is environment-driven via `config/settings.py`. Copy `.env.example` to `.env` and adjust:

```dotenv
# Core
FLASK_ENV=development
SECRET_KEY=replace-with-a-long-random-string

# Database (SQLite default; PostgreSQL supported per migration guide)
DATABASE_URL=sqlite:///business_simulator.db
# DATABASE_URL=postgresql://user:password@localhost:5432/ayevoryn

# Production server
GUNICORN_WORKERS=4

# Uploads / exports
UPLOAD_FOLDER=static/uploads
```

- **Never commit `.env`** — real credentials must stay local.
- Exact variable names follow `config/settings.py`; verify against that file if a setting is not picked up.
- A PostgreSQL cutover is documented in `docs/POSTGRESQL_MIGRATION_GUIDE.md`.

---

## API Documentation

Ayevoryn exposes a **versioned REST API** under `routes/api_v1/`, secured by the same authentication, role verification and tenant isolation as the web UI.

**Full reference:** [`docs/API_REFERENCE_V1.md`](docs/API_REFERENCE_V1.md) — endpoint inventory, request/response contracts and error conventions. The README intentionally does not duplicate endpoint contracts so the reference stays the single source of truth.

---

## Security Architecture

<p align="center"><img src="assets/readme/security.svg" alt="Security Architecture" width="86%"></p>

Mechanisms implemented in the codebase:

- **Password hashing** — credentials are stored hashed, never in plaintext.
- **Role-based access control** — superadmin, company admin and user roles with route-level enforcement.
- **Tenant isolation** — every business query is scoped to the authenticated company context.
- **Input sanitization & validation** — server-side validation on all mutating endpoints and simulation inputs.
- **Session / token management** — authenticated sessions with secure lifecycle handling.
- **Audit logging** — sensitive actions recorded with actor, tenant and timestamp.
- **Upload security** — controlled upload paths and file-type restrictions for documents and assets.

Deep dives: [`docs/SECURITY_AND_COMPLIANCE.md`](docs/SECURITY_AND_COMPLIANCE.md) · [`docs/ENTERPRISE_ARCHITECTURE.md`](docs/ENTERPRISE_ARCHITECTURE.md) · [`docs/OPERATIONAL_RUNBOOK.md`](docs/OPERATIONAL_RUNBOOK.md).

> If any credential was ever committed to Git, rotate it immediately and purge it from history.

---

## Testing & Quality Assurance

```bash
pytest            # full suite
pytest -q         # quiet mode
pytest tests/ -k "simulation"   # targeted run
```

The suite in `tests/` (wired via `conftest.py`) covers, by module area:

- Authentication and session handling.
- Tenant isolation between companies.
- Database integrity and migration safety.
- Financial correctness of computations.
- Simulation realism and edge cases.
- Decision intelligence and impact propagation.
- Forecasting and risk evaluation.
- Security controls and authorization boundaries.
- API contract behavior.
- Deployment and startup smoke checks.
- UI integrity for critical flows.

No coverage percentage is claimed here — run the suite locally for current results and treat `docs/ENTERPRISE_READINESS_SIGNOFF.md` as the recorded quality gate.

---

## Documentation Center

| Document | Description |
|---|---|
| [`docs/API_REFERENCE_V1.md`](docs/API_REFERENCE_V1.md) | Versioned REST API reference — endpoints, contracts, errors |
| [`docs/DATA_PROVENANCE_AND_FINANCIAL_MATHEMATICS.md`](docs/DATA_PROVENANCE_AND_FINANCIAL_MATHEMATICS.md) | Where numbers come from and the math behind them |
| [`docs/ENTERPRISE_ARCHITECTURE.md`](docs/ENTERPRISE_ARCHITECTURE.md) | System design, tenancy and scaling model |
| [`docs/ENTERPRISE_READINESS_SIGNOFF.md`](docs/ENTERPRISE_READINESS_SIGNOFF.md) | Quality gate and readiness record |
| [`docs/OPERATIONAL_RUNBOOK.md`](docs/OPERATIONAL_RUNBOOK.md) | Day-2 operations — logs, backups, incident response |
| [`docs/POSTGRESQL_MIGRATION_GUIDE.md`](docs/POSTGRESQL_MIGRATION_GUIDE.md) | SQLite → PostgreSQL cutover procedure |
| [`docs/PRODUCTION_DEPLOYMENT_CHECKLIST.md`](docs/PRODUCTION_DEPLOYMENT_CHECKLIST.md) | Pre-launch hardening checklist |
| [`docs/SECURITY_AND_COMPLIANCE.md`](docs/SECURITY_AND_COMPLIANCE.md) | Security controls and compliance posture |

---

## Screenshots & Demonstrations

Place product screenshots in `assets/screenshots/` and reference them here, for example:

```markdown
![Command Center](assets/screenshots/command-center.png)
![Scenario Builder](assets/screenshots/scenario-builder.png)
```

*(Screenshots ship with the documentation release; the repository currently relies on the live demo for visuals.)*

---

## Roadmap

**Implemented**

- Multi-company tenant architecture with RBAC and audit trails.
- Business digital twins across departments, customers, employees, finance, inventory and suppliers.
- Scenario simulation: demand, pricing, marketing, inventory, workforce, investment, loans, supply chain, disruption and macro scenarios.
- Decision intelligence: scenario branching, impact propagation, decision tracing.
- Statistical forecasting and financial impact assessment.
- Versioned REST API, reporting and exports.
- Dockerized production packaging with Gunicorn.

**In progress**

- Pulse AI workspace and copilot/agent service hardening.
- Background job infrastructure for long-running simulations.
- Webhook delivery for external integrations.

**Planned**

- ML-backed forecasting ensembles alongside the statistical engines.
- Real-time twin synchronization and streaming updates.
- Third-party accounting / ERP connectors.
- Managed cloud (SaaS) offering with multi-region tenancy.

Features are only promoted to *Implemented* when verified in code and tests.

---

## Contributing

Contributions are welcome. Please:

1. Fork the repository and create a feature branch (`git checkout -b feature/description`).
2. Follow the existing layered architecture — route handlers stay thin, logic lives in `services/`.
3. Add or update tests in `tests/` for any behavioral change.
4. Never commit `.env`, database files, credentials or personal data.
5. Open a pull request with a clear description of the change and its motivation.

---

## License

Distributed under the MIT License. See [`LICENSE`](LICENSE) for details.

---

## Author

**Mohammed Usman**

- GitHub: [github.com/issu321](https://github.com/issu321)
- Portfolio: [issu321.github.io/issu321](https://issu321.github.io/issu321)

Ayevoryn is an enterprise business intelligence and decision intelligence engineering initiative — an attempt to give every business a computational model of itself.

<p align="center"><em>The world builds software around businesses.<br><strong>Ayevoryn is built around the business itself.</strong></em></p>
