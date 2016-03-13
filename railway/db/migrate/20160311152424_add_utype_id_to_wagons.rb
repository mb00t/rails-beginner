class AddUtypeIdToWagons < ActiveRecord::Migration
  def change
    add_belongs_to :wagons, :utype
  end
end
