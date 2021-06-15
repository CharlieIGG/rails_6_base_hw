class CreateToDos < ActiveRecord::Migration[6.1]
  def change
    create_table :to_dos do |t|
      t.string :title
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
