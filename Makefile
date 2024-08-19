run-migrations:
	dotnet run --project ./src/SatisfactoryPlanner.Migrations/SatisfactoryPlanner.Migrations.csproj

run-seed:
	psql -f ./src/SatisfactoryPlanner.Migrations/Seed/productionitems.sql postgresql://postgres:admin@localhost:5432/SatisfactoryPlannerAPI
	psql -f ./src/SatisfactoryPlanner.Migrations/Seed/playthrough.sql postgresql://postgres:admin@localhost:5432/SatisfactoryPlannerAPI
	psql -f ./src/SatisfactoryPlanner.Migrations/Seed/recipes.sql postgresql://postgres:admin@localhost:5432/SatisfactoryPlannerAPI

clean-db:
	psql -c 'DROP DATABASE IF EXISTS "SatisfactoryPlannerAPI" WITH (FORCE);' postgresql://postgres:admin@localhost:5432
	psql -c 'CREATE DATABASE "SatisfactoryPlannerAPI";' postgresql://postgres:admin@localhost:5432

reset-db: clean-db run-migrations run-seed

reset-recipes:
	psql -f ./src/SatisfactoryPlanner.Migrations/Seed/recipes.sql postgresql://postgres:admin@localhost:5432/SatisfactoryPlannerAPI