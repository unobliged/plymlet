class PassagesRemoveVocabListAddVocabList < ActiveRecord::Migration

  def change
    remove_column :passages, :vocab_list
    add_column :passages, :vocab_list, :hstore
  end

end
