class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, :address, :phone_number, :category, presence: true, allow_blank: false
    validates :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}
end


# A restaurant must have a name, an address and a category.
