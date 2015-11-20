class CreateActordetails < ActiveRecord::Migration
  def change
    create_table :actordetails do |t|
      t.string :name
      t.string :gender 
      t.date :dob
      t.string :hometown
      

      t.timestamps null: false
    end
  end
end
