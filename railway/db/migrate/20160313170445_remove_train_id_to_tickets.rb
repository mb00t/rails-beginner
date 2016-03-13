class RemoveTrainIdToTickets < ActiveRecord::Migration
  def change
    remove_belongs_to :tickets, :train
  end
end
