class Gossip < ApplicationRecord
  belongs_to :user
  has_many :likelikes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :tag
  
  validates :title, presence: true, length: { in: 3..14 }
  validates :content, presence: true

  def wrong_gossip 
    if self.errors.any? 
      self.errors.full_messages.each do |message|
        puts message
        return message
      end
    end
  end

end
