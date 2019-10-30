class AddTagToGossip < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossips, :tag, foreign_key: true
  end
end
