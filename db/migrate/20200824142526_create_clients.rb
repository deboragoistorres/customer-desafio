class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.date :register_date

      t.timestamps
    end
  end
end
