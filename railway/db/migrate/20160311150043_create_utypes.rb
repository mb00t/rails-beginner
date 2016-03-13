class CreateUtypes < ActiveRecord::Migration
  def change
    create_table :utypes do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end
