class Tag < ApplicationRecord
    has_many :gossips, dependent: :destroy
end
