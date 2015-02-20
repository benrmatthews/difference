class AddImageRemoteUrlToStories < ActiveRecord::Migration
  def change
    add_column :stories, :image_remote_url, :string
  end
end
