class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :color
      t.string :outfit

      t.timestamps
    end
  end
end
