# Get Started

## Setup docker workspace
```bash
cp .env.dist.dev.env .env
```

## Clone projects

## Good Commands
```bash
ts-node -r tsconfig-paths/register ./node_modules/.bin/typeorm 
ts-node -r tsconfig-paths/register ./node_modules/.bin/typeorm schema:drop
ts-node -r tsconfig-paths/register ./node_modules/.bin/typeorm schema:sync
ts-node -r tsconfig-paths/register ./node_modules/.bin/typeorm migration:generate -n init
ts-node -r tsconfig-paths/register ./node_modules/.bin/typeorm migration:run

ts-node ./node_modules/typeorm/cli.js migration:run

```

docker-compose up -d opt-mm
docker-compose exec opt-mm sh
docker-compose logs -f opt-mm
