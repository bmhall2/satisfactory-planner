using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408031423_AddItemsAndRecipes;

[Migration(202408031423)]
public class Migrator_202408031423_AddItemsAndRecipes : Migration
{
    public override void Up()
    {
        Create.Table("ProductionItem")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("Name").AsString();
        
        Create.Table("Recipe")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("Name").AsString();

        Create.Table("RecipeIngredient")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("RecipeId").AsGuid()
            .WithColumn("ProductionItemId").AsGuid()
            .WithColumn("RequiredPerMinute").AsDecimal();
        
        Create.Table("RecipeResult")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("RecipeId").AsGuid()
            .WithColumn("ProductionItemId").AsGuid()
            .WithColumn("ProducedPerMinute").AsDecimal();
        
        Create.ForeignKey()
            .FromTable("RecipeIngredient").ForeignColumn("RecipeId")
            .ToTable("Recipe").PrimaryColumn("Id");

        Create.ForeignKey()
            .FromTable("RecipeIngredient").ForeignColumn("ProductionItemId")
            .ToTable("ProductionItem").PrimaryColumn("Id");

        Create.ForeignKey()
            .FromTable("RecipeResult").ForeignColumn("RecipeId")
            .ToTable("Recipe").PrimaryColumn("Id");

        Create.ForeignKey()
            .FromTable("RecipeResult").ForeignColumn("ProductionItemId")
            .ToTable("ProductionItem").PrimaryColumn("Id");
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}