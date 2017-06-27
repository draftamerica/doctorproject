class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
          create_table :jointable do |t|
              t.integer :doctor_ID
              t.integer :patient_ID
          end
  end
end
