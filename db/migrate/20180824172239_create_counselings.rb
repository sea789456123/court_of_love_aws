class CreateCounselings < ActiveRecord::Migration
  def change
    create_table :counselings do |t|

      t.integer :number
      t.string :category
      t.string :title
      t.string :nickname
      t.text :content
      t.timestamps null: false
    end
  end
end
