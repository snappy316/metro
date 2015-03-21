class ChangeCoachTypeToKlass < ActiveRecord::Migration
  def change
    rename_column :coaches, :type, :klass
  end
end
