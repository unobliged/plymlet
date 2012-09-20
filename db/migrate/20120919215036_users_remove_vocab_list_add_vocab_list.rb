class UsersRemoveVocabListAddVocabList < ActiveRecord::Migration
  def change
    remove_column :users, :vocab_list
    add_column :users, :vocab_list, :hstore
  end

end
