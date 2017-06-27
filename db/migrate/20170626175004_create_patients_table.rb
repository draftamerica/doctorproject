class CreatePatientsTable < ActiveRecord::Migration[5.1]
    def change
        create_table :patients do |t|
            t.string :firstName
            t.string :lastName
        end
    end
end
