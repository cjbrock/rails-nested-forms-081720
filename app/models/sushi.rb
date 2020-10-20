class Sushi < ApplicationRecord

    # validates :name, presence: true
    # validates :name, uniqueness: true

    validates :name, presence: true, uniqueness: true
    validate :starts_with_x

    # validates :name, :spiciness, :roll_count, presence: true, uniqueness: true


    private

    def starts_with_x
        if name[0].downcase == "x"
            errors.add(:x, "cannot be the first letter")
        end
    end


end
