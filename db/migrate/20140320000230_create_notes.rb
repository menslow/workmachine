class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :project_id
      t.integer :user_id
      t.string :name
      t.date :start
      t.date :due

      t.timestamps
    end
  end
end
