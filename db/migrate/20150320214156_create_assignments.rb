class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :driver, index: true
      t.belongs_to :coach, index: true
      t.string :route
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
    add_foreign_key :assignments, :drivers
    add_foreign_key :assignments, :coaches
  end
end
