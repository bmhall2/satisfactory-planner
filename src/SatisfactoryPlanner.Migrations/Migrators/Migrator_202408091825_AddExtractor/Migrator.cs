using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408091825_AddExtractor;

[Migration(202408091825)]
public class Migrator_202408091825_AddExtractor : Migration
{
    public override void Up()
    {
        Create.Table("Extractor")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("FactoryId").AsGuid()
            .WithColumn("ExtractorType").AsInt16()
            .WithColumn("NodePurity").AsInt16().Nullable()
            .WithColumn("ProductionItemId").AsGuid()
            .WithColumn("ClockSpeed").AsDecimal();
        
        Create.ForeignKey()
            .FromTable("Extractor").ForeignColumn("FactoryId")
            .ToTable("Factory").PrimaryColumn("Id");

        Create.ForeignKey()
            .FromTable("Extractor").ForeignColumn("ProductionItemId")
            .ToTable("ProductionItem").PrimaryColumn("Id");

        Create.Table("ExtractorProductionItem")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("ExtractorType").AsInt16()
            .WithColumn("ProductionItemId").AsGuid();

        Create.ForeignKey()
            .FromTable("ExtractorProductionItem").ForeignColumn("ProductionItemId")
            .ToTable("ProductionItem").PrimaryColumn("Id");

        Delete.Table("Miner");
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}