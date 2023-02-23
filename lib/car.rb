class Car 
    attr_reader :make, :model, :monthly_payment, :loan_length, :color
    def initialize(brand, monthly_payment, loan_length)
        @make = brand.split.first
        @model = brand.split.last
        @monthly_payment = monthly_payment
        @loan_length = loan_length
        @color = nil
        # require 'pry'; binding.pry
    end

    def total_cost
        loan_length * monthly_payment
    end

    def paint!(car_color)
        @color = car_color
    end
end