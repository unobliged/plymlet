class PassageIndexVocabList < ActiveRecord::Migration
  def up
    execute "CREATE INDEX index_on_passages_gin_vocab_list ON passages USING GIN(vocab_list)"
  end

  def down
    execute "DROP INDEX index_on_passages_gin_vocab_list"
  end

end
