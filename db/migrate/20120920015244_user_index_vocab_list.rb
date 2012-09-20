class UserIndexVocabList < ActiveRecord::Migration
  def up
    execute "CREATE INDEX index_on_users_gin_vocab_list ON users USING GIN(vocab_list)"
  end

  def down
    execute "DROP INDEX index_on_users_gin_vocab_list"
  end
end
