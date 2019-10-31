class User < ApplicationRecord
	has_many :gossips
	has_many :comments
	belongs_to :city
	has_secure_password

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
