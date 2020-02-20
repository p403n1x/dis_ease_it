class AddUserToDiseases < ActiveRecord::Migration[5.2]
  def change
    add_reference :diseases, :user, foreign_key: true
  end
end
