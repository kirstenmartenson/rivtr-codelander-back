class AddToolsToVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :tools, :string
    add_column :videos, :materials, :string
    add_column :videos, :description, :text
    add_column :videos, :author, :string
    add_column :videos, :video_id, :integer
  end
end
