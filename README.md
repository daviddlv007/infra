# Project Monorepo (Angular + Django + Postgres)

Scaffold reproducible "plug & play" para desarrollo en Windows 11 + WSL2 + Ubuntu + Docker Desktop.

## Resumen
Stack:
- Frontend: Angular (scaffold mínimo incluido; para un proyecto Angular completo ejecutar `npx @angular/cli new frontend` si lo deseas)
- Backend: Django 4.2 (scaffold mínimo incluido)
- DB: PostgreSQL 15
- Node.js: 22.x (runtime recomendado para frontend)

Levantar:
```bash
cp .env.example .env
make -C infra up
```

Comandos útiles:
- `make -C infra build`
- `make -C infra up`
- `make -C infra logs`
- `make -C infra shell SERVICE=backend`

Notas:
- El `docker-compose.yml` está pensado para paridad con producción; `docker-compose.override.yml` agrega volúmenes y comandos para desarrollo (hot-reload).
- En WSL usar integración con Docker Desktop y montajes `:cached` ya configurados.
- Para completar el frontend con Angular real, dentro de `frontend/` puedes ejecutar `npx @angular/cli@16 new . --defaults` (fuera del contenedor) o usar `ng` dentro del contenedor si ya instalas dependencias.
