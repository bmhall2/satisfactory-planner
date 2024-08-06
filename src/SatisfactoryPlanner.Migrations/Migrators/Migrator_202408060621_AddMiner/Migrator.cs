using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408060621_AddMiner;

[Migration(202408060621)]
public class Migrator_202408060621_AddMiner : Migration
{
    public override void Up()
    {
        Create.Table("Miner")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("FactoryId").AsGuid()
            .WithColumn("Mk").AsInt16()
            .WithColumn("NodePurity").AsInt16()
            .WithColumn("ProductionItemId").AsGuid()
            .WithColumn("ClockSpeed").AsDecimal();
        
        Create.ForeignKey()
            .FromTable("Miner").ForeignColumn("FactoryId")
            .ToTable("Factory").PrimaryColumn("Id");

        Create.ForeignKey()
            .FromTable("Miner").ForeignColumn("ProductionItemId")
            .ToTable("ProductionItem").PrimaryColumn("Id");
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}