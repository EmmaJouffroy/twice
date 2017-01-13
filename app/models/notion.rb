# == Schema Information
#
# Table name: notions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Notion < ApplicationRecord
  has_and_belongs_to_many :articles
  has_many :comments
  has_attached_file :photo, styles: { vignette: '300x300#', header: '1280x' }

  validates_attachment_content_type :photo, content_type: /^image\/.+/i

  def simple_name
    I18n.transliterate(self.name.downcase)
  end

end
