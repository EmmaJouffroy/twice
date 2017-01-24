class AddPlaceToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :place, :string
  end
end
