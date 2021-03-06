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

class Comment < ApplicationRecord
  belongs_to :notion

  has_attached_file :photo, styles: { vignette: '300x300#' }

end
