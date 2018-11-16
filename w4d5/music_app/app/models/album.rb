# == Schema Information
#
# Table name: albums
#
#  id         :bigint(8)        not null, primary key
#  band_id    :integer          not null
#  year       :integer          not null
#  title      :string           not null
#  live       :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord

  validates :band_id, :title, :year, :live, presence: true
  validates :title, uniqueness: true

  belongs_to :band,
    foreign_key: :band_id,
    class_name: :Band

end
