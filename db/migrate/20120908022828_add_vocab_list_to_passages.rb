class AddVocabListToPassages < ActiveRecord::Migration
  def change
    add_column :passages, :vocab_list, :text
  end
end
