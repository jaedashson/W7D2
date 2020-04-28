# == Schema Information
#
# Table name: albums
#
#  id      :bigint           not null, primary key
#  title   :string           not null
#  year    :integer          not null
#  band_id :integer          not null
#  live    :boolean          not null
#
class Album < ApplicationRecord
  validates :title, :year, :band_id, :live, presence: true

  belongs_to :band,
    foreign_key: :band_id,
    class_name: :Band
end
