class CreateLikelikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likelikes do |t|

      t.timestamps
    end
  end
end
