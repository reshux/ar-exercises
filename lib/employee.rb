class Employee < ActiveRecord::Base
    belongs_to :store
    validates :first_name, :last_name, presence: true
    validates :hourly_rate,
        numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
    validates :store_id, presence: true

    after_create :create_password
    private

    def create_password
        generator = ""
        8.times do 
            generator += [*'0'..'9', *'a'..'z', *'A'..'Z'].sample
        end
        self.password = generator
        self.save
      end
end
