# == Schema Information
#
# Table name: shows
#
#  id             :integer          not null, primary key
#  title          :string
#  length         :integer
#  description    :text
#  price          :float
#  max_spectators :integer
#  starts_at      :time
#  ends_at        :time
#  active         :boolean
#  user_id        :integer
#  art_id         :integer
#  language_id    :integer
#  bookings_id    :integer
#  pictures_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Show, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
