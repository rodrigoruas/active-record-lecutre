class RemoveSpecialityFromDoctors < ActiveRecord::Migration[5.1]
  def change
    #remove_column table_name, column_name, column_type
    remove_column :doctors, :speciality, :string
  end
end
