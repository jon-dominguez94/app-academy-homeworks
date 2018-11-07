class DropPeopleTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :people
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
