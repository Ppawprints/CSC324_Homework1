class CreatePics < ActiveRecord::Migration[5.1]
  def change
    create_table :pics do |t|
      t.string :animalType
      t.string :picInfo
      
      t.timestamps
    end
  end
end
