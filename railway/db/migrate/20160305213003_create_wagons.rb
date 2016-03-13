class CreateWagons < ActiveRecord::Migration
  def change
    create_table :wagons do |t|
      t.belongs_to :train
      t.string :utype
      t.string :title
      t.integer :top_seats
      t.integer :bottom_seats
      t.timestamps null: false
    end
  end
end
