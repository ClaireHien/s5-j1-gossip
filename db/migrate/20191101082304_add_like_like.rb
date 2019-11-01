class AddLikeLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :likelikes, :user, foreign_key: true
    add_reference :likelikes, :gossip, foreign_key: true
  end
end
