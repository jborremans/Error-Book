class AddUrlToErrors < ActiveRecord::Migration
  def change
    add_column :errors, :url, :string
  end
end
