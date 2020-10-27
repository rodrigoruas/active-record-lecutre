class CreateConsultations < ActiveRecord::Migration[5.1]
  def change
    create_table :consultations do |t|
      #doctor_id:
      t.references :doctor, foreign_key: true

      #patient_id:
      t.references :patient, foreign_key: true
      t.timestamps
    end
  end
end
