class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.string :nickname
      t.string :title
      t.integer :series
      t.text :content
      t.string :category
      t.string :hashtag
      t.string :end_date
      t.integer :end_hour
      t.integer :agree_num
      t.integer :disagree_num
      t.timestamps null: false
    end
  end
end
