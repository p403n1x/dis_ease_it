class AddImageToDiseases < ActiveRecord::Migration[5.2]
  def change
    add_column :diseases, :image, :string
  end
end
