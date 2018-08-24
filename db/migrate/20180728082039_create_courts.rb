class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.integer :userid
      t.string :nickname
      t.string :title
      t.integer :series
      t.text :content
      t.string :category
      t.string :hashtag
      t.timestamp :end_date
      t.integer :agree_num
      t.integer :disagree_num
      t.integer :click_num
      t.timestamps null: false
    end
  end
end
