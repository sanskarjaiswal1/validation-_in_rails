class CreateLikees < ActiveRecord::Migration[7.0]
  def change
    create_table :likees do |t|
      t.string :status
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
