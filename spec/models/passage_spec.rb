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

require 'spec_helper'

describe Passage do
  pending "add some examples to (or delete) #{__FILE__}"
end
