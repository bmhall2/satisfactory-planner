using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408031411_AddMachine;

[Migration(202408031411)]
public class Migrator_202408031411_AddMachine : Migration
{
    public override void Up()
    {
        Create.Table("Machine")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("FactoryId").AsGuid()
            .WithColumn("MachineType").AsInt16();

        Create.ForeignKey()
            .FromTable("Machine").ForeignColumn("FactoryId")
            .ToTable("Factory").PrimaryColumn("Id");
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}