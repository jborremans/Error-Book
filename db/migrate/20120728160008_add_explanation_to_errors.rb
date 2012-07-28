class AddExplanationToErrors < ActiveRecord::Migration
  def change
    add_column :errors, :explanation, :text
  end
end
