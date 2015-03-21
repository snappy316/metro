class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :type
      t.string :model
      t.string :year

      t.timestamps null: false
    end
  end
end
