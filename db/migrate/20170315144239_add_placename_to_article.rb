class AddPlacenameToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :placename, :string
  end
end
