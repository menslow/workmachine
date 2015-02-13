class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :website
      t.string :twitter
      t.string :facebook
      t.text :background

      t.timestamps
    end
  end
end
