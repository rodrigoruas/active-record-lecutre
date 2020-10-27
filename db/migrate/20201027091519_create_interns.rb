class CreateInterns < ActiveRecord::Migration[5.1]
  def change
    create_table :interns do |t|
      t.string :first_name
      t.string :last_name
      #t.integer :doctor_id
      # it's creating the foreign_key (doctor_id) automatically for us
      # it would work without "foreign_key: true".
      # doctor is the modal
      t.references :doctor, foreign_key: true
      t.timestamps
    end
  end
end
