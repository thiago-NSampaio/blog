class AddSlugColumnToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :slug, :string, unique: true
  end
end
