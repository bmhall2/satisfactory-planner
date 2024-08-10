INSERT INTO "Playthrough" ("Id", "Name") VALUES ('71a6eeda-f574-4b85-a822-475ed5dcf099', 'One');

INSERT INTO "Factory" ("Id", "PlaythroughId", "Name") VALUES ('4e212c14-050c-4798-9b36-2e4491863de6', '71a6eeda-f574-4b85-a822-475ed5dcf099', 'Starter Factory');
INSERT INTO "Factory" ("Id", "PlaythroughId", "Name") VALUES ('c6d7b1e4-9206-4d7b-8627-4c6854c19861', '71a6eeda-f574-4b85-a822-475ed5dcf099', 'Iron Ore Center');

INSERT INTO "FactoryConnection" ("Id", "ExportingFactoryId", "ImportingFactoryId", "ProductionItemId", "Amount")
VALUES ('5912965b-ef95-46c6-8485-5fcd9a53dcf0', 'c6d7b1e4-9206-4d7b-8627-4c6854c19861', '4e212c14-050c-4798-9b36-2e4491863de6', 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 30);

-- IRON ORE MINERS
INSERT INTO "Extractor" ("Id", "FactoryId", "ExtractorType", "NodePurity", "ProductionItemId", "ClockSpeed")
VALUES ('71d90055-cb01-48d6-ab67-c118adbd4226', 'c6d7b1e4-9206-4d7b-8627-4c6854c19861', 0, 1, 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 1.0);

-- IRON INGOT SMELTERS
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('4d9dd893-e46f-4122-80ea-043167996b26', '4e212c14-050c-4798-9b36-2e4491863de6', 1, '7404c03c-72ba-4be7-8315-0f3265718841', 1.0);

INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('ebb868f0-c336-412d-b78d-0a9d68921e03', '4e212c14-050c-4798-9b36-2e4491863de6', 1, '7404c03c-72ba-4be7-8315-0f3265718841', 1.0);

-- IRON PLATE MACHINES
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('80bd0b0b-acf7-41fe-8370-e4d2c3cf108c', '4e212c14-050c-4798-9b36-2e4491863de6', 3, '1cb72062-3fcd-4041-b96a-089831318c13', 0.75);

INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('a4366851-e728-4343-a365-3a0fb1c5ffcd', '4e212c14-050c-4798-9b36-2e4491863de6', 3, '1cb72062-3fcd-4041-b96a-089831318c13', 0.75);

-- IRON ROD MACHINES
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('c186ea82-8ba8-4857-80c5-0b1b96d01a20', '4e212c14-050c-4798-9b36-2e4491863de6', 3, 'e5338649-cd67-417d-818c-c15c9b4b434f', 1.0);

-- INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
-- VALUES ('20de4b08-dea1-4416-b7a7-bc269258c30f', '4e212c14-050c-4798-9b36-2e4491863de6', 3, 'e5338649-cd67-417d-818c-c15c9b4b434f', 1.0);

-- SCREW MACHINES
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('d46fb765-e502-4308-94ee-185c0a229a8a', '4e212c14-050c-4798-9b36-2e4491863de6', 3, '9961e533-16bd-42bf-9044-165167a85115', 0.75);

INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('cffe1267-4a07-427a-8422-89f35c3521ae', '4e212c14-050c-4798-9b36-2e4491863de6', 3, '9961e533-16bd-42bf-9044-165167a85115', 0.75);

-- REINFORCED IRON PLATE MACHINES
INSERT INTO "Machine" ("Id", "FactoryId", "MachineType", "RecipeId", "ClockSpeed")
VALUES ('29bd625e-00a2-4490-ba4f-4ea4adb4fb22', '4e212c14-050c-4798-9b36-2e4491863de6', 4, 'f7561201-5d4e-4443-af3b-795b67f0b775', 1.0);