using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408031955_MachinesAndRecipes;

[Migration(202408031955)]
public class Migrator_202408031955_MachinesAndRecipes : Migration
{
    public override void Up()
    {
        Alter.Table("Machine")
            .AddColumn("RecipeId").AsGuid()
            .AddColumn("ClockSpeed").AsDecimal();
        
        // Create.ForeignKey()
        //     .FromTable("Machine").ForeignColumn("RecipeId")
        //     .ToTable("Recipe").PrimaryColumn("Id");

        Alter.Table("Recipe")
            .AddColumn("MadeIn").AsInt16();
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}