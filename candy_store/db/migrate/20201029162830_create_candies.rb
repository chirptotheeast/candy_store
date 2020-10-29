class CreateCandies < ActiveRecord::Migration[6.0]
  def change
    create_table :candies do |t|
      t.string :name
      t.integer :calories
      t.string :wrapper_color
      t.boolean :has_nuts

      t.timestamps
    end
  end
end
