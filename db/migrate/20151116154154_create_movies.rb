class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :actor
      t.date :year
      t.string :genre
      t.integer :runtime
      t.float  :rating
      

      t.timestamps null: false
    end
  end
end
