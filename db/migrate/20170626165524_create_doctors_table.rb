class CreateDoctorsTable < ActiveRecord::Migration[5.1]
  def change
      create_table :doctors do |t|
          t.string :name
          t.string :specialty
          t.integer :clinic_id
      end
  end
end
