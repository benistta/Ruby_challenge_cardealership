class Car 
    attr_reader :make, :model, :monthly_payment, :loan_length
    def initialize(brand, monthly_payment, loan_length)
        @make = brand.split.first
        @model = brand.split.last
        @monthly_payment = monthly_payment
        @loan_length = loan_length
        # require 'pry'; binding.pry
    end
end