class AddEmailToDoctors < ActiveRecord::Migration[5.1]
  def change
    #add_column table_name, column_name, column_type
    add_column :doctors, :email, :string
  end
end
