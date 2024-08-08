using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408070714_AddFactoryConnection;

[Migration(202408070714)]
public class Migrator_202408070714_AddFactoryConnection : Migration
{
    public override void Up()
    {
        Create.Table("FactoryConnection")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("ExportingFactoryId").AsGuid()
            .WithColumn("ImportingFactoryId").AsGuid()
            .WithColumn("ProductionItemId").AsGuid()
            .WithColumn("Amount").AsDecimal();
        
        Create.ForeignKey()
            .FromTable("FactoryConnection").ForeignColumn("ExportingFactoryId")
            .ToTable("Factory").PrimaryColumn("Id");

        Create.ForeignKey()
            .FromTable("FactoryConnection").ForeignColumn("ImportingFactoryId")
            .ToTable("Factory").PrimaryColumn("Id");

        Create.ForeignKey()
            .FromTable("FactoryConnection").ForeignColumn("ProductionItemId")
            .ToTable("ProductionItem").PrimaryColumn("Id");
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}