# == Schema Information
#
# Table name: notions
#
#  id                 :integer          not null, primary key
#  name               :string
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class NotionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
