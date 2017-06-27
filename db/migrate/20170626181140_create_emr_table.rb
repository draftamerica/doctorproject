class CreateEmrTable < ActiveRecord::Migration[5.1]
  def change
          create_table :emr do |t|
              t.integer :emr_ID
              t.string :diagnosis
              t.string :prognosis
          end
  end
end
