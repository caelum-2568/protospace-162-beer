class CreateProtos < ActiveRecord::Migration[7.0]
  def change
    create_table :protos do |t|
      t.text :image
      t.string :name
      t.string :copy
      t.string :user
      t.timestamps
    end
  end
end
