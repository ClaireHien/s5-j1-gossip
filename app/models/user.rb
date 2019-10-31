class User < ApplicationRecord
	has_many :gossips, dependent: :destroy
	has_many :comments, dependent: :destroy
	belongs_to :city
  has_secure_password
  has_many :likes, dependent: :destroy

  validates :alias, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }

  def wrong_user
    if self.errors.any? 
      self.errors.full_messages.each do |message|
        puts message
        return message
      end
    end
  end
  
end
