class ChangeFirstAndLastName < ActiveRecord::Migration[5.1]
  def change
      rename_column :patients, :firstName, :first_name
      rename_column :patients, :lastName, :last_name
  end
end
