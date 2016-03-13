class RemoveUserIdToTickets < ActiveRecord::Migration
  def change
    remove_belongs_to :tickets, :user
  end
end
