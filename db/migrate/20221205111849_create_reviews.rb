class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :comment

      t.timestamps
    end
  end
end
