class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :description
      t.integer :error_id

      t.timestamps
    end
  end
end
