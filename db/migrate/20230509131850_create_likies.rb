class CreateLikies < ActiveRecord::Migration[7.0]
  def change
    create_table :likies do |t|
      t.string :status
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
