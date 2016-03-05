class Train < ActiveRecord::Base
  validates :title, presence: true

  #belongs_to :railway_station
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  belongs_to :route

end
