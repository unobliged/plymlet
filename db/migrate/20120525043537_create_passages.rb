class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.integer :passage_id
      t.string :title
      t.string :author
      t.string :language
      t.text :content

      t.timestamps
    end

    add_index :passages, [:author, :language, :title], unique: true

  end
end
