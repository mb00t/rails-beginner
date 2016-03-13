class Ticket < ActiveRecord::Base
  belongs_to :route
  belongs_to :f_station, class_name: 'RailwayStation', foreign_key: :f_station_id
  belongs_to :l_station, class_name: 'RailwayStation', foreign_key: :l_station_id
  #belongs_to :user
end
