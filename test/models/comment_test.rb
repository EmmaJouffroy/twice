# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  name       :string
#  birthday   :date
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  notion_id  :integer
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
