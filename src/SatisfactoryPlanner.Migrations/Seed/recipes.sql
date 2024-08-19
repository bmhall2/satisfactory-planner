DELETE FROM "RecipeResult";
DELETE FROM "RecipeIngredient";
DELETE FROM "Recipe";

-- INGOT RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('7404c03c-72ba-4be7-8315-0f3265718841', 'Iron Ingot', 1);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8b54a706-78d7-4dfb-8968-c872a29f4f27', '7404c03c-72ba-4be7-8315-0f3265718841', 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('bac20d9b-cff7-4f5e-b741-8ebe649d0a05', '7404c03c-72ba-4be7-8315-0f3265718841', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1ff7cd68-07aa-49ce-a664-9a5492e59a8a', 'Copper Ingot', 1);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c9d896d0-04ab-43f2-bda6-19b6ae990a4b', '1ff7cd68-07aa-49ce-a664-9a5492e59a8a', '549e7508-18bd-4dc9-8049-df92c18780ef', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('48f9c75d-c534-44bd-9d0c-b2b91ff49d3a', '1ff7cd68-07aa-49ce-a664-9a5492e59a8a', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('a256b109-8014-4ea5-b38c-d7d595db52e7', 'Caterium Ingot', 1);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('76be47be-6771-4463-89c8-86fb1826524a', 'a256b109-8014-4ea5-b38c-d7d595db52e7', 'f9403bc2-af3f-4ddf-bd46-89e3f32cc7d3', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0b7d6f02-93df-4530-a274-89dd785a5b29', 'a256b109-8014-4ea5-b38c-d7d595db52e7', '067b5427-8cf8-4b09-aadf-b3ecaf1aa333', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('aed1698b-2ed1-4ff2-9a9b-21b74f05010a', 'Steel Ingot', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bf3edc34-3b55-45d2-b5ed-d9191ddac850', 'aed1698b-2ed1-4ff2-9a9b-21b74f05010a', 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 45);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ba08642e-b6e2-4e87-9b44-e10836420d48', 'aed1698b-2ed1-4ff2-9a9b-21b74f05010a', '38862792-f956-4804-9d7a-46b60fb8d013', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e3a22e44-a69c-40d2-8637-c7881df2865d', 'aed1698b-2ed1-4ff2-9a9b-21b74f05010a', 'c1bc6f2a-5143-4fa9-a0c6-c9905afa98c0', 45);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1d8cd144-79f1-4dd1-8fbd-d88433a1e559', 'Aluminum Ingot', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2a5ee77c-ee15-4d79-b3b9-07940629e506', '1d8cd144-79f1-4dd1-8fbd-d88433a1e559', '70109a5e-14a6-4ce2-8baf-8f3c2e200625', 90);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('13637c03-b30d-47ed-859e-56e1d70af0f2', '1d8cd144-79f1-4dd1-8fbd-d88433a1e559', 'cd229d3e-85da-4a02-b598-08dc76028222', 75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('fc24d643-69dc-484f-9b25-539c47989532', '1d8cd144-79f1-4dd1-8fbd-d88433a1e559', '5b2ba98e-bfa1-43ea-a211-42fe9977fbe4', 60);

-- MINERAL RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('52dabbcf-1452-4e97-b514-e75b4580edf9', 'Concrete', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('348a211d-5d96-482a-a3b1-5ae6eae8c454', '52dabbcf-1452-4e97-b514-e75b4580edf9', 'd0ae0c70-f8e1-4d90-b961-cb934f9ccb74', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c32600b8-4ec3-43a9-b147-11f460b8b9c1', '52dabbcf-1452-4e97-b514-e75b4580edf9', 'e9978ec3-b882-40cf-8e93-a94936e66029', 15);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('73e96722-1870-44ef-b811-6a5d36acd00c', 'Quartz Crystal', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('01e1bec7-8d64-4cd1-963c-6b9da9efb0d0', '73e96722-1870-44ef-b811-6a5d36acd00c', 'c0d59595-4b03-40ea-a4b1-df06c5b27d5f', 37.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('2b62373f-19d5-4430-bd43-2a7b27a3268a', '73e96722-1870-44ef-b811-6a5d36acd00c', '7d8858d3-3c54-4e99-9ec7-88961a8f883f', 22.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('03192e0f-a805-441e-bc1b-fd20c694f457', 'Silica', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('88e2ae3a-ab7e-40f5-a8e6-d3729d6e3245', '03192e0f-a805-441e-bc1b-fd20c694f457', 'c0d59595-4b03-40ea-a4b1-df06c5b27d5f', 22.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e04e2e0f-8068-4ab0-8410-0091f7f91b26', '03192e0f-a805-441e-bc1b-fd20c694f457', 'cd229d3e-85da-4a02-b598-08dc76028222', 37.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('dc0b12f6-9c37-4413-9fd3-8611b9daaa09', 'Copper Powder', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('adb550c2-b2ed-4e83-b02c-9a264604d08e', 'dc0b12f6-9c37-4413-9fd3-8611b9daaa09', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 300);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('078ce32b-da31-486a-aaab-b613d9a32bc0', 'dc0b12f6-9c37-4413-9fd3-8611b9daaa09', 'ba4f6819-9f75-47c0-8504-c9fced1a9100', 50);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d72f748d-6e2d-4ff2-9f56-0a0dc83fad7a', 'Petroleum Coke', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('903de386-5ad3-4ee9-aa76-918fe7923d3e', 'd72f748d-6e2d-4ff2-9f56-0a0dc83fad7a', '03ab8a1b-6e94-406b-b362-31938e984e2d', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('4ca0ceff-2523-404b-93fd-d1c794a98517', 'd72f748d-6e2d-4ff2-9f56-0a0dc83fad7a', '1ee1a2bb-3539-4075-95ba-9543f879e3c1', 120);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('a53f8b42-4904-4fff-9fda-f6a36995c3eb', 'Aluminum Scrap', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f630f984-e21a-4dae-93f4-1aa7e98d1b01', 'a53f8b42-4904-4fff-9fda-f6a36995c3eb', '48bf8676-96cb-40e1-a367-ee6a4d50603f', 240);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3127885b-bbe9-4c1b-a3d1-c9c5c009d3cc', 'a53f8b42-4904-4fff-9fda-f6a36995c3eb', '38862792-f956-4804-9d7a-46b60fb8d013', 120);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('bb8a1bda-aa9a-42cb-b011-7bd57f6078b9', 'a53f8b42-4904-4fff-9fda-f6a36995c3eb', '70109a5e-14a6-4ce2-8baf-8f3c2e200625', 360);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0fc0a87d-1af6-4627-82cc-1b034de75f84', 'a53f8b42-4904-4fff-9fda-f6a36995c3eb', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 120);

-- LIQUID RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('19082f24-c6fb-46eb-952d-16f95fcdb4ca', 'Unpackage Water', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e5d2ec9f-87bc-4956-b7c7-8ec05fc676a0', '19082f24-c6fb-46eb-952d-16f95fcdb4ca', '5dbcad17-bf69-43d6-ba9e-d489014884a7', 120);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('938cc10e-90e1-4f68-9115-5cac147b588e', '19082f24-c6fb-46eb-952d-16f95fcdb4ca', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 120);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('30c3f161-f203-4431-90c2-e2587299077f', '19082f24-c6fb-46eb-952d-16f95fcdb4ca', '15bccf69-9c55-413b-bf99-2858d7653f3f', 120);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('8765977e-7bd4-479a-b17e-a792422becbe', 'Unpackage Oil', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('13fc473c-3fe8-4f91-bcaa-40b8de9e6f9d', '8765977e-7bd4-479a-b17e-a792422becbe', 'f10ec3bc-71b9-4f55-b35b-e53e9710ecf0', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('420cd93c-a6b0-4a9a-9da0-c7da326d5699', '8765977e-7bd4-479a-b17e-a792422becbe', '60cc959c-3782-42ba-ab4b-e3ddaf4da6bd', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('cbcf13d4-61a5-4cf4-b2f1-09bbd1ae53d9', '8765977e-7bd4-479a-b17e-a792422becbe', '15bccf69-9c55-413b-bf99-2858d7653f3f', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('9c2a7dfd-d542-4131-9d84-6974b944d91b', 'Fuel', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('16de88bb-2a17-4c78-8bbc-caebaa3f3cad', '9c2a7dfd-d542-4131-9d84-6974b944d91b', '60cc959c-3782-42ba-ab4b-e3ddaf4da6bd', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('19f81ca5-84d0-4c50-826b-9a4c1f9dde02', '9c2a7dfd-d542-4131-9d84-6974b944d91b', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('676b1874-0e58-4b49-afca-d1ca4687b581', '9c2a7dfd-d542-4131-9d84-6974b944d91b', '11ecce3d-8787-41dc-91ee-f9fb40aca645', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d840a9cc-b997-45b8-a0d7-ab28d979ce07', 'Alumina Solution', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1a5d7c6f-50b5-4ed7-994f-eab1ecf230b6', 'd840a9cc-b997-45b8-a0d7-ab28d979ce07', '25c668ba-3a12-46ec-9008-1d2a6fdee1a8', 120);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('cbcd946f-0dcb-42cb-970b-b33ce2048c0c', 'd840a9cc-b997-45b8-a0d7-ab28d979ce07', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 180);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('44d1b451-94b9-4600-98da-4a7bc6baeb83', 'd840a9cc-b997-45b8-a0d7-ab28d979ce07', '48bf8676-96cb-40e1-a367-ee6a4d50603f', 120);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b07c767c-7b0b-4506-a9ee-6d73c4996918', 'd840a9cc-b997-45b8-a0d7-ab28d979ce07', 'cd229d3e-85da-4a02-b598-08dc76028222', 50);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('940b5594-1481-4ea6-8aa1-4aa71fdaf4a3', 'Unpackage Heavy Oil Residue', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d0e6b420-029a-464e-8605-0d6d54b7cb01', '940b5594-1481-4ea6-8aa1-4aa71fdaf4a3', '9bc764d6-dbbf-49b9-b80b-73b0cf2f66f8', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('dc2a187f-06dd-4b8c-b612-cab75ab1600d', '940b5594-1481-4ea6-8aa1-4aa71fdaf4a3', '03ab8a1b-6e94-406b-b362-31938e984e2d', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('8d78328e-b5a4-40bf-a9fc-035f69938a4d', '940b5594-1481-4ea6-8aa1-4aa71fdaf4a3', '15bccf69-9c55-413b-bf99-2858d7653f3f', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('87be3c01-dec7-436f-90df-1bf5077b32a1', 'Unpackage Fuel', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d8773dfa-e4f0-400d-9abd-35701df194ff', '87be3c01-dec7-436f-90df-1bf5077b32a1', '8f1e4160-e248-4141-b91d-873e97b60c99', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('82eee7e7-1de4-4d3a-8c4e-0f1dfb07419c', '87be3c01-dec7-436f-90df-1bf5077b32a1', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('febe8096-fad2-4368-8fb2-d9258ba3f964', '87be3c01-dec7-436f-90df-1bf5077b32a1', '15bccf69-9c55-413b-bf99-2858d7653f3f', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('775cbdb2-0048-4f27-b25b-b16765435849', 'Liquid Biofuel', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4a786569-6109-4b10-95c9-f4006fd5a3a9', '775cbdb2-0048-4f27-b25b-b16765435849', '3ddc7b64-5a1a-48f1-b4e2-14457ad8bc77', 90);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('14156a82-b5e3-4606-b046-ab3238b5962b', '775cbdb2-0048-4f27-b25b-b16765435849', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1a4b6c35-109b-4973-8370-e94eaeb19023', '775cbdb2-0048-4f27-b25b-b16765435849', '03470a09-121e-41bb-9dc5-942201c0b1bc', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1c4159e7-ae76-4eec-bb35-3425bfe7ef36', 'Unpackage Liquid Biofuel', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('80a483e9-01f1-4b43-8603-420a682ed567', '1c4159e7-ae76-4eec-bb35-3425bfe7ef36', 'ed4e5f4a-da1f-4623-a6f3-b9afa44fd51a', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('244ef19d-4f61-492e-bacc-bf45b33a1049', '1c4159e7-ae76-4eec-bb35-3425bfe7ef36', '03470a09-121e-41bb-9dc5-942201c0b1bc', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('cf6cdfa8-0285-4bb3-bfd8-c29d04d6d0c1', '1c4159e7-ae76-4eec-bb35-3425bfe7ef36', '15bccf69-9c55-413b-bf99-2858d7653f3f', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('7a4cd1de-765d-4742-aa74-cc84606259e5', 'Turbofuel', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a6fdce50-cdbe-4413-a07d-d3d9da998512', '7a4cd1de-765d-4742-aa74-cc84606259e5', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 22.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('030de1ae-d780-4752-9081-64c06a44a898', '7a4cd1de-765d-4742-aa74-cc84606259e5', '2af25498-23e7-44ac-a559-76963785c211', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('096bf0d3-e981-4229-8bf5-fcfa07b39bc6', '7a4cd1de-765d-4742-aa74-cc84606259e5', 'dbd362ec-7ba8-49e8-84e9-bf83b871853a', 18.75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('254c539e-ed65-4893-85b5-5ffcda69b590', 'Unpackage Turbofuel', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c1f7cd66-8294-416f-a8e4-eab15a410800', '254c539e-ed65-4893-85b5-5ffcda69b590', '6c057622-8b83-4798-a8fa-db1b6ba63a6b', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('40f6af8e-2f19-4b73-abf6-315f9ff94966', '254c539e-ed65-4893-85b5-5ffcda69b590', 'dbd362ec-7ba8-49e8-84e9-bf83b871853a', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('5cf52713-2cb3-4e07-b040-65ee5bc72087', '254c539e-ed65-4893-85b5-5ffcda69b590', '15bccf69-9c55-413b-bf99-2858d7653f3f', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('3551ae98-cc01-407d-89bb-a83e750a600b', 'Sulfuric Acid', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bc2adef1-aaa7-452f-b085-794f64ccae52', '3551ae98-cc01-407d-89bb-a83e750a600b', '2ff52414-1041-4d16-b68e-efc253325b9b', 50);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('fc6096e6-78f4-4cfa-85fe-a9267fe602be', '3551ae98-cc01-407d-89bb-a83e750a600b', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 50);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e6781d33-2d89-4f49-84d3-78ab9a3ee120', '3551ae98-cc01-407d-89bb-a83e750a600b', 'ee513342-5416-42a3-9866-11f2cedf482d', 50);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('4cf25fee-d893-40c8-9ff9-f1ec648c7db0', 'Unpackage Sulfuric Acid', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5099d04b-2eea-426d-81c7-e751f78857e2', '4cf25fee-d893-40c8-9ff9-f1ec648c7db0', '01ff7f33-1b40-4b49-9f9e-3f54bc58ec61', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('89329736-10f9-4a9c-b4f3-5aac762950b3', '4cf25fee-d893-40c8-9ff9-f1ec648c7db0', 'ee513342-5416-42a3-9866-11f2cedf482d', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('5f277909-226e-4daf-b6a1-09542d98210a', '4cf25fee-d893-40c8-9ff9-f1ec648c7db0', '15bccf69-9c55-413b-bf99-2858d7653f3f', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('adcd6ada-99b9-431d-8310-3220fc5b8212', 'Nitric Acid', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('10d921de-75f9-4696-ac3a-79a28fc56716', 'adcd6ada-99b9-431d-8310-3220fc5b8212', '9eb028d9-3081-443c-a404-a23eab84e655', 120);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('88bc27e4-ba05-45f4-9d16-843a0da5ef64', 'adcd6ada-99b9-431d-8310-3220fc5b8212', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e46ae660-832e-4b98-9951-637d5353f60a', 'adcd6ada-99b9-431d-8310-3220fc5b8212', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('04a958eb-9edf-4dff-b0d7-32960eac4c57', 'adcd6ada-99b9-431d-8310-3220fc5b8212', '2af11634-1e00-41bd-9051-86fb018cada4', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('211596ab-08ee-4cec-9e4f-782b9d06bf9a', 'Unpackage Nitric Acid', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('dd4e6ea0-4f4b-481d-b3ec-21573fc826f7', '211596ab-08ee-4cec-9e4f-782b9d06bf9a', 'b2ab60bd-710c-4a6b-9202-02e318d707a7', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('9687834e-41d6-460c-8396-1b27a9411425', '211596ab-08ee-4cec-9e4f-782b9d06bf9a', '2af11634-1e00-41bd-9051-86fb018cada4', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('dc4648ca-32c9-4b05-8f12-edcd1ea7be18', '211596ab-08ee-4cec-9e4f-782b9d06bf9a', '2a6977d5-a841-49cb-86f1-e72248515e3c', 20);

-- GAS RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('99619edd-7b9f-4f6b-a65f-38cdc68c1f05', 'Unpackage Nitrogen Gas', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7ac5b1d0-034a-4725-81ab-e8a101edb706', '99619edd-7b9f-4f6b-a65f-38cdc68c1f05', 'e910fa9a-fec9-4411-8427-b872b01a6bd3', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('9d049381-4376-455c-adc8-40d19af9fe46', '99619edd-7b9f-4f6b-a65f-38cdc68c1f05', '9eb028d9-3081-443c-a404-a23eab84e655', 240);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('bce81fe7-ce6d-49db-ac44-7ea5400dbff8', '99619edd-7b9f-4f6b-a65f-38cdc68c1f05', '2a6977d5-a841-49cb-86f1-e72248515e3c', 60);

-- STANDARD PARTS RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('e5338649-cd67-417d-818c-c15c9b4b434f', 'Iron Rod', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('81b6d1c0-2136-420d-b9cf-a59e728f05fe', 'e5338649-cd67-417d-818c-c15c9b4b434f', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('6ff36901-e82b-464b-9c99-f7491c67c44c', 'e5338649-cd67-417d-818c-c15c9b4b434f', 'fa109bdd-840f-49d5-b12b-b2b8ac1b8834', 15);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('9961e533-16bd-42bf-9044-165167a85115', 'Screw', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('49b12ba1-b5fa-4bd1-9704-d42023cecfcb', '9961e533-16bd-42bf-9044-165167a85115', 'fa109bdd-840f-49d5-b12b-b2b8ac1b8834', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1ea1d220-1769-4a0a-b701-593094d01b6b', '9961e533-16bd-42bf-9044-165167a85115', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 40);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1cb72062-3fcd-4041-b96a-089831318c13', 'Iron Plate', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3107df20-17b3-499d-9ec6-e72c0f1af21b', '1cb72062-3fcd-4041-b96a-089831318c13', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('2e789259-2116-4cab-87e0-ea3c1d085ec9', '1cb72062-3fcd-4041-b96a-089831318c13', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f7561201-5d4e-4443-af3b-795b67f0b775', 'Reinforced Iron Plate', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c254668d-a569-4564-b67f-53a23f059381', 'f7561201-5d4e-4443-af3b-795b67f0b775', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 60);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2d631663-3124-4723-8d50-b7878353a6e0', 'f7561201-5d4e-4443-af3b-795b67f0b775', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('80539898-9f5a-4121-8331-1df8520def36', 'f7561201-5d4e-4443-af3b-795b67f0b775', '30ec735b-10f7-4070-8668-0ce633b78686', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('4f34db0c-b7f3-4847-99fd-d62156f7f56e', 'Copper Sheet', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1cbda5aa-5192-489e-9600-4b4707773036', '4f34db0c-b7f3-4847-99fd-d62156f7f56e', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('a9166813-e973-43f3-b6f9-1a27126c9083', '4f34db0c-b7f3-4847-99fd-d62156f7f56e', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 10);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('5e2538f1-8dc2-4f44-bb24-334472100bcc', 'Alclad Aluminum Sheet', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('96626cf2-3561-4441-bd3e-0c96ff151a8a', '5e2538f1-8dc2-4f44-bb24-334472100bcc', '5b2ba98e-bfa1-43ea-a211-42fe9977fbe4', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3a9395b4-1b37-4d15-841a-76fd41ed60bf', '5e2538f1-8dc2-4f44-bb24-334472100bcc', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d92db733-4d05-4aa9-a10f-fcfeaad2ea49', '5e2538f1-8dc2-4f44-bb24-334472100bcc', '5b555c71-6096-4722-9d4f-1960bf6e75e8', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1421d02e-ea27-49c8-95c5-1f98e1b42140', 'Aluminum Casing', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7c1e783c-4346-4c72-8c5b-234beccfc112', '1421d02e-ea27-49c8-95c5-1f98e1b42140', '5b2ba98e-bfa1-43ea-a211-42fe9977fbe4', 90);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('12e10398-6911-448e-a4f6-8ba6c03c7682', '1421d02e-ea27-49c8-95c5-1f98e1b42140', '86053b5f-692d-4876-810b-b7eb32018a70', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c575e940-906b-4dfc-9d36-dd5c33c5cdf8', 'Steel Pipe', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('85360e31-29d6-4dfa-9cb2-a3a40dda7d17', 'c575e940-906b-4dfc-9d36-dd5c33c5cdf8', 'c1bc6f2a-5143-4fa9-a0c6-c9905afa98c0', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e98c08a5-22a6-438c-98f6-feb8af0f84b5', 'c575e940-906b-4dfc-9d36-dd5c33c5cdf8', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c3a8d8f8-3de9-46c2-bfcb-41e05b9e2699', 'Steel Beam', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('25c5becf-c84c-4463-8146-1d43adeb12ff', 'c3a8d8f8-3de9-46c2-bfcb-41e05b9e2699', 'c1bc6f2a-5143-4fa9-a0c6-c9905afa98c0', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1b71735f-0edb-4147-8363-01902bdefde7', 'c3a8d8f8-3de9-46c2-bfcb-41e05b9e2699', 'ae0a493b-e348-48ee-858f-52fde2dad5a7', 15);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('3e978157-d006-466f-ae3e-89b99ba1ec87', 'Encased Industrial Beam', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b5ea91d5-eb42-425c-b13e-341a075e6da2', '3e978157-d006-466f-ae3e-89b99ba1ec87', 'ae0a493b-e348-48ee-858f-52fde2dad5a7', 24);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e74c90b7-9123-45a0-b94a-65a767aeaa31', '3e978157-d006-466f-ae3e-89b99ba1ec87', 'e9978ec3-b882-40cf-8e93-a94936e66029', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('8d113d5e-43f3-42f5-a02d-9df990dba516', '3e978157-d006-466f-ae3e-89b99ba1ec87', '3d9c502e-7825-4dc8-ae31-91b144ffb7fa', 6);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('41f09351-379c-4b5f-9433-c9c36a773fc6', 'Modular Frame', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6f20be71-8afb-4972-80a9-1bfed91a554b', '41f09351-379c-4b5f-9433-c9c36a773fc6', '30ec735b-10f7-4070-8668-0ce633b78686', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('06f7f4e9-9a77-42a3-9aa1-f27772b9b82c', '41f09351-379c-4b5f-9433-c9c36a773fc6', 'fa109bdd-840f-49d5-b12b-b2b8ac1b8834', 12);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b43eed94-dcc8-4b45-94f0-760bc4f1164d', '41f09351-379c-4b5f-9433-c9c36a773fc6', '5ef1b273-a762-439b-aa60-50d9e4339544', 2);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('3cc96fd8-c37e-48ed-b3ee-3a495b6beb5a', 'Heavy Modular Frame', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f7323824-b5b0-46a0-8075-e9cd925e3e5d', '3cc96fd8-c37e-48ed-b3ee-3a495b6beb5a', '5ef1b273-a762-439b-aa60-50d9e4339544', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2efd1a30-29f1-4777-8f39-150389f2d00b', '3cc96fd8-c37e-48ed-b3ee-3a495b6beb5a', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('dab6d9bd-77f1-4d77-bf07-5f1347554053', '3cc96fd8-c37e-48ed-b3ee-3a495b6beb5a', '3d9c502e-7825-4dc8-ae31-91b144ffb7fa', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1151785a-40e4-4330-8a13-80abfefe69ea', '3cc96fd8-c37e-48ed-b3ee-3a495b6beb5a', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 200);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('953d952f-ae05-4964-9a22-26156864b88c', '3cc96fd8-c37e-48ed-b3ee-3a495b6beb5a', '91bc0af9-9330-4243-a733-263a7c491efc', 2);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('064a6f94-dfd2-43a1-9033-d777dc8a4b8c', 'Fused Modular Frame', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('381adf82-c6ee-4120-872b-669f5ecd2c2f', '064a6f94-dfd2-43a1-9033-d777dc8a4b8c', '91bc0af9-9330-4243-a733-263a7c491efc', 1.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('9f3a0586-3b5a-4734-ab23-39c25c62d939', '064a6f94-dfd2-43a1-9033-d777dc8a4b8c', '86053b5f-692d-4876-810b-b7eb32018a70', 75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4f255b10-cb43-4443-b6ca-840293c06813', '064a6f94-dfd2-43a1-9033-d777dc8a4b8c', '9eb028d9-3081-443c-a404-a23eab84e655', 37.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('9f0da655-9581-450e-a920-aec43752d0ef', '064a6f94-dfd2-43a1-9033-d777dc8a4b8c', '780a0ead-b6fe-4c3e-8707-48321e18d43b', 1.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('8fe5a5c9-a270-49e2-87a9-6079151a7889', 'Fabric', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('50afd264-c125-4094-9e18-540899724e91', '8fe5a5c9-a270-49e2-87a9-6079151a7889', '2a6c9406-5bdc-46b9-8bbd-0fcf5fee44cb', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('77f1e764-4847-4f45-9bd0-c1342b0b5ff8', '8fe5a5c9-a270-49e2-87a9-6079151a7889', 'ee5135ef-995f-4a14-bd51-1d5b0b4eaa50', 75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('950ed85e-6f3c-4b52-93a0-9d2d6d091f10', '8fe5a5c9-a270-49e2-87a9-6079151a7889', 'b65bbfe4-c24a-42e1-abbf-3ba5af4eda8e', 15);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('db76872d-b73a-47ac-bdb3-d1833900eaf6', 'Plastic', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('276120e6-502d-40d0-b583-f6bfbfbf163c', 'db76872d-b73a-47ac-bdb3-d1833900eaf6', '60cc959c-3782-42ba-ab4b-e3ddaf4da6bd', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('993554c8-7c29-48a8-9723-45b3a3380e7f', 'db76872d-b73a-47ac-bdb3-d1833900eaf6', '03ab8a1b-6e94-406b-b362-31938e984e2d', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('f28d4c88-238e-4ed0-932d-f283971384d3', 'db76872d-b73a-47ac-bdb3-d1833900eaf6', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('49244376-f384-44e3-a14a-2eec871ea283', 'Rubber', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c0e55eb4-fe55-426d-a92e-b5429e5b08c1', '49244376-f384-44e3-a14a-2eec871ea283', '60cc959c-3782-42ba-ab4b-e3ddaf4da6bd', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0ef4cef2-03d4-4b6e-bf74-c72475054570', '49244376-f384-44e3-a14a-2eec871ea283', 'd84628e4-c85e-4c84-a136-32441a40a89e', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c25d3da8-3536-4b8c-86fc-3cf914826d13', '49244376-f384-44e3-a14a-2eec871ea283', '03ab8a1b-6e94-406b-b362-31938e984e2d', 20);

-- INDUSTRIAL PARTS
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('4fec75ab-3124-4629-bf16-f1f6e315c841', 'Rotor', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('930eab42-1414-4d1c-89c7-98ef865cc941', '4fec75ab-3124-4629-bf16-f1f6e315c841', 'fa109bdd-840f-49d5-b12b-b2b8ac1b8834', 20);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('94ff83bd-5196-442c-9aa5-b1bd617e0097', '4fec75ab-3124-4629-bf16-f1f6e315c841', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 100);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('733bbc5e-e9dd-4bc5-88ec-eb4d04042ee0', '4fec75ab-3124-4629-bf16-f1f6e315c841', '7c63a989-5db7-4701-a259-e44f8d88803d', 4);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2a58006d-ef6f-4e25-a408-eb53dd69af28', 'Stator', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b8bcdaaf-cc4f-472b-8491-810157849f38', '2a58006d-ef6f-4e25-a408-eb53dd69af28', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e09b400a-bcb9-4021-afe9-968641d70722', '2a58006d-ef6f-4e25-a408-eb53dd69af28', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('56bed29a-70a5-4c07-ab2c-cf019454a1ba', '2a58006d-ef6f-4e25-a408-eb53dd69af28', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2639f1ca-329c-4dfc-8c2a-dde8a2f83762', 'Battery', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('02b4b05c-3571-431a-98bb-9e26e1a7f584', '2639f1ca-329c-4dfc-8c2a-dde8a2f83762', 'ee513342-5416-42a3-9866-11f2cedf482d', 50);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a5fa0b5d-0fb1-477b-8d5c-39b2582371a4', '2639f1ca-329c-4dfc-8c2a-dde8a2f83762', '48bf8676-96cb-40e1-a367-ee6a4d50603f', 40);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3336cbd4-53ed-469f-ad87-d88dfe9091c3', '2639f1ca-329c-4dfc-8c2a-dde8a2f83762', '86053b5f-692d-4876-810b-b7eb32018a70', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('cd71d957-f366-4b68-9063-ba36639d5b25', '2639f1ca-329c-4dfc-8c2a-dde8a2f83762', 'e748aba0-b7fb-4ba1-ba98-65f81d2438dd', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('376d70ef-cb95-48a0-82a0-f424c969a76c', '2639f1ca-329c-4dfc-8c2a-dde8a2f83762', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('7c2ff5c5-8228-4b12-94d7-912d404bd1f2', 'Motor', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f1dd060b-227d-453c-a99b-947e8d402a67', '7c2ff5c5-8228-4b12-94d7-912d404bd1f2', '7c63a989-5db7-4701-a259-e44f8d88803d', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('854caa5c-98e7-4fc4-97a3-25afe6b156cc', '7c2ff5c5-8228-4b12-94d7-912d404bd1f2', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('612fabce-0828-43e4-b775-ed503968a3a4', '7c2ff5c5-8228-4b12-94d7-912d404bd1f2', '710b2676-395d-405b-b235-64fd1e1377d2', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('e51e4176-e697-4366-8236-c8a857da55a3', 'Heat Sink', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a0bed521-162f-49b6-8f56-ae3266c7ad81', 'e51e4176-e697-4366-8236-c8a857da55a3', '5b555c71-6096-4722-9d4f-1960bf6e75e8', 37.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1f889ab1-9b10-47b8-8e25-dcdb31a05617', 'e51e4176-e697-4366-8236-c8a857da55a3', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 22.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('7616e2db-18fb-4e0c-9f4b-fd934f8cb813', 'e51e4176-e697-4366-8236-c8a857da55a3', '1ab44fe6-657c-4da2-9b2e-97c9d6e8c4ef', 7.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('315e8238-d652-4d16-afc8-979dd30998ad', 'Cooling System', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a8032fb3-6750-4f47-af3b-934d49ccb22e', '315e8238-d652-4d16-afc8-979dd30998ad', '1ab44fe6-657c-4da2-9b2e-97c9d6e8c4ef', 12);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d1af14c8-fc40-4ef8-9487-a657f7bf491e', '315e8238-d652-4d16-afc8-979dd30998ad', 'd84628e4-c85e-4c84-a136-32441a40a89e', 12);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a506efcd-67eb-4379-bedd-d0d81dd5f5d9', '315e8238-d652-4d16-afc8-979dd30998ad', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b011bdf9-4b8e-403f-9be4-a4ff01d23b49', '315e8238-d652-4d16-afc8-979dd30998ad', '9eb028d9-3081-443c-a404-a23eab84e655', 150);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('5fd847f3-1e68-4e0c-a84a-57f325f24ea7', '315e8238-d652-4d16-afc8-979dd30998ad', 'ab3fb3b2-d551-4bb1-9bc3-86624a17d8a9', 6);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('33c2870a-092c-46fe-a11c-03e025a0f1ba', 'Turbo Motor', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4fc8fa73-79c3-42a4-95b2-a415a2f62e65', '33c2870a-092c-46fe-a11c-03e025a0f1ba', 'ab3fb3b2-d551-4bb1-9bc3-86624a17d8a9', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('fdab4dac-14ac-4086-8db2-8244c83c95e5', '33c2870a-092c-46fe-a11c-03e025a0f1ba', '7fe500f8-db06-4107-a039-ce6a8a7b2e68', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('18e661be-852b-4c79-a3d6-5158e46ed4c5', '33c2870a-092c-46fe-a11c-03e025a0f1ba', '710b2676-395d-405b-b235-64fd1e1377d2', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c976dce9-9b9d-497c-b27e-96e567b4e3b0', '33c2870a-092c-46fe-a11c-03e025a0f1ba', 'd84628e4-c85e-4c84-a136-32441a40a89e', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('2de4af3f-d424-4f5c-90cd-343d983f7ea6', '33c2870a-092c-46fe-a11c-03e025a0f1ba', '7256a374-b25b-4e2f-b042-252f5cbb7f09', 1.875);

-- ELECTRONIC RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d2261873-ecad-48a7-a603-335aa6edaf01', 'Wire', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7f5032c7-29e9-4750-b104-df4d27abb07f', 'd2261873-ecad-48a7-a603-335aa6edaf01', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d1829eb1-aaeb-44d2-8733-e4039c20e724', 'd2261873-ecad-48a7-a603-335aa6edaf01', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('6dd3f8f9-7883-44ff-a1b5-c769922ce1b6', 'Cable', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f2add1f5-db9a-4127-9a52-194aedefe4cd', '6dd3f8f9-7883-44ff-a1b5-c769922ce1b6', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('100f1ad0-915c-4482-b1d8-6fd4e26cb674', '6dd3f8f9-7883-44ff-a1b5-c769922ce1b6', '70fecdf3-c0f9-437f-8822-41bf0e9ff435', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('ee204988-e931-4258-8173-9b8490797ae6', 'Quickwire', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('443bc9e2-15ac-4ac2-baca-4ff51a249312', 'ee204988-e931-4258-8173-9b8490797ae6', '067b5427-8cf8-4b09-aadf-b3ecaf1aa333', 12);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('958840ff-6334-430a-aaeb-c9ffe9630b70', 'ee204988-e931-4258-8173-9b8490797ae6', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('4d3c9307-1004-47e1-ad93-0917d35a6bb6', 'Circuit Board', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('be2bde4a-476c-4023-a834-f42994657a68', '4d3c9307-1004-47e1-ad93-0917d35a6bb6', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('888d1530-cc6d-4e46-918a-fdb54466734a', '4d3c9307-1004-47e1-ad93-0917d35a6bb6', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('aa76ef0d-679d-475d-abbf-ab77c94bf18c', '4d3c9307-1004-47e1-ad93-0917d35a6bb6', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 7.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('566e4e81-137a-4a95-9e32-793001236acd', 'AI Limiter', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bb6405c4-3e77-4948-af25-2998557469f7', '566e4e81-137a-4a95-9e32-793001236acd', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b185adbf-9e82-4298-91ec-ce214a8ce038', '566e4e81-137a-4a95-9e32-793001236acd', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 100);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('9191f820-2cca-41f3-83c3-2d7aada97eb6', '566e4e81-137a-4a95-9e32-793001236acd', 'd99200f3-b141-4238-be9d-c9ec633fda7b', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f7769a2e-3107-4922-9bfe-70daf1e15510', 'High-Speed Connector', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('09115c57-01c9-4ac1-bd1b-ad4c32b37d1d', 'f7769a2e-3107-4922-9bfe-70daf1e15510', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 210);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e342c043-fb0a-4209-9f46-99db338b38aa', 'f7769a2e-3107-4922-9bfe-70daf1e15510', '70fecdf3-c0f9-437f-8822-41bf0e9ff435', 37.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ec426f98-e26d-4b70-90b6-078ef15eeed9', 'f7769a2e-3107-4922-9bfe-70daf1e15510', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 3.75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('785ee987-eeb0-4ec2-a1f8-dd8b9edb17da', 'f7769a2e-3107-4922-9bfe-70daf1e15510', '0b614cb1-e391-4439-ade3-d21a41b64a07', 3.75);

-- COMMUNICATIONS RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('a41e484b-33a5-42a7-8f42-049c650bf0dc', 'Computer', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0b7f47e0-517c-49ea-b607-f7f781110026', 'a41e484b-33a5-42a7-8f42-049c650bf0dc', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('432a067e-4eae-4300-8278-f73ec9fda2f5', 'a41e484b-33a5-42a7-8f42-049c650bf0dc', '70fecdf3-c0f9-437f-8822-41bf0e9ff435', 22.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0f1ca605-95d8-4af3-a0d0-a19454b8bfa4', 'a41e484b-33a5-42a7-8f42-049c650bf0dc', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 45);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('97c0bd8e-4d87-483e-8b89-45f91f20b471', 'a41e484b-33a5-42a7-8f42-049c650bf0dc', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 130);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('a852f3a5-3ffc-4532-9f07-33921e3abd0f', 'a41e484b-33a5-42a7-8f42-049c650bf0dc', '5dbe02d2-a6b0-4b05-94d9-8a559d058f85', 2.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('ae358a0b-4ac6-4bff-b976-f1dd79648609', 'Supercomputer', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8200d4d7-1f86-4049-8987-2e83e409b931', 'ae358a0b-4ac6-4bff-b976-f1dd79648609', '5dbe02d2-a6b0-4b05-94d9-8a559d058f85', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5625b150-a7fb-4a26-977d-1a4c7457a610', 'ae358a0b-4ac6-4bff-b976-f1dd79648609', 'd99200f3-b141-4238-be9d-c9ec633fda7b', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2034e135-59ed-4380-833c-f0e6e9ba7b20', 'ae358a0b-4ac6-4bff-b976-f1dd79648609', '0b614cb1-e391-4439-ade3-d21a41b64a07', 5.625);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('765a3cfa-4de9-4e3e-b556-805ea85861fa', 'ae358a0b-4ac6-4bff-b976-f1dd79648609', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 52.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b1328850-b941-4fb5-a7d8-532973b682ba', 'ae358a0b-4ac6-4bff-b976-f1dd79648609', '6adee73d-3b3e-4e2c-a4f5-34961bf26a74', 1.875);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('47fb8c9d-80f6-44d3-a91e-4f4b89a1e05d', 'Radio Control Unit', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ff01e5ce-203a-4124-bf73-e6fd767ef80a', '47fb8c9d-80f6-44d3-a91e-4f4b89a1e05d', '86053b5f-692d-4876-810b-b7eb32018a70', 40);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7e4c2200-b06a-4b0e-b265-824f9223bce3', '47fb8c9d-80f6-44d3-a91e-4f4b89a1e05d', 'b0f00547-4ec9-47ec-a905-012809436bc5', 1.25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b60f1639-291e-415a-8aa1-5d4fc53b0843', '47fb8c9d-80f6-44d3-a91e-4f4b89a1e05d', '5dbe02d2-a6b0-4b05-94d9-8a559d058f85', 1.25);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('855f94d2-7816-4747-8868-ca2213d2fc1b', '47fb8c9d-80f6-44d3-a91e-4f4b89a1e05d', '7fe500f8-db06-4107-a039-ce6a8a7b2e68', 2.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('231e97b4-21f9-4e88-9c6c-7130dad3d61a', 'Crystal Oscillator', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('24d9391f-af9d-4afa-a385-e438747842c3', '231e97b4-21f9-4e88-9c6c-7130dad3d61a', '7d8858d3-3c54-4e99-9ec7-88961a8f883f', 18);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7de39e4d-8007-4aa5-8245-086a9342f22e', '231e97b4-21f9-4e88-9c6c-7130dad3d61a', '70fecdf3-c0f9-437f-8822-41bf0e9ff435', 14);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ddefdd60-80c2-40b9-9da0-60b61bcb79f9', '231e97b4-21f9-4e88-9c6c-7130dad3d61a', '30ec735b-10f7-4070-8668-0ce633b78686', 2.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b6a86993-dd2d-4def-b0ac-5d4f6e278533', '231e97b4-21f9-4e88-9c6c-7130dad3d61a', 'b0f00547-4ec9-47ec-a905-012809436bc5', 1);

-- CONTAINER RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('99ba01e7-edf1-447d-b18c-fd49a08d08d0', 'Empty Canister', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c8705d2b-bd33-43a9-823b-b0a14dbe570a', '99ba01e7-edf1-447d-b18c-fd49a08d08d0', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('6e5d1c5e-eb4c-4df7-8438-788f4a9464d6', '99ba01e7-edf1-447d-b18c-fd49a08d08d0', '15bccf69-9c55-413b-bf99-2858d7653f3f', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('450e2c2e-be48-4763-9d25-33ff53d075cf', 'Empty Fluid Tank', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('cb20ffaa-58ae-45a0-9d6c-4af95b3cc9e4', '450e2c2e-be48-4763-9d25-33ff53d075cf', '5b2ba98e-bfa1-43ea-a211-42fe9977fbe4', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('6912f2c8-6a03-4b3b-962d-5897e716f3d7', '450e2c2e-be48-4763-9d25-33ff53d075cf', '2a6977d5-a841-49cb-86f1-e72248515e3c', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('6e261af7-205c-467b-bd47-49c54bba01de', 'Pressure Conversion Cube', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f07994ac-1ecc-4081-9bb2-2ba21ffaa8fb', '6e261af7-205c-467b-bd47-49c54bba01de', '780a0ead-b6fe-4c3e-8707-48321e18d43b', 1);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c2c6acde-5d70-41ca-9cbe-6eea2763364b', '6e261af7-205c-467b-bd47-49c54bba01de', '7fe500f8-db06-4107-a039-ce6a8a7b2e68', 2);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('ad320476-0d91-46e3-9099-afc7743c643d', '6e261af7-205c-467b-bd47-49c54bba01de', 'caa19392-f375-4cb2-86cf-d74484cd62e4', 1);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('fe279db0-4ebd-4fef-b06b-45af314d364a', 'Packaged Water', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8295cbf9-1e96-4597-b15e-35346f4de1a8', 'fe279db0-4ebd-4fef-b06b-45af314d364a', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 60);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f3c05cfe-7307-48c1-a6c1-47d9517ea100', 'fe279db0-4ebd-4fef-b06b-45af314d364a', '15bccf69-9c55-413b-bf99-2858d7653f3f', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('04c00658-de59-4c89-b0a3-10ba114b161c', 'fe279db0-4ebd-4fef-b06b-45af314d364a', '5dbcad17-bf69-43d6-ba9e-d489014884a7', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2b770d06-48da-4c31-831b-2084c332bc66', 'Packaged Alumina Solution', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5e26ca54-2455-4028-aea6-662e8ec547d6', '2b770d06-48da-4c31-831b-2084c332bc66', '48bf8676-96cb-40e1-a367-ee6a4d50603f', 120);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8aca1604-e2f6-4ffb-b26d-aa72e50ad238', '2b770d06-48da-4c31-831b-2084c332bc66', '15bccf69-9c55-413b-bf99-2858d7653f3f', 120);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('7f2aae8a-58da-4968-ae7b-b3958a9828a3', '2b770d06-48da-4c31-831b-2084c332bc66', 'aa368970-b8f3-4aa3-9cc2-a294d44d3015', 120);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f85affba-9608-412d-af59-9d98d94ef478', 'Packaged Sulfuric Acid', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4a9a7889-684e-43a6-b9ce-2c29b12c3c0a', 'f85affba-9608-412d-af59-9d98d94ef478', 'ee513342-5416-42a3-9866-11f2cedf482d', 40);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('dc8421b3-4afe-4a06-b03d-11319c17afb5', 'f85affba-9608-412d-af59-9d98d94ef478', '15bccf69-9c55-413b-bf99-2858d7653f3f', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('33276932-41cb-4505-bf22-0da284d25e75', 'f85affba-9608-412d-af59-9d98d94ef478', '01ff7f33-1b40-4b49-9f9e-3f54bc58ec61', 40);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('14b3e846-a3ac-46cf-83d5-e4af327ffdab', 'Packaged Nitric Acid', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5e871d49-c111-4671-8329-7dae1e831f49', '14b3e846-a3ac-46cf-83d5-e4af327ffdab', '2af11634-1e00-41bd-9051-86fb018cada4', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c0e5812e-414b-4648-a4ff-da485eeee6c9', '14b3e846-a3ac-46cf-83d5-e4af327ffdab', '2a6977d5-a841-49cb-86f1-e72248515e3c', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('195cade8-7a29-402d-a99a-a1b720931f29', '14b3e846-a3ac-46cf-83d5-e4af327ffdab', 'b2ab60bd-710c-4a6b-9202-02e318d707a7', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f4bc13ee-3420-4337-8e5e-57d59dd56ce1', 'Packaged Nitrogen Gas', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f63e190c-bfdf-4d21-a377-fddae5210e11', 'f4bc13ee-3420-4337-8e5e-57d59dd56ce1', '9eb028d9-3081-443c-a404-a23eab84e655', 240);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ab20a8fd-0fc8-4905-8b11-5ac6bb41c797', 'f4bc13ee-3420-4337-8e5e-57d59dd56ce1', '2a6977d5-a841-49cb-86f1-e72248515e3c', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e4e04eb8-21db-45ec-91e3-77a31e4026c9', 'f4bc13ee-3420-4337-8e5e-57d59dd56ce1', 'e910fa9a-fec9-4411-8427-b872b01a6bd3', 60);

-- FUEL RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('9a6ddfd1-64a9-4450-801d-e3c00a1e0cbc', 'Biomass (Alien Protein)', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('261dec3e-a7fc-440b-9a1f-82f1de174bf8', '9a6ddfd1-64a9-4450-801d-e3c00a1e0cbc', 'ce2e8bae-0214-481d-92ff-99311083fcbb', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('320aa483-dcd4-4b8c-a7d1-15a08bca0bfa', '9a6ddfd1-64a9-4450-801d-e3c00a1e0cbc', 'ee5135ef-995f-4a14-bd51-1d5b0b4eaa50', 1500);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('e91f335e-e193-4d8a-a8ac-c5cecfb86e63', 'Biomass (Leaves)', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0ac288d5-1766-4e0f-895e-37ef56dc5d87', 'e91f335e-e193-4d8a-a8ac-c5cecfb86e63', '853c2d16-99a5-430b-8ab1-8098884c5dcc', 120);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0b34aee0-d3fd-44f0-92f7-36ed684e3d98', 'e91f335e-e193-4d8a-a8ac-c5cecfb86e63', 'ee5135ef-995f-4a14-bd51-1d5b0b4eaa50', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('a160c904-e555-4fc9-a75e-621165179dd2', 'Biomass (Mycelia)', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('33f20252-e0c6-43ac-a41b-9021b6597c7a', 'a160c904-e555-4fc9-a75e-621165179dd2', '2a6c9406-5bdc-46b9-8bbd-0fcf5fee44cb', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('384fd264-6cd0-484f-9156-1259a818c1be', 'a160c904-e555-4fc9-a75e-621165179dd2', 'ee5135ef-995f-4a14-bd51-1d5b0b4eaa50', 150);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('80350feb-907e-4554-86a4-2f89f2b762bf', 'Biomass (Wood)', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ed3d1454-cbd6-445d-a119-0c3e2e180fd5', '80350feb-907e-4554-86a4-2f89f2b762bf', '1c398d2a-bdc8-4196-a8fa-f02bc558193a', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('2fec5869-06eb-4499-b549-8a15cb9c2c7e', '80350feb-907e-4554-86a4-2f89f2b762bf', 'ee5135ef-995f-4a14-bd51-1d5b0b4eaa50', 300);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('44e966ee-f5b4-42b4-9d46-34ec3f835870', 'Compacted Coal', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('afff040e-09eb-4e5b-abdb-68e62a5fdddb', '44e966ee-f5b4-42b4-9d46-34ec3f835870', '38862792-f956-4804-9d7a-46b60fb8d013', 25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('014d5b8a-dfe1-463f-a301-0311391e0ed5', '44e966ee-f5b4-42b4-9d46-34ec3f835870', '2ff52414-1041-4d16-b68e-efc253325b9b', 25);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e6a7ec53-c14d-40ff-8933-6ed733763dee', '44e966ee-f5b4-42b4-9d46-34ec3f835870', '2af25498-23e7-44ac-a559-76963785c211', 25);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('7b7c779f-a798-4fb3-bffc-a77962a9829c', 'Packaged Oil', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('142d76ed-2049-4751-ac2c-ecf64b2775ef', '7b7c779f-a798-4fb3-bffc-a77962a9829c', '60cc959c-3782-42ba-ab4b-e3ddaf4da6bd', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d56340ed-4f51-4116-9256-730ee99afa3c', '7b7c779f-a798-4fb3-bffc-a77962a9829c', '15bccf69-9c55-413b-bf99-2858d7653f3f', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c4b26f0c-8208-4709-a0da-d018cb9e5777', '7b7c779f-a798-4fb3-bffc-a77962a9829c', 'f10ec3bc-71b9-4f55-b35b-e53e9710ecf0', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d8ca03df-d958-49b1-af5b-ad93f4662119', 'Packaged Heavy Oil Residue', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('529a19cc-f8c6-4ba9-b8fb-e753159d2816', 'd8ca03df-d958-49b1-af5b-ad93f4662119', '03ab8a1b-6e94-406b-b362-31938e984e2d', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b3f021e1-96f5-4424-a159-b1c580682f51', 'd8ca03df-d958-49b1-af5b-ad93f4662119', '15bccf69-9c55-413b-bf99-2858d7653f3f', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b9e487cd-86d7-46ca-bf59-f2a70dbd850b', 'd8ca03df-d958-49b1-af5b-ad93f4662119', '9bc764d6-dbbf-49b9-b80b-73b0cf2f66f8', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('e4875b55-b5ae-490a-a398-e823048805c2', 'Solid Biofuel', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('26c8750c-4151-4d02-93c6-fd9f85127ce6', 'e4875b55-b5ae-490a-a398-e823048805c2', 'ee5135ef-995f-4a14-bd51-1d5b0b4eaa50', 120);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('21b19c49-7af4-4b0a-a575-10bbe3118e98', 'e4875b55-b5ae-490a-a398-e823048805c2', '3ddc7b64-5a1a-48f1-b4e2-14457ad8bc77', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('747000de-9862-49d6-a651-d13c39889351', 'Packaged Fuel', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0c195cf9-cb92-465b-9964-1463aac3618e', '747000de-9862-49d6-a651-d13c39889351', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 40);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bb9c72d7-a8d6-4829-99cb-91e3dd83e436', '747000de-9862-49d6-a651-d13c39889351', '15bccf69-9c55-413b-bf99-2858d7653f3f', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('32fc3bc3-77d7-468a-ba87-6fe8586a569a', '747000de-9862-49d6-a651-d13c39889351', '8f1e4160-e248-4141-b91d-873e97b60c99', 40);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d8e4456b-cb1a-46ea-86c5-72362efd97e1', 'Packaged Liquid Biofuel', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('29ad2ae6-ec6c-443d-b347-824c1c7e0c75', 'd8e4456b-cb1a-46ea-86c5-72362efd97e1', '03470a09-121e-41bb-9dc5-942201c0b1bc', 40);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b8b77a5f-08cb-415c-84aa-7bcc6ebb9e3a', 'd8e4456b-cb1a-46ea-86c5-72362efd97e1', '15bccf69-9c55-413b-bf99-2858d7653f3f', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('ef075519-e6f8-48e4-a300-86402ac20e97', 'd8e4456b-cb1a-46ea-86c5-72362efd97e1', 'ed4e5f4a-da1f-4623-a6f3-b9afa44fd51a', 40);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('b6cbd91c-d6ad-4d71-b02e-8595211d5890', 'Packaged Turbofuel', 7);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ca1e31b2-f3ca-4280-b227-d8c80993f877', 'b6cbd91c-d6ad-4d71-b02e-8595211d5890', 'dbd362ec-7ba8-49e8-84e9-bf83b871853a', 20);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('cb37abf8-0592-4cba-81ab-5b751896057f', 'b6cbd91c-d6ad-4d71-b02e-8595211d5890', '15bccf69-9c55-413b-bf99-2858d7653f3f', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('7413f60d-851c-49ac-889f-f011bec4b9b8', 'b6cbd91c-d6ad-4d71-b02e-8595211d5890', '6c057622-8b83-4798-a8fa-db1b6ba63a6b', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('4a3871e3-244c-47d4-85ab-0986d023247f', 'Uranium Fuel Rod', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f62e4976-659d-4eea-91b2-f5fcd3fc62ad', '4a3871e3-244c-47d4-85ab-0986d023247f', '7cd4bb4f-17d2-4ebc-bceb-fa3b28c79e3a', 20);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('746d5bd6-b148-4d2e-a839-03617445c0ca', '4a3871e3-244c-47d4-85ab-0986d023247f', '3d9c502e-7825-4dc8-ae31-91b144ffb7fa', 1.2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('34a62fbf-e280-408f-a513-477137b673ce', '4a3871e3-244c-47d4-85ab-0986d023247f', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 2);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1d32de9e-e636-416d-a2dd-325b782d4818', '4a3871e3-244c-47d4-85ab-0986d023247f', 'e0464fff-2408-416d-83d8-791597028293', 0.4);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('15974184-e451-4f51-bc76-ee7d5d9e1185', 'Plutonium Fuel Rod', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('af92e5f2-dfdb-411a-beb0-81c147962dfa', '15974184-e451-4f51-bc76-ee7d5d9e1185', 'cf482502-902f-4f7a-b685-a8a8425d8a6a', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f4fc2e6d-2beb-472b-b1c3-68749d6ee34a', '15974184-e451-4f51-bc76-ee7d5d9e1185', 'ae0a493b-e348-48ee-858f-52fde2dad5a7', 4.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6ea4f85c-127d-465c-8777-4436c4e5c7b1', '15974184-e451-4f51-bc76-ee7d5d9e1185', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 1.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('68060893-a860-4e48-853f-d9c4c219285e', '15974184-e451-4f51-bc76-ee7d5d9e1185', '1ab44fe6-657c-4da2-9b2e-97c9d6e8c4ef', 2.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1e2054ac-3a67-4965-aa8f-1aa3e34d7e9c', '15974184-e451-4f51-bc76-ee7d5d9e1185', '3b4a9bef-b5cd-43f4-bf28-776210050aa8', 0.25);

-- CONSUMABLE RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('77162bae-e0dc-473d-98fa-eb1b47a17736', 'Black Powder', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f31f9cc0-3ade-4b1c-b38b-c44e858ac394', '77162bae-e0dc-473d-98fa-eb1b47a17736', '38862792-f956-4804-9d7a-46b60fb8d013', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0e4707c9-74ff-4841-8a3d-0045b0a553de', '77162bae-e0dc-473d-98fa-eb1b47a17736', '2ff52414-1041-4d16-b68e-efc253325b9b', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('69839a55-3f23-41c7-b414-9da761a2b837', '77162bae-e0dc-473d-98fa-eb1b47a17736', '13119de9-ab33-4b98-b880-96ccf6b79aac', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('dc0a399d-519e-4ed0-9321-50a0faf1463a', 'Smokeless Powder', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('15313be9-033d-42d4-aabe-f2af1e104183', 'dc0a399d-519e-4ed0-9321-50a0faf1463a', '13119de9-ab33-4b98-b880-96ccf6b79aac', 20);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('50364bcc-8dcb-4374-846e-dcd7a21a04ae', 'dc0a399d-519e-4ed0-9321-50a0faf1463a', '03ab8a1b-6e94-406b-b362-31938e984e2d', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('343d6f77-3cc9-430d-ac0b-d1cf421b6e3c', 'dc0a399d-519e-4ed0-9321-50a0faf1463a', '8376cafd-be62-481e-9d32-fef079136340', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('3185bda9-3eff-4064-a9aa-4680699045b6', 'Gas Filter', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7dface9d-bb85-4736-a5f8-39647c306eaa', '3185bda9-3eff-4064-a9aa-4680699045b6', '38862792-f956-4804-9d7a-46b60fb8d013', 37.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('9d42fd7d-14e1-4f18-895b-0958c12e57ae', '3185bda9-3eff-4064-a9aa-4680699045b6', 'd84628e4-c85e-4c84-a136-32441a40a89e', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a56add52-99da-49f4-bdb5-0146f663c750', '3185bda9-3eff-4064-a9aa-4680699045b6', 'b65bbfe4-c24a-42e1-abbf-3ba5af4eda8e', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('5c50f54f-5703-4107-b95d-145261b6063e', '3185bda9-3eff-4064-a9aa-4680699045b6', '0dd6081c-5008-442a-8742-1c699775ee1b', 7.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('9991ecad-6347-4e82-872a-4c22d67e0256', 'Iodine Infused Filter', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5971c999-2450-46a9-9cf4-f6a66101f434', '9991ecad-6347-4e82-872a-4c22d67e0256', '0dd6081c-5008-442a-8742-1c699775ee1b', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3b01f026-1507-4e3b-a2b7-21474a3d9c44', '9991ecad-6347-4e82-872a-4c22d67e0256', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('75ce9fac-b1a3-411f-a345-c61f81c33850', '9991ecad-6347-4e82-872a-4c22d67e0256', '86053b5f-692d-4876-810b-b7eb32018a70', 3.75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('862ab81e-13b5-498f-98d2-44e4fde02079', '9991ecad-6347-4e82-872a-4c22d67e0256', '4693d2ba-1aec-4f1f-bcfb-58d539c70896', 3.75);

-- AMMO RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('ba8e1c62-2258-4383-9740-4a4ba8fc54e8', 'Iron Rebar', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('252760f7-e91f-4d7c-86cc-de828fcebd62', 'ba8e1c62-2258-4383-9740-4a4ba8fc54e8', 'fa109bdd-840f-49d5-b12b-b2b8ac1b8834', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('55c6bd80-0d7b-4be2-ac7e-674dbfc1ae6f', 'ba8e1c62-2258-4383-9740-4a4ba8fc54e8', 'e9b1ded9-9c36-4933-a30c-d15ad35793f3', 15);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('da0f3dd3-280b-4b3b-b506-612885a6b246', 'Stun Rebar', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('be484082-cb30-4779-ae2b-865cf07dccf8', 'da0f3dd3-280b-4b3b-b506-612885a6b246', 'e9b1ded9-9c36-4933-a30c-d15ad35793f3', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c9425681-4ee8-4086-ad08-a7525c5b5c35', 'da0f3dd3-280b-4b3b-b506-612885a6b246', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('79092421-89be-4be4-b86e-1cb0b700f5ac', 'da0f3dd3-280b-4b3b-b506-612885a6b246', '2222d5ca-2e9a-4878-98e0-0c2fa284dca2', 10);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('cf70673a-1a1d-4c17-bc71-c0a74e2c1eb2', 'Shatter Rebar', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('fe2a9949-7c62-4424-b11d-e1dbbf72168c', 'cf70673a-1a1d-4c17-bc71-c0a74e2c1eb2', 'e9b1ded9-9c36-4933-a30c-d15ad35793f3', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7334ad24-08d0-432f-b00d-a81a9e2a49ed', 'cf70673a-1a1d-4c17-bc71-c0a74e2c1eb2', '7d8858d3-3c54-4e99-9ec7-88961a8f883f', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('cb910afa-4a26-41fb-a485-88dbb69948c8', 'cf70673a-1a1d-4c17-bc71-c0a74e2c1eb2', 'a931fe1b-01c6-4f82-b93c-dde9c3de9054', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('5fd08c06-dd97-4fe8-9858-bc243f377d6b', 'Explosive Rebar', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('361d1355-87e3-4549-831e-84032f1ed5f9', '5fd08c06-dd97-4fe8-9858-bc243f377d6b', 'e9b1ded9-9c36-4933-a30c-d15ad35793f3', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('199ddabf-ac4e-4121-b26b-061a322dde20', '5fd08c06-dd97-4fe8-9858-bc243f377d6b', '8376cafd-be62-481e-9d32-fef079136340', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('22333c68-24d0-4056-b93a-272945be7ebf', '5fd08c06-dd97-4fe8-9858-bc243f377d6b', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('96807c43-367b-4f8a-8f35-c766521c8648', '5fd08c06-dd97-4fe8-9858-bc243f377d6b', '7e244ac8-a73f-4c95-a82f-c62daed108bc', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('5105ae38-7df9-460a-8d32-1f2bd6bf79c5', 'Rifle Ammo', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('52fb3e52-1bd2-45bd-9803-e92663108d78', '5105ae38-7df9-460a-8d32-1f2bd6bf79c5', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c2ee7601-509f-4ab8-9c7a-0a429c99a0cf', '5105ae38-7df9-460a-8d32-1f2bd6bf79c5', '8376cafd-be62-481e-9d32-fef079136340', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('92b479f9-f916-453f-95b0-ec6835a2d92d', '5105ae38-7df9-460a-8d32-1f2bd6bf79c5', 'e7587e91-6cc1-4cd1-ae68-83a3e316915b', 75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('464a147d-5f1d-4f07-b78e-7ab6d1f7642f', 'Homing Rifle Ammo', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8cc84752-433f-442d-9d09-c575b5be6c10', '464a147d-5f1d-4f07-b78e-7ab6d1f7642f', 'e7587e91-6cc1-4cd1-ae68-83a3e316915b', 20);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d2675a8f-f879-4d26-8097-5d10b12472b0', '464a147d-5f1d-4f07-b78e-7ab6d1f7642f', '0b614cb1-e391-4439-ade3-d21a41b64a07', 2.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('9836a4b1-f529-49da-9e0a-112e7a8bca7b', '464a147d-5f1d-4f07-b78e-7ab6d1f7642f', '39e2266e-142f-423a-89ea-7552735090ae', 10);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2bd7f2cc-82d1-4292-83e4-bc95fc9f1306', 'Turbo Rifle Ammo', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('aa763f07-3660-4895-9071-ee088cfd3565', '2bd7f2cc-82d1-4292-83e4-bc95fc9f1306', 'e7587e91-6cc1-4cd1-ae68-83a3e316915b', 125);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a47c3dd7-1c97-4395-88d9-9fdd4ede0507', '2bd7f2cc-82d1-4292-83e4-bc95fc9f1306', '86053b5f-692d-4876-810b-b7eb32018a70', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5d69e62e-15bf-4500-b695-f0c3e79e10e3', '2bd7f2cc-82d1-4292-83e4-bc95fc9f1306', '6c057622-8b83-4798-a8fa-db1b6ba63a6b', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('f29ffd45-eee4-43d0-ad02-5dc0372514c6', '2bd7f2cc-82d1-4292-83e4-bc95fc9f1306', '6176fa01-2796-4586-ad80-87d209baa416', 250);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('b41e5c30-abad-4f28-81ed-ab4ecfebd8cc', 'Nobelisk', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('022f6f4f-1cb9-4744-8c0d-404625314457', 'b41e5c30-abad-4f28-81ed-ab4ecfebd8cc', '13119de9-ab33-4b98-b880-96ccf6b79aac', 20);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('820aeeb1-7eb2-48f6-9f41-67c48fa12644', 'b41e5c30-abad-4f28-81ed-ab4ecfebd8cc', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('aec6f416-f939-45ae-a1ed-a44c98661624', 'b41e5c30-abad-4f28-81ed-ab4ecfebd8cc', 'ed397f68-c71c-486f-a116-ba861963e057', 10);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('8fe182e4-8f75-421a-bf02-42353f601dde', 'Gas Nobelisk', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5c3d9c57-c1b5-4be7-9c9d-ae696d07c40b', '8fe182e4-8f75-421a-bf02-42353f601dde', 'ed397f68-c71c-486f-a116-ba861963e057', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b970a48c-1004-46aa-b5fc-a051923a07b4', '8fe182e4-8f75-421a-bf02-42353f601dde', 'ee5135ef-995f-4a14-bd51-1d5b0b4eaa50', 50);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e3088a01-1d06-4d45-87d9-289a5be21ef9', '8fe182e4-8f75-421a-bf02-42353f601dde', '434c653f-9eaa-420b-aa42-0e2a16632777', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('810c0f9c-fafa-4195-b37c-3a4017b126ea', 'Pulse Nobelisk', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b421a188-789d-4cba-8aaf-e0e29065b43b', '810c0f9c-fafa-4195-b37c-3a4017b126ea', 'ed397f68-c71c-486f-a116-ba861963e057', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ea9070fd-fda0-4305-8063-608526b3e535', '810c0f9c-fafa-4195-b37c-3a4017b126ea', 'b0f00547-4ec9-47ec-a905-012809436bc5', 1);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1d426130-d55b-4a75-9946-5dacf2ac4bb3', '810c0f9c-fafa-4195-b37c-3a4017b126ea', '9f766096-3c05-4a14-95bb-084712b1a9f5', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('0b03e8f9-3479-4627-ac08-c9125b1dae16', 'Cluster Nobelisk', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6535edce-0a24-4082-aa15-86a1ab8cacb2', '0b03e8f9-3479-4627-ac08-c9125b1dae16', 'ed397f68-c71c-486f-a116-ba861963e057', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bde72241-7284-4936-bca3-4da7fade6cf9', '0b03e8f9-3479-4627-ac08-c9125b1dae16', '8376cafd-be62-481e-9d32-fef079136340', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('90b233b8-9e11-4765-b0eb-10a7d4a8352d', '0b03e8f9-3479-4627-ac08-c9125b1dae16', '5769d7b4-40ec-482e-856f-91494e60aa54', 2.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('e27afaeb-ba0e-435b-927f-2005a395ddea', 'Nuke Nobelisk', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('86534068-cb1c-43a6-a973-93cfd9e42ad0', 'e27afaeb-ba0e-435b-927f-2005a395ddea', 'ed397f68-c71c-486f-a116-ba861963e057', 2.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e206948d-a0ff-4d56-a149-d71daeace72c', 'e27afaeb-ba0e-435b-927f-2005a395ddea', '7cd4bb4f-17d2-4ebc-bceb-fa3b28c79e3a', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6bc4e037-299a-47e2-bfc1-ca2afeb77433', 'e27afaeb-ba0e-435b-927f-2005a395ddea', '8376cafd-be62-481e-9d32-fef079136340', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('099440b3-4690-45b8-9306-e0119bed5dbb', 'e27afaeb-ba0e-435b-927f-2005a395ddea', 'd99200f3-b141-4238-be9d-c9ec633fda7b', 3);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d69d6579-0b62-4882-9f59-c25a7e7c9809', 'e27afaeb-ba0e-435b-927f-2005a395ddea', '6706b9d3-2285-41a6-b077-a70f2dd369a0', 0.5);

-- NUCLEAR RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('ee5a40ed-144e-4d7b-a662-a7b4c2a80f94', 'Electromagnetic Control Rod', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1ab48607-8ae9-4b4b-afb6-d54dd8471270', 'ee5a40ed-144e-4d7b-a662-a7b4c2a80f94', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('88b157c5-e380-4aef-a2e5-e8c33c79877d', 'ee5a40ed-144e-4d7b-a662-a7b4c2a80f94', 'd99200f3-b141-4238-be9d-c9ec633fda7b', 4);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('ae55b111-334c-4488-88e9-bbeae679fb89', 'ee5a40ed-144e-4d7b-a662-a7b4c2a80f94', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 4);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('eae7d4ea-d75b-4803-9c47-819c1e2f5843', 'Encased Uranium Cell', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('82b6b8ec-6ad1-4eda-823c-b6e616030da6', 'eae7d4ea-d75b-4803-9c47-819c1e2f5843', '61797338-8b77-4a2f-8c67-bc3899b8a214', 50);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8b6d839e-23d3-427a-b14f-6320b415c4d8', 'eae7d4ea-d75b-4803-9c47-819c1e2f5843', 'e9978ec3-b882-40cf-8e93-a94936e66029', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('848f97a9-90e3-4739-ac1b-0b5fac89e208', 'eae7d4ea-d75b-4803-9c47-819c1e2f5843', 'ee513342-5416-42a3-9866-11f2cedf482d', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('7c07faaa-5bac-42ba-be40-923f882ca8e2', 'eae7d4ea-d75b-4803-9c47-819c1e2f5843', '7cd4bb4f-17d2-4ebc-bceb-fa3b28c79e3a', 25);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('bf710b45-cc94-4334-b840-9f1373db6a41', 'eae7d4ea-d75b-4803-9c47-819c1e2f5843', 'ee513342-5416-42a3-9866-11f2cedf482d', 10);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('aaad9c56-4fd9-4424-93f4-289e5112eb90', 'Non-fissile Uranium', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('278a9cc1-8890-4fb4-9818-cae06fd92408', 'aaad9c56-4fd9-4424-93f4-289e5112eb90', '7b175c54-6f00-4f33-bd65-5e58a770a05e', 37.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f74a6e79-0ddc-49d3-a002-7a25cbc3413e', 'aaad9c56-4fd9-4424-93f4-289e5112eb90', 'cd229d3e-85da-4a02-b598-08dc76028222', 25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b2f05223-41ac-47cb-aaa3-f5ed38006a4e', 'aaad9c56-4fd9-4424-93f4-289e5112eb90', '2af11634-1e00-41bd-9051-86fb018cada4', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b1d4ebcf-33f7-4325-91ae-4470f5ae8ff1', 'aaad9c56-4fd9-4424-93f4-289e5112eb90', 'ee513342-5416-42a3-9866-11f2cedf482d', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('3174f303-2b40-47c7-bfbc-676c05386eee', 'aaad9c56-4fd9-4424-93f4-289e5112eb90', '3067af4a-98ff-4595-9d59-997c80e26c58', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('9875c5f7-89bb-4146-b5df-5ec504191100', 'aaad9c56-4fd9-4424-93f4-289e5112eb90', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 15);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('e03686c8-8dd0-4120-a7c8-cf8a8492995b', 'Plutonium Pellet', 9);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bc00d3e3-9ac2-46f1-a3b1-2af376d06ea6', 'e03686c8-8dd0-4120-a7c8-cf8a8492995b', '3067af4a-98ff-4595-9d59-997c80e26c58', 100);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c263e330-6dd2-48bb-989b-fe79da657ca4', 'e03686c8-8dd0-4120-a7c8-cf8a8492995b', '7b175c54-6f00-4f33-bd65-5e58a770a05e', 25);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b55f806f-2c15-45bc-8c80-65ef839d9414', 'e03686c8-8dd0-4120-a7c8-cf8a8492995b', '781ce7e2-5e4d-4b08-8a2c-91299560d2fb', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('9eecef7a-c257-46ee-ad1e-e070c879130b', 'Encased Plutonium Cell', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6509703d-9a93-4e90-9935-49b4f6ba7fcb', '9eecef7a-c257-46ee-ad1e-e070c879130b', '781ce7e2-5e4d-4b08-8a2c-91299560d2fb', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e1612015-bd42-4c97-9b7f-0be16ae93ffa', '9eecef7a-c257-46ee-ad1e-e070c879130b', 'e9978ec3-b882-40cf-8e93-a94936e66029', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0236fcbe-1744-4a0f-bbb2-579598462a9e', '9eecef7a-c257-46ee-ad1e-e070c879130b', 'cf482502-902f-4f7a-b685-a8a8425d8a6a', 5);

-- WASTE RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('21923a7c-0441-48a1-9fe7-b0cb6f37a7a8', 'Uranium Waste', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bb80bf07-210e-4fab-86fc-a3337ff4cc9c', '21923a7c-0441-48a1-9fe7-b0cb6f37a7a8', 'e0464fff-2408-416d-83d8-791597028293', 0.2);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('14b07eaa-86c5-473b-8f42-5b1c9551ed41', '21923a7c-0441-48a1-9fe7-b0cb6f37a7a8', '7b175c54-6f00-4f33-bd65-5e58a770a05e', 10);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('73c9b2d5-5d91-4b2a-8233-720179894e32', 'Plutonium Waste', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('9855c2af-1285-4781-b776-be9335aca966', '73c9b2d5-5d91-4b2a-8233-720179894e32', '3b4a9bef-b5cd-43f4-bf28-776210050aa8', 0.1);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('44c99bf3-1979-43c6-a106-df67690c5c77', '73c9b2d5-5d91-4b2a-8233-720179894e32', 'c2b4a4e7-d743-4263-805a-d53a224cf30b', 1);

-- SPECIAL RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('12d3cdc4-c811-4c1c-b104-5b07630ea638', 'Smart Plating', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6ed7ab48-0096-4fa1-b2ff-abfea35902eb', '12d3cdc4-c811-4c1c-b104-5b07630ea638', '30ec735b-10f7-4070-8668-0ce633b78686', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5886f353-e57b-4bee-b709-ddd9345d24fa', '12d3cdc4-c811-4c1c-b104-5b07630ea638', '7c63a989-5db7-4701-a259-e44f8d88803d', 2);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('011a5ad0-df3b-4f06-9b8d-dde6fbfd4bd9', '12d3cdc4-c811-4c1c-b104-5b07630ea638', 'b4fcb7e9-ffb7-4ccb-aa23-30f2d6006294', 2);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('b37fc17f-7f27-4917-8ea1-940b54cd3973', 'Versatile Framework', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('813a1d6e-9eb4-444c-ab68-f297b824c06e', 'b37fc17f-7f27-4917-8ea1-940b54cd3973', '5ef1b273-a762-439b-aa60-50d9e4339544', 2.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8342e421-1b59-4a61-b533-e21206b3085a', 'b37fc17f-7f27-4917-8ea1-940b54cd3973', 'ae0a493b-e348-48ee-858f-52fde2dad5a7', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b7d19478-5d5f-4a47-acaa-b53440aeb748', 'b37fc17f-7f27-4917-8ea1-940b54cd3973', '61b219a2-326e-4036-a4fb-2c89ad7e45e7', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('874fa93a-f7fc-4af7-9ed8-e134c40b16b2', 'Automated Wiring', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2d8c724a-852c-42f8-ba5f-698c202c2a9d', '874fa93a-f7fc-4af7-9ed8-e134c40b16b2', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 2.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b3cd0e1c-9ac5-4695-81a4-f731f441743b', '874fa93a-f7fc-4af7-9ed8-e134c40b16b2', '70fecdf3-c0f9-437f-8822-41bf0e9ff435', 50);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d0cfbf3d-6772-4a6c-828e-358ef2b85993', '874fa93a-f7fc-4af7-9ed8-e134c40b16b2', 'cab1485d-6922-4a22-ac27-044ecf0899c1', 2.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('0bab1d76-602b-462b-b1b7-372f587dfb8b', 'Modular Engine', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d0481609-c129-4a9f-89fd-5772087560f3', '0bab1d76-602b-462b-b1b7-372f587dfb8b', '710b2676-395d-405b-b235-64fd1e1377d2', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f0270116-88e0-404f-9e4b-65132eaa1d20', '0bab1d76-602b-462b-b1b7-372f587dfb8b', 'd84628e4-c85e-4c84-a136-32441a40a89e', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('96fba0bb-470d-4280-b4a7-33e2d14aa7de', '0bab1d76-602b-462b-b1b7-372f587dfb8b', 'b4fcb7e9-ffb7-4ccb-aa23-30f2d6006294', 2);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('9e65ebe9-5eb6-4ce5-84fb-9b2f0b574a73', '0bab1d76-602b-462b-b1b7-372f587dfb8b', '634259b1-9d3b-4aca-ac70-0eb7395274f8', 1);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c4cff0a3-6c96-4767-91f7-19ef7fb9a2c5', 'Adaptive Control Unit', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8abd8bcc-bbb5-4b74-8e77-6dbf285f25d8', 'c4cff0a3-6c96-4767-91f7-19ef7fb9a2c5', 'cab1485d-6922-4a22-ac27-044ecf0899c1', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ff84dc7e-41e2-4f1c-947e-6b01c7b18f75', 'c4cff0a3-6c96-4767-91f7-19ef7fb9a2c5', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('62c75526-7e6f-441b-b391-220a93ab635f', 'c4cff0a3-6c96-4767-91f7-19ef7fb9a2c5', '91bc0af9-9330-4243-a733-263a7c491efc', 1);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('76300c28-0363-4d13-8dca-7925bfe45926', 'c4cff0a3-6c96-4767-91f7-19ef7fb9a2c5', '5dbe02d2-a6b0-4b05-94d9-8a559d058f85', 1);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('23b04793-5a56-4d49-95ef-32e68824d294', 'c4cff0a3-6c96-4767-91f7-19ef7fb9a2c5', '4f8c2c29-6ecf-4659-910e-afa9bbe6a828', 1);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d607f1ae-0ef8-4e20-9798-211ffd7bd108', 'Assembly Director System', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1d007556-c6da-4e81-abc0-99f295279e77', 'd607f1ae-0ef8-4e20-9798-211ffd7bd108', '4f8c2c29-6ecf-4659-910e-afa9bbe6a828', 1.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('20eb2a6c-b7ea-4b47-8295-7683e8ea754b', 'd607f1ae-0ef8-4e20-9798-211ffd7bd108', '6adee73d-3b3e-4e2c-a4f5-34961bf26a74', 0.75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('567affb4-299f-49de-9335-d106e70d379c', 'd607f1ae-0ef8-4e20-9798-211ffd7bd108', '21832e63-97c0-4ee5-88b9-a3cd1cce3be4', 0.75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('edd013dd-8dc0-4c40-9a89-e924418046a6', 'Magnetic Field Generator', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('cf311248-2694-4181-b020-a951a1f2a4b1', 'edd013dd-8dc0-4c40-9a89-e924418046a6', '61b219a2-326e-4036-a4fb-2c89ad7e45e7', 2.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c284096b-6a85-4ec2-8b86-90542582beb1', 'edd013dd-8dc0-4c40-9a89-e924418046a6', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 1);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b1c53744-a5d6-4d0f-afdc-cb8997b5ceab', 'edd013dd-8dc0-4c40-9a89-e924418046a6', 'e748aba0-b7fb-4ba1-ba98-65f81d2438dd', 5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('6bc4bbe4-5682-4985-bcae-dd5b1af7c416', 'edd013dd-8dc0-4c40-9a89-e924418046a6', 'd9675bd6-9c70-4693-8d31-8c192a59d06a', 1);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('66077623-0355-485e-bb69-a381735c0ec5', 'Thermal Propulsion Rocket', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('375ecd4c-eb8f-4216-8d96-e5ffecd361a9', '66077623-0355-485e-bb69-a381735c0ec5', '634259b1-9d3b-4aca-ac70-0eb7395274f8', 2.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b70c7452-518e-4d9a-9dcb-aa38bfa710e2', '66077623-0355-485e-bb69-a381735c0ec5', '7256a374-b25b-4e2f-b042-252f5cbb7f09', 1);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bdee79e0-4ffa-4e55-9896-162866dff9d5', '66077623-0355-485e-bb69-a381735c0ec5', 'ab3fb3b2-d551-4bb1-9bc3-86624a17d8a9', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('96313ebc-ff70-4405-a382-846d4717d985', '66077623-0355-485e-bb69-a381735c0ec5', '780a0ead-b6fe-4c3e-8707-48321e18d43b', 1);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('3a9e8154-7fe0-4029-9212-515d4f6d2062', '66077623-0355-485e-bb69-a381735c0ec5', '0e80ae7b-0c8e-4eb5-aac3-a99da9036c63', 1);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('9f1fbca6-e70d-46e1-93b7-433053342e0d', 'Nuclear Pasta', 9);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('abf0cef8-84d9-46c2-873a-09e996d07491', '9f1fbca6-e70d-46e1-93b7-433053342e0d', 'ba4f6819-9f75-47c0-8504-c9fced1a9100', 100);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bb81d57b-843a-47b1-a64c-39be71d3381a', '9f1fbca6-e70d-46e1-93b7-433053342e0d', 'caa19392-f375-4cb2-86cf-d74484cd62e4', 0.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('93ed2413-fada-47b0-9cc2-f41671fc8527', '9f1fbca6-e70d-46e1-93b7-433053342e0d', '88ebb5d6-9b40-46aa-9fe6-d21a125ede14', 0.5);

-- ALTERNATE INGOT RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('64d7379d-44a9-4ce2-9240-b215e7712a91', 'Iron Alloy Ingot', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('23665fe1-c6e4-4640-9f31-39d95c3044c5', '64d7379d-44a9-4ce2-9240-b215e7712a91', 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 20);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('25883d8e-8143-4c24-8f6f-b5cbc561c9d2', '64d7379d-44a9-4ce2-9240-b215e7712a91', '549e7508-18bd-4dc9-8049-df92c18780ef', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('be99524a-aa0c-4ea4-a7f3-bcc87383fef7', '64d7379d-44a9-4ce2-9240-b215e7712a91', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 50);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d94eca60-dc36-49fa-b8ac-a75838c94431', 'Pure Iron Ingot', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('da0a01be-c9c3-45cb-b354-9d27e09f9f50', 'd94eca60-dc36-49fa-b8ac-a75838c94431', 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 35);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b99145e3-480e-4d3d-ad9f-c8ee74e322b2', 'd94eca60-dc36-49fa-b8ac-a75838c94431', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('38e9feac-9d47-4ac2-a628-c0e31fad167a', 'd94eca60-dc36-49fa-b8ac-a75838c94431', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 65);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1bffc991-cc65-488d-b3e8-734d2d0222df', 'Copper Alloy Ingot', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('90a1ecf6-0fb5-49d6-bb30-3a7723c2d4f2', '1bffc991-cc65-488d-b3e8-734d2d0222df', '549e7508-18bd-4dc9-8049-df92c18780ef', 50);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6269eed4-4477-4ab0-9610-aab2632c696f', '1bffc991-cc65-488d-b3e8-734d2d0222df', 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 25);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('21508e94-2f67-449f-b48b-64e79f70443d', '1bffc991-cc65-488d-b3e8-734d2d0222df', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 100);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('aff835ad-45ba-45dd-962b-43d95b7c716b', 'Pure Copper Ingot', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f2574193-7319-4e69-941b-2d0a73fa27b0', 'aff835ad-45ba-45dd-962b-43d95b7c716b', '549e7508-18bd-4dc9-8049-df92c18780ef', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4cdcf90b-d0fd-44d6-8cab-6f42e4b64568', 'aff835ad-45ba-45dd-962b-43d95b7c716b', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('57ebd0ac-1b3c-4488-afbb-c8c34cbc3942', 'aff835ad-45ba-45dd-962b-43d95b7c716b', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 37.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f39f09a0-9a86-4718-ac14-1ee8e400e32c', 'Pure Caterium Ingot', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4fdb29e6-2224-4641-9c24-8663e63e7a3c', 'f39f09a0-9a86-4718-ac14-1ee8e400e32c', 'f9403bc2-af3f-4ddf-bd46-89e3f32cc7d3', 24);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('585cec40-a398-41b4-9a50-cad02a246354', 'f39f09a0-9a86-4718-ac14-1ee8e400e32c', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 24);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('95eca5bd-f049-4ee0-9deb-f5e46b91ba12', 'f39f09a0-9a86-4718-ac14-1ee8e400e32c', '067b5427-8cf8-4b09-aadf-b3ecaf1aa333', 12);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('cef1c625-b53b-4c7e-8ef2-083633f0b32e', 'Coke Steel Ingot', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a29b7413-44a1-417d-a18d-989856cf302a', 'cef1c625-b53b-4c7e-8ef2-083633f0b32e', 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('60a727ae-d5ce-4d3e-896a-ae8dae351ecc', 'cef1c625-b53b-4c7e-8ef2-083633f0b32e', '1ee1a2bb-3539-4075-95ba-9543f879e3c1', 75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('a531c029-d4af-49d4-84e0-5c437896d467', 'cef1c625-b53b-4c7e-8ef2-083633f0b32e', 'c1bc6f2a-5143-4fa9-a0c6-c9905afa98c0', 100);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('dd8ea73c-edd5-4235-b4e0-cda439443e56', 'Compacted Steel Ingot', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('09bdaae8-af66-41bf-b40b-bac8d8ac314c', 'dd8ea73c-edd5-4235-b4e0-cda439443e56', 'f964d413-f85b-4f1a-9f5b-68beb5b50f70', 22.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('eda1a701-94cd-41e4-901d-c739b04ad158', 'dd8ea73c-edd5-4235-b4e0-cda439443e56', '2af25498-23e7-44ac-a559-76963785c211', 11.25);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0b9cbb04-4b44-4cb8-bc4d-aef1017c3c90', 'dd8ea73c-edd5-4235-b4e0-cda439443e56', 'c1bc6f2a-5143-4fa9-a0c6-c9905afa98c0', 37.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d736b0f4-8e65-443c-b276-8b546756dbaa', 'Solid Steel Ingot', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ea11fd63-b1eb-48f5-ba2e-ba5a0cd60547', 'd736b0f4-8e65-443c-b276-8b546756dbaa', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 40);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('29efe221-0d2b-48e1-9334-2c82e4c0b82b', 'd736b0f4-8e65-443c-b276-8b546756dbaa', '38862792-f956-4804-9d7a-46b60fb8d013', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('687daff1-e690-4e4f-ab53-9b86ad8801c5', 'd736b0f4-8e65-443c-b276-8b546756dbaa', 'c1bc6f2a-5143-4fa9-a0c6-c9905afa98c0', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('720e7118-ce72-4125-aeb0-3603ccb73570', 'Pure Aluminum Ingot', 1);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0f4ff18d-3ac7-4a28-b758-fe84ec576ade', '720e7118-ce72-4125-aeb0-3603ccb73570', '70109a5e-14a6-4ce2-8baf-8f3c2e200625', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('39f35267-91fc-4d4a-abef-b7686013753c', '720e7118-ce72-4125-aeb0-3603ccb73570', '5b2ba98e-bfa1-43ea-a211-42fe9977fbe4', 30);

-- ALTERNATE MINERAL RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('22185946-af9f-4a26-aec0-33770342622d', 'Fine Concrete', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8bf8ec26-e074-4513-b978-d0a553b70681', '22185946-af9f-4a26-aec0-33770342622d', 'cd229d3e-85da-4a02-b598-08dc76028222', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1c5fc9cc-1126-4578-b1ab-54a24b8d1fb7', '22185946-af9f-4a26-aec0-33770342622d', 'd0ae0c70-f8e1-4d90-b961-cb934f9ccb74', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('6e6644ed-35d5-43fe-a6e6-6d621dcb5e9c', '22185946-af9f-4a26-aec0-33770342622d', 'e9978ec3-b882-40cf-8e93-a94936e66029', 25);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('12441921-db67-4164-a919-e31be821230a', 'Rubber Concrete', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f4d8a882-5234-49dc-ada6-862f0fa3b270', '12441921-db67-4164-a919-e31be821230a', 'd0ae0c70-f8e1-4d90-b961-cb934f9ccb74', 50);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d3253d95-2db8-4dac-8c34-762c2d3ea80c', '12441921-db67-4164-a919-e31be821230a', 'd84628e4-c85e-4c84-a136-32441a40a89e', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d5036965-3228-4ade-8af6-0176081d7b18', '12441921-db67-4164-a919-e31be821230a', 'e9978ec3-b882-40cf-8e93-a94936e66029', 45);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('0988bb08-146a-4d40-8218-3babf647922b', 'Wet Concrete', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e0abb80a-b748-46d0-ac19-b364538bc6a0', '0988bb08-146a-4d40-8218-3babf647922b', 'd0ae0c70-f8e1-4d90-b961-cb934f9ccb74', 120);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('33243f27-5f8a-4f31-b5df-1002c0c6d14e', '0988bb08-146a-4d40-8218-3babf647922b', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 100);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('5aa4c953-adc4-40cb-868f-00fd23990450', '0988bb08-146a-4d40-8218-3babf647922b', 'e9978ec3-b882-40cf-8e93-a94936e66029', 80);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('6afb5643-9892-4167-9be7-efd097f304b7', 'Pure Quartz Crystal', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2931e916-2d33-4f80-9504-574b9077c89d', '6afb5643-9892-4167-9be7-efd097f304b7', 'c0d59595-4b03-40ea-a4b1-df06c5b27d5f', 67.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('28db4d85-d07a-4fe2-b858-c36fc033c3bc', '6afb5643-9892-4167-9be7-efd097f304b7', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 37.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('decee6ad-d5a5-48e1-89ed-e663ead710a1', '6afb5643-9892-4167-9be7-efd097f304b7', '7d8858d3-3c54-4e99-9ec7-88961a8f883f', 52.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('5a41661a-44c4-42c0-b39f-c3aaa6758979', 'Cheap Silica', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7dc043db-8181-4fd8-87e8-9cdac455a523', '5a41661a-44c4-42c0-b39f-c3aaa6758979', 'c0d59595-4b03-40ea-a4b1-df06c5b27d5f', 11.25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6413c4b4-dc33-4740-a36e-212b38b66227', '5a41661a-44c4-42c0-b39f-c3aaa6758979', 'd0ae0c70-f8e1-4d90-b961-cb934f9ccb74', 18.75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('60599406-5372-4b44-8fda-1fd918055c8e', '5a41661a-44c4-42c0-b39f-c3aaa6758979', 'cd229d3e-85da-4a02-b598-08dc76028222', 26.25);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('fca05d93-1982-44c8-b4da-0c7f2b3a5cf3', 'Heavy Oil Residue', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ae9cfd01-1057-48bc-8f14-7933f8354264', 'fca05d93-1982-44c8-b4da-0c7f2b3a5cf3', '60cc959c-3782-42ba-ab4b-e3ddaf4da6bd', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('25097920-cc6b-4ac4-8dcc-731745ebdb1e', 'fca05d93-1982-44c8-b4da-0c7f2b3a5cf3', '03ab8a1b-6e94-406b-b362-31938e984e2d', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('69fc0b71-a773-4023-8c8e-c87188b3b8fe', 'fca05d93-1982-44c8-b4da-0c7f2b3a5cf3', '11ecce3d-8787-41dc-91ee-f9fb40aca645', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f54d66b6-2213-461b-b48b-fbeb51330e53', 'Polymer Resin', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('fc1b5337-40d6-4cf6-80af-f3f732911a71', 'f54d66b6-2213-461b-b48b-fbeb51330e53', '60cc959c-3782-42ba-ab4b-e3ddaf4da6bd', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('27533bf0-ed9b-420e-8518-e412e798358f', 'f54d66b6-2213-461b-b48b-fbeb51330e53', '11ecce3d-8787-41dc-91ee-f9fb40aca645', 130);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c43d0a26-e0a9-4425-8cd3-572e6ed6b796', 'f54d66b6-2213-461b-b48b-fbeb51330e53', '03ab8a1b-6e94-406b-b362-31938e984e2d', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('b029a6f0-7071-4540-84aa-5257a08fa50b', 'Electrode Aluminum Scrap', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3ca904d8-f289-4531-b7f5-c883414a83c6', 'b029a6f0-7071-4540-84aa-5257a08fa50b', '48bf8676-96cb-40e1-a367-ee6a4d50603f', 180);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3b1ee86a-d969-45e5-bbfa-a159d1a03edf', 'b029a6f0-7071-4540-84aa-5257a08fa50b', '1ee1a2bb-3539-4075-95ba-9543f879e3c1', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0ac68d7c-6d3d-4af2-82fc-8d212f08f6df', 'b029a6f0-7071-4540-84aa-5257a08fa50b', '70109a5e-14a6-4ce2-8baf-8f3c2e200625', 300);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('bc99b43b-8eaa-434e-b8f8-aa0efa31e73d', 'b029a6f0-7071-4540-84aa-5257a08fa50b', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 105);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d73d80ae-16eb-4295-9514-0a6d1de09fa4', 'Instant Scrap', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('9b3ddcd0-3162-41c5-8a12-af687a210b76', 'd73d80ae-16eb-4295-9514-0a6d1de09fa4', '25c668ba-3a12-46ec-9008-1d2a6fdee1a8', 150);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6881c52e-034d-416e-a30d-1ea99209f024', 'd73d80ae-16eb-4295-9514-0a6d1de09fa4', '38862792-f956-4804-9d7a-46b60fb8d013', 100);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2c5c93fb-2fa8-4a3a-81c4-f241beaf7cb9', 'd73d80ae-16eb-4295-9514-0a6d1de09fa4', 'ee513342-5416-42a3-9866-11f2cedf482d', 50);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ce834cb6-5846-4013-bbeb-4457ff4104e2', 'd73d80ae-16eb-4295-9514-0a6d1de09fa4', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b9c88f4f-3d4c-4dba-90b7-8f7105ceea34', 'd73d80ae-16eb-4295-9514-0a6d1de09fa4', '70109a5e-14a6-4ce2-8baf-8f3c2e200625', 300);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b629d851-2209-4944-9871-c7fa07339b6d', 'd73d80ae-16eb-4295-9514-0a6d1de09fa4', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 50);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('6a048943-845a-4579-86b9-ddc077aa0a5b', 'Diluted Fuel', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('55f63037-c291-4173-84d4-54690718f298', '6a048943-845a-4579-86b9-ddc077aa0a5b', '03ab8a1b-6e94-406b-b362-31938e984e2d', 50);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b2b28b99-0175-46c7-9691-a179a283b6c1', '6a048943-845a-4579-86b9-ddc077aa0a5b', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 100);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0aafa1d5-d2ac-4be0-bd95-448bdc44cd84', '6a048943-845a-4579-86b9-ddc077aa0a5b', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 100);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c1cc085d-e185-4f44-854b-5b4df4e119af', 'Residual Fuel', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('6a6687a5-ea39-4d5c-8ad5-f656fb3b4835', 'c1cc085d-e185-4f44-854b-5b4df4e119af', '03ab8a1b-6e94-406b-b362-31938e984e2d', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('ea06f768-6db0-4643-aa46-bea6fcc566c4', 'c1cc085d-e185-4f44-854b-5b4df4e119af', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 40);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('7de8b9f2-193c-408a-b9c3-7eb120a21652', 'Turbo Blend Fuel', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d5e05bb7-e863-4ad9-b91d-5eaa323b81bf', '7de8b9f2-193c-408a-b9c3-7eb120a21652', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7dc7b723-a6d9-48ec-8787-5d43707e974d', '7de8b9f2-193c-408a-b9c3-7eb120a21652', '03ab8a1b-6e94-406b-b362-31938e984e2d', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c760397d-e3a6-4bf7-b03e-a5a2ca6ac4a9', '7de8b9f2-193c-408a-b9c3-7eb120a21652', '2ff52414-1041-4d16-b68e-efc253325b9b', 22.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7dee0df7-45b1-4565-9ad1-f1befd32a99f', '7de8b9f2-193c-408a-b9c3-7eb120a21652', '1ee1a2bb-3539-4075-95ba-9543f879e3c1', 22.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('063b32df-758d-4e0d-b52a-90292ff95c4f', '7de8b9f2-193c-408a-b9c3-7eb120a21652', 'dbd362ec-7ba8-49e8-84e9-bf83b871853a', 45);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('709e2b48-11d5-4b81-9331-758edc6fd66c', 'Turbo Heavy Fuel', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d3c6866b-593c-4434-b3ae-672d41febc44', '709e2b48-11d5-4b81-9331-758edc6fd66c', '03ab8a1b-6e94-406b-b362-31938e984e2d', 37.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5c200220-0533-4abd-8d1b-b156b6b01236', '709e2b48-11d5-4b81-9331-758edc6fd66c', '2af25498-23e7-44ac-a559-76963785c211', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c473b6ab-14aa-4f31-8631-ad1d68b07590', '709e2b48-11d5-4b81-9331-758edc6fd66c', 'dbd362ec-7ba8-49e8-84e9-bf83b871853a', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('97c64938-6376-4d83-badb-da649a5d123f', 'Sloppy Alumina', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c4aad458-7dd3-4939-832d-f961e7dbf1ee', '97c64938-6376-4d83-badb-da649a5d123f', '25c668ba-3a12-46ec-9008-1d2a6fdee1a8', 200);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('958a6cfc-f8a4-4988-80a0-ae8c3fb0f6e2', '97c64938-6376-4d83-badb-da649a5d123f', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 200);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('adebc2a8-83a4-49f1-8bb7-95e52b5edf13', '97c64938-6376-4d83-badb-da649a5d123f', '48bf8676-96cb-40e1-a367-ee6a4d50603f', 240);

-- ALTERNATE STANDARD PART RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c91aaa1c-2f6d-42e0-97b2-22de76416601', 'Steel Rod', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('dd545a4b-d659-4c1f-9a0a-fa447fca3beb', 'c91aaa1c-2f6d-42e0-97b2-22de76416601', 'c1bc6f2a-5143-4fa9-a0c6-c9905afa98c0', 12);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('4625c4c6-c8f4-4e18-bd3e-230c08aa3fdb', 'c91aaa1c-2f6d-42e0-97b2-22de76416601', 'fa109bdd-840f-49d5-b12b-b2b8ac1b8834', 48);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('9cffb5d5-e5e0-4a59-ab13-db7b9ef86cb9', 'Cast Screw', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('30f53a7b-9af8-4129-8744-517c62ef9f76', '9cffb5d5-e5e0-4a59-ab13-db7b9ef86cb9', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 12.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1e0085c2-eb7f-4a9a-acfa-fd873283a85d', '9cffb5d5-e5e0-4a59-ab13-db7b9ef86cb9', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 50);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d5c579f2-fcf4-454d-a1ec-807b9d071d1e', 'Steel Screw', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1149c14c-1e66-44df-8590-9b47bc7404ca', 'd5c579f2-fcf4-454d-a1ec-807b9d071d1e', 'ae0a493b-e348-48ee-858f-52fde2dad5a7', 5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b7519bba-d970-4c9e-a7f8-70de1478a623', 'd5c579f2-fcf4-454d-a1ec-807b9d071d1e', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 260);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('00f59012-ff85-44f8-9e31-a438d5928387', 'Coated Iron Plate', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d861edeb-b63f-4adb-810d-b941dfaeab84', '00f59012-ff85-44f8-9e31-a438d5928387', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 50);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a8662ff8-a81c-4656-8dc5-06fbc9a41f60', '00f59012-ff85-44f8-9e31-a438d5928387', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('60eb13c2-68c3-4613-a0c4-a122444d635d', '00f59012-ff85-44f8-9e31-a438d5928387', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d7bcc46d-ede3-4176-9f1b-2b3cabadf16e', 'Steel Coated Plate', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ccbb2fc7-d5a4-40bc-b355-bee4f030bb1a', 'd7bcc46d-ede3-4176-9f1b-2b3cabadf16e', 'c1bc6f2a-5143-4fa9-a0c6-c9905afa98c0', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b69ca6c0-937e-4351-af23-32f94d495a09', 'd7bcc46d-ede3-4176-9f1b-2b3cabadf16e', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d50c89ee-498d-477c-b1f2-a0e99edcc7ea', 'd7bcc46d-ede3-4176-9f1b-2b3cabadf16e', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 45);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('6aff2e55-1e22-4219-a740-abcde3757f0d', 'Adhered Iron Plate', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5f1517a6-4957-461e-afb2-d1915f9f20df', '6aff2e55-1e22-4219-a740-abcde3757f0d', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 11.25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('051d1dd5-2f1e-4feb-9bb1-5eff1b7c31f4', '6aff2e55-1e22-4219-a740-abcde3757f0d', 'd84628e4-c85e-4c84-a136-32441a40a89e', 3.75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('751f40f0-b576-4a77-8c10-3cb891156e8e', '6aff2e55-1e22-4219-a740-abcde3757f0d', '30ec735b-10f7-4070-8668-0ce633b78686', 3.75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('cb9eeec5-a565-4587-a4e9-6c2ebdd1203d', 'Bolted Iron Plate', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8a0b23ac-dc0a-4bfe-bde1-03a4bcecb169', 'cb9eeec5-a565-4587-a4e9-6c2ebdd1203d', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 90);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b122b29a-80f3-4436-ad69-085a8164957e', 'cb9eeec5-a565-4587-a4e9-6c2ebdd1203d', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 250);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d0dec5e3-14b9-46cd-8cd9-a1eda50499e0', 'cb9eeec5-a565-4587-a4e9-6c2ebdd1203d', '30ec735b-10f7-4070-8668-0ce633b78686', 15);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c390c9a4-a5c9-48dd-aa73-69fcadefbd48', 'Stitched Iron Plate', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('24c62b73-2fed-4d46-8323-c114fcaa5a47', 'c390c9a4-a5c9-48dd-aa73-69fcadefbd48', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 18.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b4effb56-892e-4330-ba8c-a678a39d78cf', 'c390c9a4-a5c9-48dd-aa73-69fcadefbd48', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 37.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('89e8e0e3-bae6-4cde-a2c2-af1a61b89061', 'c390c9a4-a5c9-48dd-aa73-69fcadefbd48', '30ec735b-10f7-4070-8668-0ce633b78686', 5.625);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('602d921f-cbd5-45cc-8eba-5c3417bd5d4c', 'Steamed Copper Sheet', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('db5f38a3-2f77-49a2-9c87-d6d444fde40b', '602d921f-cbd5-45cc-8eba-5c3417bd5d4c', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 22.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('cf6b47c0-2952-48e8-a3fe-91c1e607521d', '602d921f-cbd5-45cc-8eba-5c3417bd5d4c', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 22.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('7742a03b-5212-499c-9c10-0a4b96b3d50b', '602d921f-cbd5-45cc-8eba-5c3417bd5d4c', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 22.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('07f2e331-4843-4b46-8045-84872f74b993', 'Alclad Casing', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ead11edc-556a-4705-9c0a-e76405d8e4b3', '07f2e331-4843-4b46-8045-84872f74b993', '5b2ba98e-bfa1-43ea-a211-42fe9977fbe4', 150);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8d965fa2-5d23-4581-a1cc-1d4dec038e3c', '07f2e331-4843-4b46-8045-84872f74b993', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c11d237b-28c9-4923-ae25-3f412650ec2c', '07f2e331-4843-4b46-8045-84872f74b993', '86053b5f-692d-4876-810b-b7eb32018a70', 112.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('6cd5c2de-5cf7-436e-a3c6-4fb9579913e0', 'Encased Industrial Pipe', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5ab409c2-1876-49a7-b19d-b85918f21382', '6cd5c2de-5cf7-436e-a3c6-4fb9579913e0', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 28);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c022e73c-0189-456f-a51f-e3cac520fc93', '6cd5c2de-5cf7-436e-a3c6-4fb9579913e0', 'e9978ec3-b882-40cf-8e93-a94936e66029', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('9e2c6446-13cd-4f8e-864a-a37e77cc9ab0', '6cd5c2de-5cf7-436e-a3c6-4fb9579913e0', '3d9c502e-7825-4dc8-ae31-91b144ffb7fa', 4);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2c752f7e-26af-449a-b6f5-ece5523092cf', 'Bolted Frame', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5b52de5c-fcfe-4816-bb23-5431dd3ef612', '2c752f7e-26af-449a-b6f5-ece5523092cf', '30ec735b-10f7-4070-8668-0ce633b78686', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('37b150ce-dbdf-4510-8dc7-a319d6a733be', '2c752f7e-26af-449a-b6f5-ece5523092cf', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 140);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d005fdce-29c6-4f9d-8cea-f7691175bbe4', '2c752f7e-26af-449a-b6f5-ece5523092cf', '5ef1b273-a762-439b-aa60-50d9e4339544', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('0deda6ac-447f-4971-864c-6de4f9389b7e', 'Steeled Frame', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('92f3e7cc-c9ef-4983-8b73-820dc9d179b2', '0deda6ac-447f-4971-864c-6de4f9389b7e', '30ec735b-10f7-4070-8668-0ce633b78686', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('9bb5e799-656d-4211-bafe-a5da86a8a8e0', '0deda6ac-447f-4971-864c-6de4f9389b7e', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b479a1da-8810-4be7-a490-c0dde0ff48db', '0deda6ac-447f-4971-864c-6de4f9389b7e', '5ef1b273-a762-439b-aa60-50d9e4339544', 3);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('ecc473f7-72c0-48ac-876b-6a63154cf147', 'Heavy Encased Frame', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ff8d263c-b609-4e51-9580-b1939af03ad7', 'ecc473f7-72c0-48ac-876b-6a63154cf147', '5ef1b273-a762-439b-aa60-50d9e4339544', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('cbf80e6d-37af-46c0-8660-dff133f77ff3', 'ecc473f7-72c0-48ac-876b-6a63154cf147', '3d9c502e-7825-4dc8-ae31-91b144ffb7fa', 9.375);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1630eb18-af7f-4e49-9054-279ded766e11', 'ecc473f7-72c0-48ac-876b-6a63154cf147', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 33.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3260dec7-d9c6-41e9-a2dd-9133932a8b68', 'ecc473f7-72c0-48ac-876b-6a63154cf147', 'e9978ec3-b882-40cf-8e93-a94936e66029', 20.675);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1a170b1b-646b-4715-865a-68ebaaa40cd9', 'ecc473f7-72c0-48ac-876b-6a63154cf147', '91bc0af9-9330-4243-a733-263a7c491efc', 2.8125);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('aefdb3d1-26f1-4516-838d-3947e85ad299', 'Heavy Flexible Frame', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8c98e411-8a42-44d4-9a6f-7951420b1054', 'aefdb3d1-26f1-4516-838d-3947e85ad299', '5ef1b273-a762-439b-aa60-50d9e4339544', 18.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c486f541-8b2b-4c5e-8b9b-712170bb4420', 'aefdb3d1-26f1-4516-838d-3947e85ad299', '3d9c502e-7825-4dc8-ae31-91b144ffb7fa', 11.25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('fec8497a-e828-4d56-80ba-3615bc8445a8', 'aefdb3d1-26f1-4516-838d-3947e85ad299', 'd84628e4-c85e-4c84-a136-32441a40a89e', 75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('89eadcb3-d9ec-499e-87a7-5615fc55c567', 'aefdb3d1-26f1-4516-838d-3947e85ad299', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 390);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('022ca852-3859-4228-8968-cc207ca3cde8', 'aefdb3d1-26f1-4516-838d-3947e85ad299', '91bc0af9-9330-4243-a733-263a7c491efc', 3.75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2e93809d-2e7e-4a20-a35c-5cad12fa431f', 'Heat-Fused Frame', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('157ef8fa-0de8-4811-8576-79d27488a7b7', '2e93809d-2e7e-4a20-a35c-5cad12fa431f', '91bc0af9-9330-4243-a733-263a7c491efc', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3c14ef8c-1a80-492d-b6f7-3dd3a6587d36', '2e93809d-2e7e-4a20-a35c-5cad12fa431f', '5b2ba98e-bfa1-43ea-a211-42fe9977fbe4', 150);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e70ca010-2211-4e2d-8a7d-6e965b0ac28d', '2e93809d-2e7e-4a20-a35c-5cad12fa431f', '2af11634-1e00-41bd-9051-86fb018cada4', 24);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('cf6b0469-f50d-4547-965f-f6e79622e12c', '2e93809d-2e7e-4a20-a35c-5cad12fa431f', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('71efb0c7-fdf6-4495-821f-9145d0983aa9', '2e93809d-2e7e-4a20-a35c-5cad12fa431f', '780a0ead-b6fe-4c3e-8707-48321e18d43b', 3);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f2324133-30f7-4145-a167-e136e1c7b42d', 'Polyester Fabric', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('70dfa842-cdf2-4527-b9d2-a8ecfb8064fe', 'f2324133-30f7-4145-a167-e136e1c7b42d', '11ecce3d-8787-41dc-91ee-f9fb40aca645', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3cf2b1a3-1d6e-487d-8f6a-25b6bd8598c5', 'f2324133-30f7-4145-a167-e136e1c7b42d', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('10222bc4-9a61-4202-b49d-33d2f75b16cf', 'f2324133-30f7-4145-a167-e136e1c7b42d', 'b65bbfe4-c24a-42e1-abbf-3ba5af4eda8e', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1462174d-39f0-433c-998e-96a2a57307c2', 'Recycled Plastic', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('40006097-b7ff-4463-a139-5939ebea8896', '1462174d-39f0-433c-998e-96a2a57307c2', 'd84628e4-c85e-4c84-a136-32441a40a89e', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('31407223-43b0-49ec-8f11-3f990945a62f', '1462174d-39f0-433c-998e-96a2a57307c2', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('5dddca99-004d-4ab6-b47e-29344c3a6d76', '1462174d-39f0-433c-998e-96a2a57307c2', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('15688795-c356-40be-adf2-ba6835f56140', 'Residual Plastic', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3bf819e1-0f56-430b-88e8-4f48f74060df', '15688795-c356-40be-adf2-ba6835f56140', '11ecce3d-8787-41dc-91ee-f9fb40aca645', 60);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a8773b5a-c642-4d1c-b6e8-e8f9b81faa2f', '15688795-c356-40be-adf2-ba6835f56140', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 20);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('defa2c95-4ae8-4ba5-a446-97cd6fa69969', '15688795-c356-40be-adf2-ba6835f56140', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('4f022cc5-b0cd-4a5f-af1b-17978864b3dc', 'Recycled Rubber', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('417f2a30-caed-417c-8180-d14e999f33f9', '4f022cc5-b0cd-4a5f-af1b-17978864b3dc', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8cb1d459-966b-4884-8169-447aa23b032d', '4f022cc5-b0cd-4a5f-af1b-17978864b3dc', '01472eb4-b680-4f08-9e19-8690a9e3aef4', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('bd9d6a85-bfd5-41f9-94d8-2d36f48f44b7', '4f022cc5-b0cd-4a5f-af1b-17978864b3dc', 'd84628e4-c85e-4c84-a136-32441a40a89e', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('df048bcd-498c-41e6-8fc5-c5f56314cc8f', 'Residual Rubber', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f8ed47a8-aa1d-41c8-aa13-ae06f52a21df', 'df048bcd-498c-41e6-8fc5-c5f56314cc8f', '11ecce3d-8787-41dc-91ee-f9fb40aca645', 40);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ecd36be0-1b6f-4393-ba08-97e82236dff8', 'df048bcd-498c-41e6-8fc5-c5f56314cc8f', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 40);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1e65a6b9-2472-4b41-90f2-fb7832427fbc', 'df048bcd-498c-41e6-8fc5-c5f56314cc8f', 'd84628e4-c85e-4c84-a136-32441a40a89e', 20);

-- ALTERNATE INDUSTRIAL PARTS
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('777fe3f6-e516-4110-b3e8-45c4fb24a077', 'Copper Rotor', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5fe1fe5f-31ef-44ad-8bac-aaa34011f493', '777fe3f6-e516-4110-b3e8-45c4fb24a077', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 22.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2a3dce3d-347c-4a36-b8e7-7c5e89594c0f', '777fe3f6-e516-4110-b3e8-45c4fb24a077', '65276ada-78c9-4bf2-9cbd-7655c75ee9ac', 195);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e59e4a04-675d-40ff-8234-be3089a8d7a9', '777fe3f6-e516-4110-b3e8-45c4fb24a077', '7c63a989-5db7-4701-a259-e44f8d88803d', 11.25);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('cb3b2a19-7458-4782-8cd4-f717e9c31392', 'Steel Rotor', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('588d5199-3b96-480d-a36d-efefd5adb72b', 'cb3b2a19-7458-4782-8cd4-f717e9c31392', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1a72e601-3303-4806-86e2-107a7b061599', 'cb3b2a19-7458-4782-8cd4-f717e9c31392', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('959c4ade-2017-4b11-a851-4e2bb1b5a79b', 'cb3b2a19-7458-4782-8cd4-f717e9c31392', '7c63a989-5db7-4701-a259-e44f8d88803d', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2af687ed-0fa2-4cce-be09-191877b4d138', 'Quickwire Stator', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('52974322-0f0d-4186-93f1-9a429b764984', '2af687ed-0fa2-4cce-be09-191877b4d138', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 16);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7bcbace2-99de-4e7e-b7dd-a9661bf342e0', '2af687ed-0fa2-4cce-be09-191877b4d138', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('082f5c07-7c15-41dc-85f6-9f227f04bc3a', '2af687ed-0fa2-4cce-be09-191877b4d138', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 8);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f22b499e-f59a-4462-adcf-7b2e2e535e06', 'Classic Battery', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0407be9e-0409-4e5a-ab60-1d006e408c97', 'f22b499e-f59a-4462-adcf-7b2e2e535e06', '2ff52414-1041-4d16-b68e-efc253325b9b', 45);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('df0d2df9-e4d8-4836-8aef-0453fbabf0ed', 'f22b499e-f59a-4462-adcf-7b2e2e535e06', '5b555c71-6096-4722-9d4f-1960bf6e75e8', 52.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('865f4e15-66c5-4b61-aee1-f6b6a8851321', 'f22b499e-f59a-4462-adcf-7b2e2e535e06', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 60);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4437b072-2b91-45f8-9447-dfc18a6d60b8', 'f22b499e-f59a-4462-adcf-7b2e2e535e06', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 90);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('0e5e89fb-d0af-4179-b80d-f5e869d937a7', 'f22b499e-f59a-4462-adcf-7b2e2e535e06', 'e748aba0-b7fb-4ba1-ba98-65f81d2438dd', 30);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('e5a15950-6d71-4415-a6da-165486978964', 'Electric Motor', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('74d2f9ca-df72-480b-a82e-fbb49d61f214', 'e5a15950-6d71-4415-a6da-165486978964', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('aae8c452-3870-4a09-b5d0-2f5cde2a23b9', 'e5a15950-6d71-4415-a6da-165486978964', '7c63a989-5db7-4701-a259-e44f8d88803d', 7.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b6799e45-6fdb-49a3-bd55-52fa1bd5b4b4', 'e5a15950-6d71-4415-a6da-165486978964', '710b2676-395d-405b-b235-64fd1e1377d2', 7.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('d1a20837-5e18-4d0a-85f8-a89199ea6a5f', 'Rigour Motor', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('16ee1825-fa7b-4e96-a97c-072ff9a516ec', 'd1a20837-5e18-4d0a-85f8-a89199ea6a5f', '7c63a989-5db7-4701-a259-e44f8d88803d', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d610a211-38b7-4f51-a037-3ee1f2232c9d', 'd1a20837-5e18-4d0a-85f8-a89199ea6a5f', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7dd97c66-b1f9-4e78-8b31-75909223ed4d', 'd1a20837-5e18-4d0a-85f8-a89199ea6a5f', 'b0f00547-4ec9-47ec-a905-012809436bc5', 1.25);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1f07b82f-5ad9-462f-a2c8-9d85fc3cfee1', 'd1a20837-5e18-4d0a-85f8-a89199ea6a5f', '710b2676-395d-405b-b235-64fd1e1377d2', 7.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2144b888-5c63-4bd0-85a7-ba4d8d113fe7', 'Heat Exchanger', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8e3dd6ab-3aa6-452f-a8b3-c310da38a498', '2144b888-5c63-4bd0-85a7-ba4d8d113fe7', '86053b5f-692d-4876-810b-b7eb32018a70', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('46c20c41-1da6-4e2d-a1a7-4ee10d8572b9', '2144b888-5c63-4bd0-85a7-ba4d8d113fe7', 'd84628e4-c85e-4c84-a136-32441a40a89e', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('20d25317-2987-46a0-909d-645c923a6f40', '2144b888-5c63-4bd0-85a7-ba4d8d113fe7', '1ab44fe6-657c-4da2-9b2e-97c9d6e8c4ef', 10);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('6964a851-34c7-4514-8699-2b5ab68c9929', 'Cooling Device', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8af01f44-27f2-45d7-8cfd-a5d067f87db1', '6964a851-34c7-4514-8699-2b5ab68c9929', '1ab44fe6-657c-4da2-9b2e-97c9d6e8c4ef', 9.375);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('19cb7143-f5f5-4f8c-adb6-a125876ea97a', '6964a851-34c7-4514-8699-2b5ab68c9929', '710b2676-395d-405b-b235-64fd1e1377d2', 1.875);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4c8c0e69-51cc-469a-a264-40a20534662a', '6964a851-34c7-4514-8699-2b5ab68c9929', '9eb028d9-3081-443c-a404-a23eab84e655', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c9e9b5c1-06c5-45b0-a0f1-9c2d75930329', '6964a851-34c7-4514-8699-2b5ab68c9929', 'ab3fb3b2-d551-4bb1-9bc3-86624a17d8a9', 3.75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c1016c5c-bc83-40fe-8b66-303ec0bfdd7e', 'Turbo Electric Motor', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('cda756cf-b9e4-4c77-a8d8-34234c431253', 'c1016c5c-bc83-40fe-8b66-303ec0bfdd7e', '710b2676-395d-405b-b235-64fd1e1377d2', 6.5625);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a41c4502-095b-45dd-b1b5-8bd9880e14e7', 'c1016c5c-bc83-40fe-8b66-303ec0bfdd7e', '7fe500f8-db06-4107-a039-ce6a8a7b2e68', 8.4375);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('dc57226e-19c7-4b4e-876d-2565f12e4dcd', 'c1016c5c-bc83-40fe-8b66-303ec0bfdd7e', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 4.6875);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('948742cf-8287-43aa-95a3-18e604a20292', 'c1016c5c-bc83-40fe-8b66-303ec0bfdd7e', '7c63a989-5db7-4701-a259-e44f8d88803d', 6.5625);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('6dae6386-b65a-40c8-9952-0a5622062895', 'c1016c5c-bc83-40fe-8b66-303ec0bfdd7e', '7256a374-b25b-4e2f-b042-252f5cbb7f09', 2.8125);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('867d6d90-4aac-4166-8c59-17d8c6573a23', 'Turbo Pressure Motor', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('619c107c-b3f5-4459-9fd0-524a699486c4', '867d6d90-4aac-4166-8c59-17d8c6573a23', '710b2676-395d-405b-b235-64fd1e1377d2', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4b129113-6ef1-4f69-b850-fc42249f7cbf', '867d6d90-4aac-4166-8c59-17d8c6573a23', 'caa19392-f375-4cb2-86cf-d74484cd62e4', 1.875);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('61a973fc-c9ca-4305-94e7-582fce1d050c', '867d6d90-4aac-4166-8c59-17d8c6573a23', 'e910fa9a-fec9-4411-8427-b872b01a6bd3', 45);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5eb46060-ea64-4a2c-8be3-b21bf898c242', '867d6d90-4aac-4166-8c59-17d8c6573a23', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('685e676f-319c-4b31-bf60-6c1098c7f8a5', '867d6d90-4aac-4166-8c59-17d8c6573a23', '7256a374-b25b-4e2f-b042-252f5cbb7f09', 3.75);

-- ALTERNATE ELECTRONICS RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('b28aab1a-ee4b-4960-b6fd-76118ee0b0f8', 'Caterium Wire', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('4ca18457-ca59-468e-903d-26921109fc91', 'b28aab1a-ee4b-4960-b6fd-76118ee0b0f8', '067b5427-8cf8-4b09-aadf-b3ecaf1aa333', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('7c55d5d3-0e3e-411a-89e3-14c6aaab2555', 'b28aab1a-ee4b-4960-b6fd-76118ee0b0f8', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 120);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('ce111118-5ee9-489c-8c77-d02d031e3d68', 'Fused Wire', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('12759599-0f77-4ab4-8a3f-6ce569941b9f', 'ce111118-5ee9-489c-8c77-d02d031e3d68', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 12);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('01d61d44-78b1-40bb-b989-ecb2bfda5ea8', 'ce111118-5ee9-489c-8c77-d02d031e3d68', '067b5427-8cf8-4b09-aadf-b3ecaf1aa333', 3);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('924fff5d-8236-4685-8029-d0ae693c27c8', 'ce111118-5ee9-489c-8c77-d02d031e3d68', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 90);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('e47341d9-fc40-4a8f-ac6c-c8fb2ef8b05e', 'Iron Wire', 3);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('459c5320-da8e-4628-afc8-40aab8e76650', 'e47341d9-fc40-4a8f-ac6c-c8fb2ef8b05e', '2d78437a-8152-4e9b-8df2-9e9b8f3fe91b', 12.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('acdfa097-6641-49e0-b61a-94f6072a4e82', 'e47341d9-fc40-4a8f-ac6c-c8fb2ef8b05e', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 22.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('9566af16-952d-4168-898a-ea3cb73b246a', 'Coated Cable', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('fddacbc3-d248-4a07-b573-d930418d2923', '9566af16-952d-4168-898a-ea3cb73b246a', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 37.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b6aa3880-7993-4293-924f-97d3978dff31', '9566af16-952d-4168-898a-ea3cb73b246a', '03ab8a1b-6e94-406b-b362-31938e984e2d', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('b1565817-0d87-41bc-ac7e-4667f8e7ae10', '9566af16-952d-4168-898a-ea3cb73b246a', '70fecdf3-c0f9-437f-8822-41bf0e9ff435', 67.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('6882950b-f108-40e3-a135-c427d396dbed', 'Insulated Cable', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ea95b50d-b584-4c49-b739-92b162ba723f', '6882950b-f108-40e3-a135-c427d396dbed', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 45);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('ac30d457-23d0-4e50-8884-b3ba7a0af700', '6882950b-f108-40e3-a135-c427d396dbed', 'd84628e4-c85e-4c84-a136-32441a40a89e', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('5ea6e6ce-01fe-46f1-8f4f-61711234ac7b', '6882950b-f108-40e3-a135-c427d396dbed', '70fecdf3-c0f9-437f-8822-41bf0e9ff435', 100);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('80b1024a-a656-483b-b897-f5c362800f39', 'Quickwire Cable', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a4239a41-32bf-4ad0-b9b2-9c3bad972272', '80b1024a-a656-483b-b897-f5c362800f39', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f94ef152-e89c-465e-b813-4b4e65074af6', '80b1024a-a656-483b-b897-f5c362800f39', 'd84628e4-c85e-4c84-a136-32441a40a89e', 5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c7eff59a-98a7-4ff9-8f5f-4241564c781e', '80b1024a-a656-483b-b897-f5c362800f39', '70fecdf3-c0f9-437f-8822-41bf0e9ff435', 27.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2943b7dc-7693-4014-82ec-84f94ef5f94c', 'Fused Quickwire', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0776a480-1d05-4c95-8944-bbbf6b24f739', '2943b7dc-7693-4014-82ec-84f94ef5f94c', '067b5427-8cf8-4b09-aadf-b3ecaf1aa333', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2c80cc29-06b1-4de9-8b11-3f2684e8f566', '2943b7dc-7693-4014-82ec-84f94ef5f94c', '96d0af82-d8e3-4d57-b2fd-ab2b16a24f17', 37.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('1b3bad2c-4ee6-4cb4-9a72-5b1b3b9e42cb', '2943b7dc-7693-4014-82ec-84f94ef5f94c', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 90);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('7e74de5b-ab14-4d2c-a5e9-b7a52b927792', 'Caterium Circuit Board', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0d149e63-d191-4b6b-ac06-9910ce79eb50', '7e74de5b-ab14-4d2c-a5e9-b7a52b927792', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 12.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d04023c5-1ace-4ddf-91c9-b27cf73c2d7e', '7e74de5b-ab14-4d2c-a5e9-b7a52b927792', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 37.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('46e8d50b-a2be-4565-b1ef-4e7f99de0a53', '7e74de5b-ab14-4d2c-a5e9-b7a52b927792', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 8.75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('3cb73411-a310-485e-b95d-c1b257599b38', 'Electrode Circuit Board', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('82c51fcc-52fe-41f7-bff1-426050a548ec', '3cb73411-a310-485e-b95d-c1b257599b38', 'd84628e4-c85e-4c84-a136-32441a40a89e', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('01f8be80-0b5e-49f4-b011-05e81fbfd84b', '3cb73411-a310-485e-b95d-c1b257599b38', '1ee1a2bb-3539-4075-95ba-9543f879e3c1', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('236147c0-689f-4a83-b635-03d3ff8a33b2', '3cb73411-a310-485e-b95d-c1b257599b38', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('003c844e-c687-4a81-86ef-9f7871f6aafd', 'Silicon Circuit Board', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a2dd8f53-ee3b-423a-a9da-0a9d676ecff6', '003c844e-c687-4a81-86ef-9f7871f6aafd', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 27.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5c6512eb-2591-4c0d-b9cb-8e72eae1b13e', '003c844e-c687-4a81-86ef-9f7871f6aafd', 'cd229d3e-85da-4a02-b598-08dc76028222', 27.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('7dc65515-7b12-4e12-9e82-ee6865590e56', '003c844e-c687-4a81-86ef-9f7871f6aafd', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 12.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1abbbf42-ca6c-4b0f-b229-eec052f8be6f', 'Silicon High-Speed Connector', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('37f182d1-3278-49db-810b-e5fa5133817b', '1abbbf42-ca6c-4b0f-b229-eec052f8be6f', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 90);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('9d7c6c4f-2048-4531-abea-f3ddec0893fa', '1abbbf42-ca6c-4b0f-b229-eec052f8be6f', 'cd229d3e-85da-4a02-b598-08dc76028222', 37.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1296bc40-92a0-4aed-80a8-10a9d892f0d9', '1abbbf42-ca6c-4b0f-b229-eec052f8be6f', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 3);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('fb1b2e06-c3ba-4613-a780-71bd6e363bd1', '1abbbf42-ca6c-4b0f-b229-eec052f8be6f', '0b614cb1-e391-4439-ade3-d21a41b64a07', 3);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('1c0a4275-d518-4531-ada0-6e04f747e132', 'Caterium Computer', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('0ac14425-7458-4e9b-b31d-fd84abc1450d', '1c0a4275-d518-4531-ada0-6e04f747e132', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 26.25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e1096a20-737a-40ac-8fc4-826b2c277864', '1c0a4275-d518-4531-ada0-6e04f747e132', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 105);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('e316fcca-cfde-4acf-a124-8918c37a1012', '1c0a4275-d518-4531-ada0-6e04f747e132', 'd84628e4-c85e-4c84-a136-32441a40a89e', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c022125b-ad52-4acc-b87c-73f62982a144', '1c0a4275-d518-4531-ada0-6e04f747e132', '5dbe02d2-a6b0-4b05-94d9-8a559d058f85', 3.75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('b969c33b-aebf-4cd4-94b9-f79d99f30514', 'Crystal Computer', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a53ce721-81b3-440b-ab93-a0b9aec5c1d7', 'b969c33b-aebf-4cd4-94b9-f79d99f30514', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5f77d098-be7b-4eaf-9069-b523252fc31a', 'b969c33b-aebf-4cd4-94b9-f79d99f30514', 'b0f00547-4ec9-47ec-a905-012809436bc5', 2.81251);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('99386a4d-47b2-4820-a4e2-4c88ffe9e73f', 'b969c33b-aebf-4cd4-94b9-f79d99f30514', '5dbe02d2-a6b0-4b05-94d9-8a559d058f85', 2.8125);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('dc4ae602-c391-488f-b417-1c7a60e57c91', 'OC Supercomputer', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3da67ec9-9a89-4e97-af36-b246460ad76a', 'dc4ae602-c391-488f-b417-1c7a60e57c91', '7fe500f8-db06-4107-a039-ce6a8a7b2e68', 9);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('bb252cfa-d25b-40ea-9bdc-e1cb0d6ef39b', 'dc4ae602-c391-488f-b417-1c7a60e57c91', 'ab3fb3b2-d551-4bb1-9bc3-86624a17d8a9', 9);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('ebf7f056-61d3-43fb-a419-87a7cc9a34aa', 'dc4ae602-c391-488f-b417-1c7a60e57c91', '6adee73d-3b3e-4e2c-a4f5-34961bf26a74', 3);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c516466b-19b3-471f-85dd-f3b86cb37ffc', 'Super-State Computer', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5cd84f99-f599-4949-90bf-14413838033c', 'c516466b-19b3-471f-85dd-f3b86cb37ffc', '5dbe02d2-a6b0-4b05-94d9-8a559d058f85', 3.6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a0df7df8-98b7-4fd8-9753-35afa57f1ab0', 'c516466b-19b3-471f-85dd-f3b86cb37ffc', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 2.4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2f50dc9b-e933-4ec0-904f-8b0e1d06402e', 'c516466b-19b3-471f-85dd-f3b86cb37ffc', 'e748aba0-b7fb-4ba1-ba98-65f81d2438dd', 24);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('82173ff6-739c-4372-981e-f4094364b3eb', 'c516466b-19b3-471f-85dd-f3b86cb37ffc', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 54);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('bac21448-e2a6-455a-aae5-b1d05d0acbb4', 'c516466b-19b3-471f-85dd-f3b86cb37ffc', '6adee73d-3b3e-4e2c-a4f5-34961bf26a74', 2.4);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('03247553-d408-49e0-b57c-d27913d555d7', 'Radio Connection Unit', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('c9cf467e-4a6d-4cf3-8936-1db3616cf382', '03247553-d408-49e0-b57c-d27913d555d7', '1ab44fe6-657c-4da2-9b2e-97c9d6e8c4ef', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('01334275-3d90-4dbe-a87c-4b704536ac72', '03247553-d408-49e0-b57c-d27913d555d7', '0b614cb1-e391-4439-ade3-d21a41b64a07', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('035f4eda-6308-4bc5-a641-6bfde21ea110', '03247553-d408-49e0-b57c-d27913d555d7', '7d8858d3-3c54-4e99-9ec7-88961a8f883f', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('14c44097-e505-499f-bfd6-0038e80d60e7', '03247553-d408-49e0-b57c-d27913d555d7', '7fe500f8-db06-4107-a039-ce6a8a7b2e68', 3.75);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('126531d2-6c02-40cf-9105-3aeea9b57f4e', 'Radio Control System', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('96281d04-e788-4976-9551-af30a1f2101e', '126531d2-6c02-40cf-9105-3aeea9b57f4e', 'b0f00547-4ec9-47ec-a905-012809436bc5', 1.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d22c2d50-e321-482b-b418-cef1cbccd642', '126531d2-6c02-40cf-9105-3aeea9b57f4e', '17666ba2-83ae-41f0-b021-bdd1187f9b6c', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3262873d-6a5f-423b-8def-217d09ed0a5c', '126531d2-6c02-40cf-9105-3aeea9b57f4e', '86053b5f-692d-4876-810b-b7eb32018a70', 90);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('9bf114b5-b035-4e34-b7e3-3e5c77705332', '126531d2-6c02-40cf-9105-3aeea9b57f4e', 'd84628e4-c85e-4c84-a136-32441a40a89e', 45);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('ccfddd43-5bf2-4f87-8339-eee33b991822', '126531d2-6c02-40cf-9105-3aeea9b57f4e', '7fe500f8-db06-4107-a039-ce6a8a7b2e68', 4.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('c51dcff6-d3b5-4bc4-bd94-6f74c1d72742', 'Insulated Crystal Oscillator', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8b9d0131-a9c6-4d27-9f2f-2471a1d3507e', 'c51dcff6-d3b5-4bc4-bd94-6f74c1d72742', '7d8858d3-3c54-4e99-9ec7-88961a8f883f', 18.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('73d1ce2e-ced7-4acd-9204-763212b11f48', 'c51dcff6-d3b5-4bc4-bd94-6f74c1d72742', 'd84628e4-c85e-4c84-a136-32441a40a89e', 13.1275);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('71f2bb82-1477-4893-be9c-c51855a8dbc0', 'c51dcff6-d3b5-4bc4-bd94-6f74c1d72742', 'd99200f3-b141-4238-be9d-c9ec633fda7b', 1.875);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('331971ef-8cef-40aa-9c5b-4e86b0be2d82', 'c51dcff6-d3b5-4bc4-bd94-6f74c1d72742', 'b0f00547-4ec9-47ec-a905-012809436bc5', 1.875);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('a48f4ad7-12b5-4fb4-acbc-733fcc952fdb', 'Coated Iron Canister', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('37cb3629-7d99-45c7-bc99-0822e19f99e2', 'a48f4ad7-12b5-4fb4-acbc-733fcc952fdb', 'da97eb3b-6546-44c7-bca5-b40ed84d1125', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('258aaaff-9c87-4400-9335-e2b68fecc3a1', 'a48f4ad7-12b5-4fb4-acbc-733fcc952fdb', 'ec7d0ffa-3215-4246-8144-ed32683ca927', 15);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('24e3c04f-b65f-435d-820c-e85952995c54', 'a48f4ad7-12b5-4fb4-acbc-733fcc952fdb', '15bccf69-9c55-413b-bf99-2858d7653f3f', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('5d9469e1-ee9b-4f2c-9fbf-613fcc2d02bb', 'Diluted Packaged Fuel', 6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8f9c67a7-1bae-4f50-ab78-69aedb2b3955', '5d9469e1-ee9b-4f2c-9fbf-613fcc2d02bb', '03ab8a1b-6e94-406b-b362-31938e984e2d', 30);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('39f0557f-e2e2-484e-a6d7-94ded44066a7', '5d9469e1-ee9b-4f2c-9fbf-613fcc2d02bb', '5dbcad17-bf69-43d6-ba9e-d489014884a7', 60);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('425b7680-7e0e-4286-99d7-b448fe1cf9b0', '5d9469e1-ee9b-4f2c-9fbf-613fcc2d02bb', '8f1e4160-e248-4141-b91d-873e97b60c99', 60);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('cdc5f4e5-97b4-40e9-86bf-98c7cd800b4d', 'Uranium Fuel Unit', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1fe23ef1-f464-4ae9-aba0-3a8dde25119e', 'cdc5f4e5-97b4-40e9-86bf-98c7cd800b4d', '7cd4bb4f-17d2-4ebc-bceb-fa3b28c79e3a', 20);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('84542640-adb2-428d-9bf5-cfc8ad02fa0c', 'cdc5f4e5-97b4-40e9-86bf-98c7cd800b4d', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('037a2a15-9b52-4ded-9385-3d34f3fca8c0', 'cdc5f4e5-97b4-40e9-86bf-98c7cd800b4d', 'b0f00547-4ec9-47ec-a905-012809436bc5', 0.6);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f69fa849-857a-4572-b467-1114d0e2f336', 'cdc5f4e5-97b4-40e9-86bf-98c7cd800b4d', 'b5cd8cdd-bd30-4802-86c2-1f3b26bbed60', 1.2);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('e33757e4-f976-4ed0-bd93-0ed4e686aaf9', 'cdc5f4e5-97b4-40e9-86bf-98c7cd800b4d', 'e0464fff-2408-416d-83d8-791597028293', 0.6);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('80523e66-f6c7-44ec-ad81-98369f05c5ba', 'Plutonium Fuel Unit', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b989e274-7895-4614-b870-f3feec8c6774', '80523e66-f6c7-44ec-ad81-98369f05c5ba', 'cf482502-902f-4f7a-b685-a8a8425d8a6a', 10);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a2d042e0-e91f-4a0e-acc8-48e433c099aa', '80523e66-f6c7-44ec-ad81-98369f05c5ba', 'caa19392-f375-4cb2-86cf-d74484cd62e4', 0.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('2ccf6399-b810-43a9-b0e7-bfa55c1c9af7', '80523e66-f6c7-44ec-ad81-98369f05c5ba', '3b4a9bef-b5cd-43f4-bf28-776210050aa8', 0.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('62eb3732-88fa-4707-b6a5-44cbbea659f4', 'Fine Black Powder', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b8912742-dce7-411c-997b-753fbc99a585', '62eb3732-88fa-4707-b6a5-44cbbea659f4', '2ff52414-1041-4d16-b68e-efc253325b9b', 7.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5c943e22-1b94-43e5-9f17-4871e4b8d0eb', '62eb3732-88fa-4707-b6a5-44cbbea659f4', '2af25498-23e7-44ac-a559-76963785c211', 3.75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d3ac4158-92c2-4d64-abab-8847ab7e4a6f', '62eb3732-88fa-4707-b6a5-44cbbea659f4', '13119de9-ab33-4b98-b880-96ccf6b79aac', 15);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('11de0c2d-44b8-44ac-8de3-391ca748755e', 'Crystal Beacon', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('9cbfdfe4-c6c8-456e-8f9a-04fc32f363bb', '11de0c2d-44b8-44ac-8de3-391ca748755e', 'ae0a493b-e348-48ee-858f-52fde2dad5a7', 2);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('47d2d9f8-ab05-44ab-b18b-59394abb9b74', '11de0c2d-44b8-44ac-8de3-391ca748755e', 'be34591f-e6bf-49ac-a9b2-6d56a59422cf', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('d4737b12-6ded-46cc-bb27-ed3e1c75d21c', '11de0c2d-44b8-44ac-8de3-391ca748755e', 'b0f00547-4ec9-47ec-a905-012809436bc5', 0.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('19bdd082-3835-425a-9167-67bc9538217f', '11de0c2d-44b8-44ac-8de3-391ca748755e', 'b5cd8cdd-bd30-4802-86c2-1f3b26bbed60', 10);

-- ALTERNATE NUCLEAR RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('218e5dd7-ae69-4d3b-9210-f1df9e682418', 'Electromagnetic Connection Rod', 4);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('28c4e92d-89fa-4444-990d-543d7a6b7a5f', '218e5dd7-ae69-4d3b-9210-f1df9e682418', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5c5cdd2a-c290-46de-bb54-a097464b5777', '218e5dd7-ae69-4d3b-9210-f1df9e682418', '0b614cb1-e391-4439-ade3-d21a41b64a07', 4);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('2baecc42-a393-46a2-ae85-7b41b0e52253', '218e5dd7-ae69-4d3b-9210-f1df9e682418', '0005c281-6ac8-4c40-b6b0-b40c3cf14853', 8);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('50eb629c-fa01-404b-8383-45cb1153ea64', 'Infused Uranium Cell', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('2aa6d207-6de6-4455-a0ca-4b1ac39eaba6', '50eb629c-fa01-404b-8383-45cb1153ea64', '61797338-8b77-4a2f-8c67-bc3899b8a214', 25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('3991ad89-34c3-4903-a0ce-c0bb3f156802', '50eb629c-fa01-404b-8383-45cb1153ea64', 'cd229d3e-85da-4a02-b598-08dc76028222', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('84c91623-1b08-4d6e-8476-06b19d81a7c8', '50eb629c-fa01-404b-8383-45cb1153ea64', '2ff52414-1041-4d16-b68e-efc253325b9b', 25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8b8ab2cd-e732-419e-9524-8d1d282a3f78', '50eb629c-fa01-404b-8383-45cb1153ea64', '0efee9ac-e5c6-477c-a623-d2cc43efe55b', 75);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('96625652-3dc5-4498-b461-fefcc4d672b3', '50eb629c-fa01-404b-8383-45cb1153ea64', '7cd4bb4f-17d2-4ebc-bceb-fa3b28c79e3a', 20);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('f6245769-8bea-4999-bbc5-a1b7cd775ad9', 'Fertile Uranium', 8);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b65ce950-7589-4051-bf4b-18eebdcd6df0', 'f6245769-8bea-4999-bbc5-a1b7cd775ad9', '61797338-8b77-4a2f-8c67-bc3899b8a214', 25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('7e677c6c-5a6c-4459-9f61-07dce8d9b2f1', 'f6245769-8bea-4999-bbc5-a1b7cd775ad9', '7b175c54-6f00-4f33-bd65-5e58a770a05e', 25);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('f24ddcd0-ce27-4e9f-8f45-fadf740edcfb', 'f6245769-8bea-4999-bbc5-a1b7cd775ad9', '2af11634-1e00-41bd-9051-86fb018cada4', 15);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('73232039-cf06-4cf9-8b3f-fe9268a844af', 'f6245769-8bea-4999-bbc5-a1b7cd775ad9', 'ee513342-5416-42a3-9866-11f2cedf482d', 25);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('d3eae171-610b-4a4a-9804-b59fa0a5d121', 'f6245769-8bea-4999-bbc5-a1b7cd775ad9', '3067af4a-98ff-4595-9d59-997c80e26c58', 100);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('c0e733b7-b40f-4065-88e1-d3a1207dfba0', 'f6245769-8bea-4999-bbc5-a1b7cd775ad9', '0d2bbba9-8db0-4cdf-855a-dc1d9bb6bf7b', 40);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('fb8fff35-8a28-4092-be05-22664c853b03', 'Instant Plutonium Cell', 9);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('8051a9fc-81d5-48c1-8e1d-a6da32dd79aa', 'fb8fff35-8a28-4092-be05-22664c853b03', '3067af4a-98ff-4595-9d59-997c80e26c58', 75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('90611ae7-3de2-4860-9799-7617ae21c7de', 'fb8fff35-8a28-4092-be05-22664c853b03', '86053b5f-692d-4876-810b-b7eb32018a70', 10);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('15d582d4-f7c7-45dc-8a27-831a666114b9', 'fb8fff35-8a28-4092-be05-22664c853b03', 'cf482502-902f-4f7a-b685-a8a8425d8a6a', 10);

--ALTERNATE SPECIAL RECIPES
INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('2dce69fb-c746-499b-816c-0e09ccf4d94d', 'Plastic Smart Plating', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('dcf31e58-a289-42fb-b5cf-b0d9181b84bf', '2dce69fb-c746-499b-816c-0e09ccf4d94d', '30ec735b-10f7-4070-8668-0ce633b78686', 2.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('955cd917-a72d-4e1e-951f-eff1ca322bf5', '2dce69fb-c746-499b-816c-0e09ccf4d94d', '7c63a989-5db7-4701-a259-e44f8d88803d', 2.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('5595ccb6-585b-449d-b2ab-4949ee376bf7', '2dce69fb-c746-499b-816c-0e09ccf4d94d', '0be9af4f-1e82-4fb5-b31d-35bce21769aa', 7.5);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('617e93b0-6e4e-45b0-8cc8-3f4d3bd3953e', '2dce69fb-c746-499b-816c-0e09ccf4d94d', 'b4fcb7e9-ffb7-4ccb-aa23-30f2d6006294', 5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('77943d56-9072-4c6f-b5d7-200a2dc87f48', 'Flexible Framework', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('1a549eb7-2d36-4e3d-a7d2-43ae1afa8274', '77943d56-9072-4c6f-b5d7-200a2dc87f48', '5ef1b273-a762-439b-aa60-50d9e4339544', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('fcfb7bf7-2bf5-47c5-92f8-f4cc4fef2cd6', '77943d56-9072-4c6f-b5d7-200a2dc87f48', 'ae0a493b-e348-48ee-858f-52fde2dad5a7', 22.5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('b09a7ea6-cb9f-4ab1-a13d-f93dc1b9a6bf', '77943d56-9072-4c6f-b5d7-200a2dc87f48', 'd84628e4-c85e-4c84-a136-32441a40a89e', 30);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('cb357fae-82aa-4d0b-a722-b5deca8b3f6c', '77943d56-9072-4c6f-b5d7-200a2dc87f48', '61b219a2-326e-4036-a4fb-2c89ad7e45e7', 7.5);

INSERT INTO "Recipe" ("Id", "Name", "MadeIn") VALUES ('4e115703-b411-45f4-8af2-e81f94bd0d23', 'Automated Speed Wiring', 5);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('131f6470-4599-4a85-83dc-ead90b89475f', '4e115703-b411-45f4-8af2-e81f94bd0d23', 'd7cac322-057a-41af-8ca0-28cb0ad221fc', 3.75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('a5f56edf-cb08-4bd3-abc9-e285d41104f9', '4e115703-b411-45f4-8af2-e81f94bd0d23', '2e4298f8-f281-42e8-83c7-183f04c60bdd', 75);
INSERT INTO "RecipeIngredient" ("Id", "RecipeId", "ProductionItemId", "RequiredPerMinute") VALUES ('56d3fb8e-72ca-4035-b1dc-870001ac00f9', '4e115703-b411-45f4-8af2-e81f94bd0d23', '0b614cb1-e391-4439-ade3-d21a41b64a07', 1.875);
INSERT INTO "RecipeResult" ("Id", "RecipeId", "ProductionItemId", "ProducedPerMinute") VALUES ('259c9489-f40a-4ac3-a99b-4231500a7068', '4e115703-b411-45f4-8af2-e81f94bd0d23', 'cab1485d-6922-4a22-ac27-044ecf0899c1', 7.5);