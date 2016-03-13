class AddTiketsField < ActiveRecord::Migration
  def change
    change_table :tickets do |t|
      t.string :f_name
      t.string :l_name
    end
  end
end
