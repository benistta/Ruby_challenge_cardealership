class Dealership
    attr_reader :name, :address, :inventory
    def initialize(name, address)
        @name = name
        @address = address
        @inventory = []
    end

    def inventory_count
        @inventory.count
    end

    def add_car(car)
        @inventory << car
        # require 'pry'; binding.pry
    end

    def has_inventory? 
        false
    end

    # def cars_by_make(make)
    #     result = []
    #     @inventory.each do |car|
    #         if car.make == make
    #          result << car
    #         end
            
    #     end
    #     return result
    # end

    def cars_by_make(make)
        @inventory.find_all do |car|
            car.make == make       
        end
    end

    def total_value
        @inventory.sum do |car|
            car.monthly_payment * car.loan_length
        # require 'pry'; binding.pry
        end  
    end

    def details
        {"address" => @address, "total_value" => total_value}
    end
end