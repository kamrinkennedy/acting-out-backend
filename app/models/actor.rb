class Actor < ApplicationRecord
    validates :first_name, :last_name, presence: true
    has_one :bio_card
    has_one :contact_card
end
