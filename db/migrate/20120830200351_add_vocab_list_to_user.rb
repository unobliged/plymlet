class AddVocabListToUser < ActiveRecord::Migration
  def change
    add_column :users, :vocablist, :text
  end
end
