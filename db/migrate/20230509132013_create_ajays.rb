class CreateAjays < ActiveRecord::Migration[7.0]
  def change
    create_table :ajays do |t|
      t.string :status

      t.timestamps
    end
  end
end
