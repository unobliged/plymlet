# == Schema Information
#
# Table name: passages
#
#  id         :integer         not null, primary key
#  passage_id :integer
#  title      :string(255)
#  author     :string(255)
#  language   :string(255)
#  content    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Passage < ActiveRecord::Base
  attr_accessible :author, :content, :language, :title

  serialize :vocab_list, ActiveRecord::Coders::Hstore

  after_initialize :add_empty_hash

  def add_empty_hash
    self.vocab_list ||= {}
  end

end
