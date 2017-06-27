class CreateAppointmentsTable < ActiveRecord::Migration[5.1]
  def change
          create_table :appointments do |t|
              t.integer :doctor_ID
              t.integer :patient_ID
              t.datetime :start_datetime
              t.datetime :end_datetime
          end
  end
end
