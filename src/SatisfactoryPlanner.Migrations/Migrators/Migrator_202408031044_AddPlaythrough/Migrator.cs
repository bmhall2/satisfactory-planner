using FluentMigrator;

namespace SatisfactoryPlanner.Migrations.Migrators.Migrator_202408031044_AddPlaythrough;

[Migration(202408031044)]
public class Migrator_202408031044_AddPlaythrough : Migration
{
    public override void Up()
    {
        Create.Table("Playthrough")
            .WithColumn("Id").AsGuid().PrimaryKey()
            .WithColumn("Name").AsString();
    }

    public override void Down()
    {
        throw new NotImplementedException();
    }
}