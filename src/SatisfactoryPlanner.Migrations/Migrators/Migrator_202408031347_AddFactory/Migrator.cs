using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408031347_AddFactory;

[Migration(202408031347)]
public class Migrator_202408031347_AddFactory : Migration
{
    public override void Up()
    {
        Create.Table("Factory")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("PlaythroughId").AsGuid()
            .WithColumn("Name").AsString();

        Create.ForeignKey()
            .FromTable("Factory").ForeignColumn("PlaythroughId")
            .ToTable("Playthrough").PrimaryColumn("Id");
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}