class AddTopicIdToErrors < ActiveRecord::Migration
  def change
    add_column :errors, :topic_id, :integer
  end
end
