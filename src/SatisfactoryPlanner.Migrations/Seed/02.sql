INSERT INTO "Playthrough" ("Id", "Name") VALUES ('71a6eeda-f574-4b85-a822-475ed5dcf099', 'One');

INSERT INTO "Factory" ("Id", "PlaythroughId", "Name") VALUES ('4e212c14-050c-4798-9b36-2e4491863de6', '71a6eeda-f574-4b85-a822-475ed5dcf099', 'Starter Factory');

-- IRON PLATE MACHINES
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('80bd0b0b-acf7-41fe-8370-e4d2c3cf108c', '4e212c14-050c-4798-9b36-2e4491863de6', 2, '1cb72062-3fcd-4041-b96a-089831318c13', 0.75);

INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('a4366851-e728-4343-a365-3a0fb1c5ffcd', '4e212c14-050c-4798-9b36-2e4491863de6', 2, '1cb72062-3fcd-4041-b96a-089831318c13', 0.75);

-- IRON ROD MACHINES
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('c186ea82-8ba8-4857-80c5-0b1b96d01a20', '4e212c14-050c-4798-9b36-2e4491863de6', 2, 'e5338649-cd67-417d-818c-c15c9b4b434f', 1.0);

-- INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
-- VALUES ('20de4b08-dea1-4416-b7a7-bc269258c30f', '4e212c14-050c-4798-9b36-2e4491863de6', 2, 'e5338649-cd67-417d-818c-c15c9b4b434f', 1.0);

-- SCREW MACHINES
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('d46fb765-e502-4308-94ee-185c0a229a8a', '4e212c14-050c-4798-9b36-2e4491863de6', 2, '9961e533-16bd-42bf-9044-165167a85115', 0.75);

INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('cffe1267-4a07-427a-8422-89f35c3521ae', '4e212c14-050c-4798-9b36-2e4491863de6', 2, '9961e533-16bd-42bf-9044-165167a85115', 0.75);

-- REINFORCED IRON PLATE MACHINES
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('29bd625e-00a2-4490-ba4f-4ea4adb4fb22', '4e212c14-050c-4798-9b36-2e4491863de6', 3, 'f7561201-5d4e-4443-af3b-795b67f0b775', 1.0);