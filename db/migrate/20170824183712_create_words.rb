class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :word, null: false
      t.text :def0, null: false
      t.text :def1
      t.text :def2
      t.text :def3
      
      t.timestamps
    end
    add_index :words, :word, unique: true
  end
end
