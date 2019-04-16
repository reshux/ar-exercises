class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: {minimum: 3}
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
    validate :carries_apparel
    before_destroy :check_employees, prepend:true

    def carries_apparel
        if !mens_apparel && !womens_apparel
            errors.add(:mens_apparel, "is not carried.")
            errors.add(:womens_apparel, "is not carried either.")
        end
    end

    private

    def check_employees
        if employees.size > 0
            errors[:base] << "cannot be deleted."
            throw :abort
        end
    end
end
 