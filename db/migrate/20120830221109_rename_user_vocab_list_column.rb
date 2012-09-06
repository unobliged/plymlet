class RenameUserVocabListColumn < ActiveRecord::Migration
  def change
    rename_column :users, :vocablist, :vocab_list
  end
end
