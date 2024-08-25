using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408192024_PowerGenerators;

[Migration(202408192024)]
public class Migrator_202408192024_PowerGenerators : Migration
{
    public override void Up()
    {
        // Create.Table("PowerGeneratorRecipe")
        //     .WithColumn("Id").AsGuid().PrimaryKey()
        //     .WithColumn("Name").AsString()
        //     .WithColumn("PowerGeneratorType").AsInt16()
        //     .WithColumn("InputProductionItemId").AsGuid()
        //     .WithColumn("InputAmount").AsDecimal()
        //     .WithColumn("OutputProductionItemId").AsGuid().Nullable()
        //     .WithColumn("OutputAmount").AsDecimal().Nullable();
        
        // Create.ForeignKey()
        //     .FromTable("PowerGeneratorRecipe").ForeignColumn("InputProductionItemId")
        //     .ToTable("ProductionItem").PrimaryColumn("Id");

        // Create.ForeignKey()
        //     .FromTable("PowerGeneratorRecipe").ForeignColumn("OutputProductionItemId")
        //     .ToTable("ProductionItem").PrimaryColumn("Id");
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}