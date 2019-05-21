class AddUserIdToTattoos < ActiveRecord::Migration[5.2]
  def change
    add_reference :tattoos, :user, :integer, foreign_key: true
  end
end
