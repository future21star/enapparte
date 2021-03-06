# == Schema Information
#
# Table name: pictures
#
#  id                 :integer          not null, primary key
#  title              :string
#  url                :string
#  imageable_id       :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  imageable_type     :string
#

class Picture < ActiveRecord::Base
  belongs_to :imageable

  has_attached_file :image, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: "/images/picture/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
