class AddRouteIdToTickets < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :route
    add_belongs_to :tickets, :f_station
    add_belongs_to :tickets, :l_station
  end
end
